ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

Hackers = {}


deep = {
    kimlik = function(player, source)
        if player ~= nil then
            local account = player.getAccount('bank')
            local dat = MySQL.Sync.fetchAll(
                            "SELECT firstname, lastname FROM users WHERE identifier = @identifier",
                            {["@identifier"] = player.identifier})
            return {
                text = "Fullname: " .. dat[1].firstname .. " " ..
                    dat[1].lastname .. " \nJob: " .. player.job.label ..
                    " \nGrade: " .. tostring(player.job.grade_label) ..
                    " \nBank: " .. tostring(account.money) .. "€",
                method = "notify",
                source = source
            }
        elseif player == nil then
            return {
                text = "Person not in city.",
                source = source,
                method = "notify"
            }
        end
    end,
    lokasyon = function(player, source)
        if player ~= nil then
            return {
                id = player.source,
                text = "Persons locations marked in the map for 5 minutes.",
                method = "lokasyon",
                source = source
            }
        elseif player == nil then
            return {
                text = "Person not in city.",
                source = source,
                method = "notify"
            }
        end
    end,
    dropWalkie = function(player, source)
        return {method = "dropWalkie", source = player.source}
    end,
    bankaSoy = function(player, source)
        if player ~= nil then
            local dat = MySQL.Sync.fetchAll(
                            "SELECT firstname, lastname FROM users WHERE identifier = @identifier",
                            {["@identifier"] = player.identifier})
            local xPlayer = ESX.GetPlayerFromId(source)
            local playermoney = player.getAccount("bank").money
            local reward = math.random(BankReward.min, BankReward.max)
            local notf
            if playermoney < BankReward.min then
                notf = playermoney
                player.removeAccountMoney("bank", playermoney)
                xPlayer.addAccountMoney("bank", playermoney)
            else
                if playermoney < reward then
                    notf = BankReward.min
                    player.removeAccountMoney("bank", BankReward.min)
                    xPlayer.addAccountMoney("bank", BankReward.min)
                else
                    notf = reward
                    player.removeAccountMoney("bank", reward)
                    xPlayer.addAccountMoney("bank", reward)
                end
            end
            return {
                text = "You stole " .. notf .. "$ from " .. dat[1].firstname ..
                    " " .. dat[1].lastname .. "'s bank account.",
                method = "notify"
            }
        else
            return {text = "Person not in city.", method = "notify"}
        end
    end,
    burnPhone = function(player, source)
        player.removeInventoryItem("phone", 1)
        return {method = "burnPhone", source = player.source}
    end
}

MySQL.ready(function() -- gather todays hack left on server restart
    local result = MySQL.Sync.fetchAll("SELECT identifier, job FROM users")

    for i = 1, #result, 1 do
        if result[i].job == "hacker" then
            table.insert(Hackers, {
                identifier = result[i].identifier,
                todaysHacks = Dailyhack
            })
            CheckUser(result[i].identifier)
        end
    end
end)

function CheckUser(identifier)
    local result = MySQL.Sync.fetchAll("SELECT identifier FROM hackerlevels")
    local found = false

    for i = 1, #result, 1 do
        if result[i].identifier == identifier then found = true end
    end
    if not found then
        MySQL.Async.execute(
            "INSERT INTO hackerlevels (identifier, level, exp) VALUES (@identifier, @level, @exp)",
            {["@identifier"] = identifier, ["@level"] = 1, ["@exp"] = 0})
    end
end

ESX.RegisterServerCallback("deep_hacker:getPlayerLevel", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local todaysHacks = nil
    local result = MySQL.Sync.fetchAll(
                       "SELECT * FROM hackerlevels WHERE identifier = @identifier",
                       {["@identifier"] = xPlayer.identifier})
    for i = 1, #Hackers, 1 do
        if Hackers[i].identifier == xPlayer.identifier then
            todaysHacks = Hackers[i].todaysHacks
            break
        end
    end

    if result ~= nil and result[1] ~= nil then
        if todaysHacks ~= nil then
            -- print('Player: '..result[1].identifier..'\nLevel: '..result[1].level..'\nExp: '..result[1].exp)
            cb(result[1].level, result[1].exp, todaysHacks)
        else
            table.insert(Hackers, {
                indentifier = xPlayer.identifier,
                todaysHacks = Dailyhack
            })
            cb(result[1].level, result[1].exp, 3)
        end
    else
        MySQL.Async.execute(
            "INSERT INTO hackerlevels (identifier, level, exp) VALUES (@identifier, @level, @exp)",
            {["@identifier"] = xPlayer.identifier, ["@level"] = 1, ["@exp"] = 0})
        table.insert(Hackers, {
            indentifier = xPlayer.identifier,
            todaysHacks = Dailyhack
        })
        cb(result[1].level, result[1].exp, 3)
    end
end)

ESX.RegisterServerCallback("deep_hacker:checkItem", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem("phone") -- don't forget to change item name!!!

    if item.count >= 1 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("deep_hacker:expUpdate")
AddEventHandler("deep_hacker:expUpdate", function(level, exp)
    local xPlayer = ESX.GetPlayerFromId(source)
    local data = MySQL.Sync.fetchAll(
                     "SELECT level, exp FROM hackerlevels WHERE identifier = @identifier",
                     {["@identifier"] = xPlayer.identifier})
    for i = 1, #Hackers, 1 do
        if Hackers[i].identifier == xPlayer.identifier then
            Hackers[i].todaysHacks = Hackers[i].todaysHacks - 1
            break
        end
    end
    if level < 8 then -- eğer level 8 altıysa kontrol
        if (data[1].exp + exp) >= LevelConfig[level].total then
            MySQL.Async.execute(
                "UPDATE hackerlevels SET level = @level, exp = @exp WHERE identifier = @identifier",
                {
                    ["@identifier"] = xPlayer.identifier,
                    ["@level"] = level + 1,
                    ["@exp"] = ((data[1].exp + exp) - LevelConfig[level].total)
                })
            xPlayer.setJob("hacker", level + 1)
            TriggerClientEvent("deep_hacker:ensureJob", xPlayer.source,
                               "hacker", level + 1)
            TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source,
                               {
                type = "success",
                text = "Level up! " .. (level + 1),
                lenght = 6000
            })
        else
            MySQL.Async.execute(
                "UPDATE hackerlevels SET exp = @exp WHERE identifier = @identifier",
                {
                    ["@identifier"] = xPlayer.identifier,
                    ["@exp"] = data[1].exp + exp
                })
        end
    else
        MySQL.Async.execute(
            "UPDATE hackerlevels SET exp = @exp WHERE identifier = @identifier",
            {["@identifier"] = xPlayer.identifier, ["@exp"] = data[1].exp + exp})
    end
end)

RegisterServerEvent("deep_hacker:lostLife")
AddEventHandler("deep_hacker:lostLife", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    for i = 1, #Hackers, 1 do
        if Hackers[i].identifier == xPlayer.identifier then
            Hackers[i].todaysHacks = Hackers[i].todaysHacks - 1
        end
    end
end)

RegisterServerEvent("deep_hacker:giveMoney")
AddEventHandler("deep_hacker:giveMoney", function(reward)
    local xPlayer = ESX.GetPlayerFromId(source)

    if RewardType == "black_money" or RewardType == "bank" then
        xPlayer.addAccountMoney(RewardType, reward)
    else
        xPlayer.addMoney(reward)
    end
end)

RegisterServerEvent("deep_hacker:phoneNumber")
AddEventHandler("deep_hacker:phoneNumber", function(number, func)
    local _source = source
    local result = MySQL.Sync.fetchAll(
                       "SELECT identifier FROM users WHERE phone_number = @number",
                       {["@number"] = number})

    if result ~= nil then
        local target = ESX.GetPlayerFromIdentifier(result[1].identifier)
        local callback = deep[func](target, _source)

        TriggerClientEvent("deep_hacker:phoneNumber", callback.source, callback)
    end
end)

RegisterServerEvent("deep_hacker:twitter")
AddEventHandler("deep_hacker:twitter", function(username)
    local _source = source
    local result = MySQL.Sync.fetchAll(
                       "SELECT password FROM twitter_accounts WHERE username = @username",
                       {["@username"] = username})

    if result ~= nil then
        if result[1] ~= nil then
            TriggerClientEvent("mythic_notify:client:SendAlert", _source, {
                type = "success",
                text = "Username: " .. username .. " - Password: " ..
                    result[1].password,
                lenght = 10000
            })
        end
    end
end)

RegisterServerEvent("deep_hacker:policeCoords")
AddEventHandler("deep_hacker:policeCoords", function(method)
    local _source = source
    local cops = {}
    local players = ESX.GetPlayers()

    for i = 1, #players, 1 do
        local temp = ESX.GetPlayerFromId(players[i])

        if temp.job.name == "police" then table.insert(cops, temp.source) end
    end
    TriggerClientEvent("deep_hacker:policeCoords", _source, cops, method)
end)

RegisterServerEvent("deep_hacker:sendPolice")
AddEventHandler("deep_hacker:sendPolice", function(coords)
    TriggerClientEvent("deep_hacker:sendPolice", -1, coords)
end)

RegisterServerEvent("deep_hacker:dropWalkieRadius")
AddEventHandler("deep_hacker:dropWalkieRadius", function(target)
    local _target = ESX.GetPlayerFromId(target)
    local _source = source
    local ply = GetPlayerPed(-1)
    local callback = deep.dropWalkie(_target, ply)
    TriggerClientEvent("deep_hacker:phoneNumber", callback.source, callback)
end)

RegisterServerEvent("deep_hacker:getPhoneNumber")
AddEventHandler("deep_hacker:getPhoneNumber", function(target)
    local _source = source
    local _target = ESX.GetPlayerFromId(target)
    local result = MySQL.Sync.fetchAll(
                       "SELECT firstname, lastname, phone_number FROM users WHERE identifier = @identifier",
                       {["@identifier"] = _target.identifier})
    if result ~= nil then
        if result[1] ~= nil then
            TriggerClientEvent("mythic_notify:client:SendAlert", _source, {
                type = "success",
                text = "Name: " .. result[1].firstname .. " " ..
                    result[1].lastname .. " Phone: " .. result[1].phone_number,
                lenght = 10000
            })
        end
    end
end)
