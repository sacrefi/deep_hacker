-- deep_hackerjob by Nerea Cassian
ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

InUse = false
LevelData = {
    -- label = menu name, value = function name, exp = exp amount earned if succeed
    -- difficulty must be between 1 and 7 or the script will break
    [1] = { -- level
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }
    },
    [2] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }
    },
    [3] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }, {
            label = "Verificar numero Real de Policias",
            value = "ActivePolice",
            exp = 100,
            difficulty = 3
        },
        {
            label = "Queimar telemovel.",
            value = "BurnPhone",
            exp = 100,
            difficulty = 5
        }, {
            label = "Destruir motor do veiculo.",
            value = "EngineDetonate",
            exp = 100,
            difficulty = 5
        }
    },
    [4] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }, {
            label = "Verificar numero Real de Policias",
            value = "ActivePolice",
            exp = 100,
            difficulty = 3
        },
        {
            label = "Queimar telemovel.",
            value = "BurnPhone",
            exp = 100,
            difficulty = 5
        }, {
            label = "Destruir motor do veiculo.",
            value = "EngineDetonate",
            exp = 100,
            difficulty = 5
        }, {
            label = "Descobrir Localizaçao com um Numero de Telemovel",
            value = "Location",
            exp = 100,
            difficulty = 3
        }, {
            label = "Desativar travao de mao.",
            value = "DisableBrakes",
            exp = 100,
            difficulty = 5
        }
    },
    [5] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }, {
            label = "Verificar numero Real de Policias",
            value = "ActivePolice",
            exp = 100,
            difficulty = 3
        },
        {
            label = "Queimar telemovel.",
            value = "BurnPhone",
            exp = 100,
            difficulty = 5
        }, {
            label = "Destruir motor do veiculo.",
            value = "EngineDetonate",
            exp = 100,
            difficulty = 5
        }, {
            label = "Descobrir Localizaçao com um Numero de Telemovel",
            value = "Location",
            exp = 100,
            difficulty = 3
        }, {
            label = "Desativar travao de mao.",
            value = "DisableBrakes",
            exp = 100,
            difficulty = 5
        }, {
            label = "Retirar Pessoa da Radio a partir do Telemovel",
            value = "DropWalkie",
            exp = 100,
            difficulty = 4
        }, {
            label = "Roubar password de uma Conta do Twiter",
            value = "Twitter",
            exp = 100,
            difficulty = 3
        }
    },
    [6] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }, {
            label = "Verificar numero Real de Policias",
            value = "ActivePolice",
            exp = 100,
            difficulty = 3
        },
        {
            label = "Queimar telemovel.",
            value = "BurnPhone",
            exp = 100,
            difficulty = 5
        }, {
            label = "Destruir motor do veiculo.",
            value = "EngineDetonate",
            exp = 100,
            difficulty = 5
        }, {
            label = "Descobrir Localizaçao com um Numero de Telemovel",
            value = "Location",
            exp = 100,
            difficulty = 3
        }, {
            label = "Desativar travao de mao.",
            value = "DisableBrakes",
            exp = 100,
            difficulty = 5
        }, {
            label = "Retirar Pessoa da Radio a partir do Telemovel",
            value = "DropWalkie",
            exp = 100,
            difficulty = 4
        }, {
            label = "Roubar password de uma Conta do Twiter",
            value = "Twitter",
            exp = 100,
            difficulty = 3
        }, {
            label = "Roubar Dinheiro de um numero de Telemovel",
            value = "BankRob",
            exp = 100,
            difficulty = 4
        }, {
            label = "Fazer upgrade ao Motor",
            value = "VehUpgrade",
            exp = 100,
            difficulty = 3
        }
    },
    [7] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }, {
            label = "Verificar numero Real de Policias",
            value = "ActivePolice",
            exp = 100,
            difficulty = 3
        },
        {
            label = "Queimar telemovel.",
            value = "BurnPhone",
            exp = 100,
            difficulty = 5
        }, {
            label = "Destruir motor do veiculo.",
            value = "EngineDetonate",
            exp = 100,
            difficulty = 5
        }, {
            label = "Descobrir Localizaçao com um Numero de Telemovel",
            value = "Location",
            exp = 100,
            difficulty = 3
        }, {
            label = "Desativar travao de mao.",
            value = "DisableBrakes",
            exp = 100,
            difficulty = 5
        }, {
            label = "Retirar Pessoa da Radio a partir do Telemovel",
            value = "DropWalkie",
            exp = 100,
            difficulty = 4
        }, {
            label = "Roubar password de uma Conta do Twiter",
            value = "Twitter",
            exp = 100,
            difficulty = 3
        }, {
            label = "Roubar Dinheiro de um numero de Telemovel",
            value = "BankRob",
            exp = 100,
            difficulty = 4
        }, {
            label = "Fazer upgrade ao Motor",
            value = "VehUpgrade",
            exp = 100,
            difficulty = 3
        }, {
            label = "Ver Localizaçao dos Policias por 10 minutos",
            value = "Wallhack",
            exp = 100,
            difficulty = 5
        }, {
            label = "Entrar na Radio da Policia",
            value = "EnterWalkie",
            exp = 300,
            difficulty = 1
        }
    },
    [8] = {
        {
            label = "Hackear um Cartao de Credito Aleatorio",
            value = "RandomHack",
            exp = 100,
            difficulty = 2
        }, {
            label = "Verificar dados por um Numbero de Telemovel",
            value = "GetIdentity",
            exp = 100,
            difficulty = 1
        }, {
            label = "Estragar Motor da Viatura",
            value = "EngineBreak",
            exp = 100,
            difficulty = 1
        },
        {
            label = "Destrancar Viatura",
            value = "VehUnlock",
            exp = 100,
            difficulty = 2
        }, {
            label = "Obter numeros de telemovel.",
            value = "GetPhoneNumbersRadius",
            exp = 100,
            difficulty = 5
        }, {
            label = "Verificar numero Real de Policias",
            value = "ActivePolice",
            exp = 100,
            difficulty = 3
        },
        {
            label = "Queimar telemovel.",
            value = "BurnPhone",
            exp = 100,
            difficulty = 5
        }, {
            label = "Destruir motor do veiculo.",
            value = "EngineDetonate",
            exp = 100,
            difficulty = 5
        }, {
            label = "Descobrir Localizaçao com um Numero de Telemovel",
            value = "Location",
            exp = 100,
            difficulty = 3
        }, {
            label = "Desativar travao de mao.",
            value = "DisableBrakes",
            exp = 100,
            difficulty = 5
        }, {
            label = "Retirar Pessoa da Radio a partir do Telemovel",
            value = "DropWalkie",
            exp = 100,
            difficulty = 4
        }, {
            label = "Roubar password de uma Conta do Twiter",
            value = "Twitter",
            exp = 100,
            difficulty = 3
        }, {
            label = "Roubar Dinheiro de um numero de Telemovel",
            value = "BankRob",
            exp = 100,
            difficulty = 4
        }, {
            label = "Fazer upgrade ao Motor",
            value = "VehUpgrade",
            exp = 100,
            difficulty = 3
        }, {
            label = "Ver Localizaçao dos Policias por 10 minutos",
            value = "Wallhack",
            exp = 100,
            difficulty = 5
        }, {
            label = "Entrar na Radio da Policia",
            value = "EnterWalkie",
            exp = 300,
            difficulty = 1
        }, {
            label = "Desativar Radios num raio.",
            value = "DropWalkieRadius",
            exp = 100,
            difficulty = 5
        }
    }
}

local blips = {}
local doingit = false

Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do Citizen.Wait(100) end
    PlayerData = ESX.GetPlayerData()
    while PlayerData == nil do Citizen.Wait(100) end
    while PlayerData.job == nil do Citizen.Wait(100) end
    while true do
        if PlayerData.job.name == "hacker" then
            if IsControlJustReleased(0, 167) and not InUse then
                CheckLevel()
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        if doingit then
            DisableControl()
            Citizen.Wait(1)
        else
            Citizen.Wait(1000)
        end
    end
end)

function CheckLevel()
    InUse = true
    ESX.TriggerServerCallback("deep_hacker:getPlayerLevel", function(level, exp,
                                                                     todaysHacks)
        OpenHackMenu(level, exp, todaysHacks)
    end)
    InUse = false
end

function OpenHackMenu(level, exp, todaysHacks)
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "hackermenu", {
        title = "Hack Menu Level: " .. level .. " - Exp: " .. exp ..
            " - Remaining Hacks: " .. todaysHacks,
        align = "top-right",
        elements = LevelData[level]
    }, function(data, menu)
        local selection = data.current
        ESX.TriggerServerCallback("deep_hacker:checkItem",
                                  function(result) -- required item check
            if result == true then
                if selection ~= nil then
                    if todaysHacks > 0 then
                        ESX.UI.Menu.CloseAll()
                        _G[selection.value](level, selection.exp,
                                            selection.difficulty)
                    else
                        exports["mythic_notify"]:SendAlert("error",
                                                           "You cant hack anymore today",
                                                           5000)
                    end
                end
            else
                exports["mythic_notify"]:SendAlert("error",
                                                   "You need a device to start hacking!",
                                                   5000)
            end
        end)
    end, function(data, menu) menu.close() end)
end

function RandomHack(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 0)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the right codes!", 4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local reward = math.random(LevelConfig[level].minrnd,
                                       LevelConfig[level].maxrnd)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("success",
                                               "Success. You stole " .. reward ..
                                                   "$", 5000)
            TriggerServerEvent("deep_hacker:giveMoney", reward)
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function GetIdentity(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local number = F_02537("Enter phone number", "", 12)

            if tonumber(number) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            TriggerServerEvent("deep_hacker:phoneNumber", tonumber(number),
                               "kimlik")
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function Location(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local number = F_02537("Enter phone number", "", 12)

            if tonumber(number) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            TriggerServerEvent("deep_hacker:phoneNumber", tonumber(number),
                               "lokasyon")
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function DropWalkie(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local number = F_02537("Enter phone number", "", 12)

            if tonumber(number) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            TriggerServerEvent("deep_hacker:phoneNumber", tonumber(number),
                               "dropWalkie")
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            exports["mythic_notify"]:SendAlert("success",
                                               "Person dropped from thier radio channel.",
                                               5000)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function DropWalkieRadius(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()
    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local radius = F_02537("Enter a Radius", "", 2)

            if tonumber(radius) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            local players = GetActivePlayers()
            local _radius = tonumber(radius)
            local ply = GetPlayerPed(-1)
            local plyCoords = GetEntityCoords(ply, 0)
            for _, auxtarget in ipairs(GetActivePlayers()) do
                local ped = GetPlayerPed(player)
                local target_id = GetPlayerServerId(auxtarget)
                local target = GetPlayerPed(auxtarget)
                local targetCoords = GetEntityCoords(GetPlayerPed(auxtarget), 0)
                local distance = Vdist(targetCoords["x"], targetCoords["y"],
                                       targetCoords["z"], plyCoords["x"],
                                       plyCoords["y"], plyCoords["z"])
                if (distance < _radius) then
                    TriggerServerEvent("deep_hacker:dropWalkieRadius", target_id)
                    exports["mythic_notify"]:SendAlert("success", "Person " ..
                                                           target_id ..
                                                           " dropped from thier radio channel.",
                                                       5000)
                end
            end
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)

            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function GetPhoneNumbersRadius(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()
    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local radius = F_02537("Enter a Radius", "", 2)

            if tonumber(radius) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            local players = GetActivePlayers()
            local _radius = tonumber(radius)
            local ply = GetPlayerPed(-1)
            local plyCoords = GetEntityCoords(ply, 0)
            for _, auxtarget in ipairs(GetActivePlayers()) do
                local ped = GetPlayerPed(player)
                local target_id = GetPlayerServerId(auxtarget)
                local target = GetPlayerPed(auxtarget)
                local targetCoords = GetEntityCoords(GetPlayerPed(auxtarget), 0)
                local distance = Vdist(targetCoords["x"], targetCoords["y"],
                                       targetCoords["z"], plyCoords["x"],
                                       plyCoords["y"], plyCoords["z"])
                if (distance < _radius) then
                    TriggerServerEvent("deep_hacker:getPhoneNumber", target_id)
                end
            end
            exports["mythic_notify"]:SendAlert("success",
                                               "You got some numbers.", 5000)
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)

            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function BurnPhone(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local number = F_02537("Enter phone number", "", 12)

            if tonumber(number) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            TriggerServerEvent("deep_hacker:phoneNumber", tonumber(number),
                               "burnPhone")
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            exports["mythic_notify"]:SendAlert("success",
                                               "Person dropped from thier radio channel.",
                                               5000)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function EnterWalkie(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local number = F_02537("Locally [1, 2, 3]", "", 12)

            if tonumber(number) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            if tonumber(number) > 3 or tonumber(number) <= 0 then
                number = 1
            end
            exports["rp-radio"]:GivePlayerAccessToFrequency(tonumber(number))
            exports["mythic_notify"]:SendAlert("success",
                                               "You gained access to police radio channel " ..
                                                   tonumber(number), 5000)
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function BankRob(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local number = F_02537("Enter phone number", "", 12)

            if tonumber(number) == nil then
                exports["mythic_notify"]:SendAlert("error",
                                                   "Invalid format, you need to enter number.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            TriggerServerEvent("deep_hacker:phoneNumber", tonumber(number),
                               "bankaSoy")
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function Twitter(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            local username = F_02537("Enter Twitter username", "", 12)

            if tostring(username) == nil then
                exports["mythic_notify"]:SendAlert("error", "Invalid format.",
                                                   5000)
                doingit = false
                ClearPedTasks(ped)
                FreezeEntityPosition(ped, false)
                return
            end
            TriggerServerEvent("deep_hacker:twitter", tostring(username))
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function EngineBreak(level, exp, diff)
    local vehicle = ESX.Game.GetClosestVehicle()

    if vehicle ~= nil then
        if GetDistanceBetweenCoords(GetEntityCoords(vehicle),
                                    GetEntityCoords(PlayerPedId()), true) <= 4.0 then
            Mhack = nil
            doingit = true
            local ped = PlayerPedId()

            FreezeEntityPosition(ped, true)
            TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                        GetEntityCoords(ped),
                                        GetEntityHeading(ped), 0, 0, 1)
            Citizen.Wait(2000)
            exports["mythic_notify"]:SendAlert("success",
                                               "Find the correct codes!", 4500)
            TriggerEvent("mhacking:show")
            TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2],
                         PhoneHacking)
            Citizen.CreateThreadNow(function()
                while Mhack == nil do Citizen.Wait(100) end
                if Mhack == true then
                    SetVehicleEngineHealth(vehicle, 300.0)
                    TriggerServerEvent("deep_hacker:expUpdate", level, exp)
                    exports["mythic_notify"]:SendAlert("success",
                                                       "Vehicle engine disabled.",
                                                       5000)
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                else
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                    exports["mythic_notify"]:SendAlert("error", "You failed..",
                                                       5000)
                end
            end)
        else
            exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.",
                                               5000)
        end
    else
        exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.", 5000)
    end
end

function EngineDetonate(level, exp, diff)
    local vehicle = ESX.Game.GetClosestVehicle()

    if vehicle ~= nil then
        if GetDistanceBetweenCoords(GetEntityCoords(vehicle),
                                    GetEntityCoords(PlayerPedId()), true) <= 4.0 then
            Mhack = nil
            doingit = true
            local ped = PlayerPedId()

            FreezeEntityPosition(ped, true)
            TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                        GetEntityCoords(ped),
                                        GetEntityHeading(ped), 0, 0, 1)
            Citizen.Wait(2000)
            exports["mythic_notify"]:SendAlert("success",
                                               "Find the correct codes!", 4500)
            TriggerEvent("mhacking:show")
            TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2],
                         PhoneHacking)
            Citizen.Wait(100 * 10)
            Citizen.CreateThreadNow(function()
                while Mhack == nil do Citizen.Wait(100) end
                if Mhack == true then

                    SetVehicleEngineHealth(vehicle, -4000)
                    TriggerServerEvent("deep_hacker:expUpdate", level, exp)
                    exports["mythic_notify"]:SendAlert("success",
                                                       "Vehicle engine destroyed.",
                                                       5000)
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                else
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                    exports["mythic_notify"]:SendAlert("error", "You failed..",
                                                       5000)
                end
            end)
        else
            exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.",
                                               5000)
        end
    else
        exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.", 5000)
    end
end

function VehUnlock(level, exp, diff)
    local vehicle = ESX.Game.GetClosestVehicle()

    if vehicle ~= nil then
        if GetDistanceBetweenCoords(GetEntityCoords(vehicle),
                                    GetEntityCoords(PlayerPedId()), true) <= 4.0 then
            Mhack = nil
            doingit = true
            local ped = PlayerPedId()

            FreezeEntityPosition(ped, true)
            TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                        GetEntityCoords(ped),
                                        GetEntityHeading(ped), 0, 0, 1)
            Citizen.Wait(2000)
            exports["mythic_notify"]:SendAlert("success",
                                               "Find the correct codes!", 4500)
            TriggerEvent("mhacking:show")
            TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2],
                         PhoneHacking)
            Citizen.CreateThreadNow(function()
                while Mhack == nil do Citizen.Wait(100) end
                if Mhack == true then
                    SetVehicleDoorsLocked(vehicle, 0)
                    TriggerServerEvent("deep_hacker:expUpdate", level, exp)
                    exports["mythic_notify"]:SendAlert("success",
                                                       "Vehicle unlocked.", 5000)
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                else
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                    exports["mythic_notify"]:SendAlert("error", "You failed..",
                                                       5000)
                end
            end)
        else
            exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.",
                                               5000)
        end
    else
        exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.", 5000)
    end
end

function VehUpgrade(level, exp, diff)
    local vehicle = ESX.Game.GetClosestVehicle()

    if vehicle ~= nil then
        if GetDistanceBetweenCoords(GetEntityCoords(vehicle),
                                    GetEntityCoords(PlayerPedId()), true) <= 4.0 then
            Mhack = nil
            doingit = true
            local ped = PlayerPedId()

            FreezeEntityPosition(ped, true)
            TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                        GetEntityCoords(ped),
                                        GetEntityHeading(ped), 0, 0, 1)
            Citizen.Wait(2000)
            exports["mythic_notify"]:SendAlert("success",
                                               "Find the correct codes!", 4500)
            TriggerEvent("mhacking:show")
            TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2],
                         PhoneHacking)
            Citizen.CreateThreadNow(function()
                while Mhack == nil do Citizen.Wait(100) end
                if Mhack == true then
                    local old = GetVehicleHandlingFloat(vehicle,
                                                        "CHandlingData",
                                                        "fInitialDriveForce")
                    local number = F_02537("Enter upgrade value", "20", 3)
                    SetVehicleHandlingFloat(vehicle, "CHandlingData",
                                            "fInitialDriveForce", old + old *
                                                (tonumber(number) / 100))
                    TriggerServerEvent("deep_hacker:expUpdate", level, exp)
                    exports["mythic_notify"]:SendAlert("success",
                                                       "Vehicle software upgraded.",
                                                       5000)
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                else
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                    exports["mythic_notify"]:SendAlert("error", "You failed..",
                                                       5000)
                end
            end)
        else
            exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.",
                                               5000)
        end
    else
        exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.", 5000)
    end
end

function DisableBrakes(level, exp, diff)
    local vehicle = ESX.Game.GetClosestVehicle()

    if vehicle ~= nil then
        if GetDistanceBetweenCoords(GetEntityCoords(vehicle),
                                    GetEntityCoords(PlayerPedId()), true) <= 4.0 then
            Mhack = nil
            doingit = true
            local ped = PlayerPedId()

            FreezeEntityPosition(ped, true)
            TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                        GetEntityCoords(ped),
                                        GetEntityHeading(ped), 0, 0, 1)
            Citizen.Wait(2000)
            exports["mythic_notify"]:SendAlert("success",
                                               "Find the correct codes!", 4500)
            TriggerEvent("mhacking:show")
            TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2],
                         PhoneHacking)
            Citizen.CreateThreadNow(function()
                while Mhack == nil do Citizen.Wait(100) end
                if Mhack == true then
                    SetVehicleHandlingFloat(vehicle, "CHandlingData",
                                            "fBrakeForce", 0.01)
                    SetVehicleHandlingFloat(vehicle, "CHandlingData",
                                            "fHandBrakeForce", 0.01)
                    TriggerServerEvent("deep_hacker:expUpdate", level, exp)
                    exports["mythic_notify"]:SendAlert("success",
                                                       "Vehicle software upgraded.",
                                                       5000)
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                else
                    doingit = false
                    ClearPedTasks(ped)
                    FreezeEntityPosition(ped, false)
                    exports["mythic_notify"]:SendAlert("error", "You failed..",
                                                       5000)
                end
            end)
        else
            exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.",
                                               5000)
        end
    else
        exports["mythic_notify"]:SendAlert("error", "No vehicle nearby.", 5000)
    end
end

function ActivePolice(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            TriggerServerEvent("deep_hacker:policeCoords", 1)
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function Wallhack(level, exp, diff)
    Mhack = nil
    doingit = true
    local ped = PlayerPedId()

    FreezeEntityPosition(ped, true)
    TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_STAND_MOBILE",
                                GetEntityCoords(ped), GetEntityHeading(ped), 0,
                                0, 1)
    Citizen.Wait(2000)
    exports["mythic_notify"]:SendAlert("success", "Find the correct codes!",
                                       4500)
    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start", Diff[diff][1], Diff[diff][2], PhoneHacking)
    Citizen.CreateThreadNow(function()
        while Mhack == nil do Citizen.Wait(100) end
        if Mhack == true then
            TriggerServerEvent("deep_hacker:policeCoords", 2)
            TriggerServerEvent("deep_hacker:expUpdate", level, exp)
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
        else
            doingit = false
            ClearPedTasks(ped)
            FreezeEntityPosition(ped, false)
            exports["mythic_notify"]:SendAlert("error", "You failed..", 5000)
        end
    end)
end

function PhoneHacking(output, time)
    TriggerEvent("mhacking:hide")
    Mhack = output
    if output == false then
        if FailDecrease then TriggerServerEvent("deep_hacker:lostLife") end
        local rnd = math.random(0, 100)

        if rnd <= FailNotify then

            TriggerServerEvent("deep_hacker:sendPolice",
                               GetEntityCoords(PlayerPedId()))
            if InformPlayer then
                exports["mythic_notify"]:SendAlert("error", "Police informed.",
                                                   8000)
            end
        end
    elseif output == true then
        local rnd = math.random(0, 100)

        if rnd <= SuccessNotify then

            TriggerServerEvent("deep_hacker:sendPolice",
                               GetEntityCoords(PlayerPedId()))
            if InformPlayer then
                exports["mythic_notify"]:SendAlert("error", "Police informed.",
                                                   8000)
            end
        end
    end
end

function F_02537(arg1, arg2, arg3)
    AddTextEntry('FMMC_KEY_TIP1', arg1)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", arg2, "", "", "", arg3)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        return result
    else
        Citizen.Wait(500)
        return nil
    end
end

function DisableControl()
    DisableControlAction(0, 73, false)
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 257, true)
    DisableControlAction(0, 25, true)
    DisableControlAction(0, 263, true)
    DisableControlAction(0, 32, true)
    DisableControlAction(0, 34, true)
    DisableControlAction(0, 31, true)
    DisableControlAction(0, 30, true)
    DisableControlAction(0, 45, true)
    DisableControlAction(0, 22, true)
    DisableControlAction(0, 44, true)
    DisableControlAction(0, 37, true)
    DisableControlAction(0, 23, true)
    DisableControlAction(0, 288, true)
    DisableControlAction(0, 289, true)
    DisableControlAction(0, 170, true)
    DisableControlAction(0, 167, true)
    DisableControlAction(0, 73, true)
    DisableControlAction(2, 199, true)
    DisableControlAction(0, 47, true)
    DisableControlAction(0, 264, true)
    DisableControlAction(0, 257, true)
    DisableControlAction(0, 140, true)
    DisableControlAction(0, 141, true)
    DisableControlAction(0, 142, true)
    DisableControlAction(0, 143, true)
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job) PlayerData.job = job end)

RegisterNetEvent("deep_hacker:ensureJob")
AddEventHandler("deep_hacker:ensureJob", function(name, grade)
    PlayerData.job.name = name
    PlayerData.job.grade = grade
end)

RegisterNetEvent("deep_hacker:phoneNumber")
AddEventHandler("deep_hacker:phoneNumber", function(data)
    if data.method == "notify" then
        exports["mythic_notify"]:SendAlert("success", data.text, 10000)
    elseif data.method == "lokasyon" then
        exports["mythic_notify"]:SendAlert("success", data.text, 10000)
        if data.id ~= nil then
            local index = GetPlayerFromServerId(data.id)
            local target = GetPlayerPed(index)
            local blip = AddBlipForEntity(target)
            SetBlipSprite(blip, 433)
            SetBlipColour(blip, 1)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Target")
            EndTextCommandSetBlipName(blip)
            SetBlipAsShortRange(blip, false)
            Citizen.CreateThreadNow(function()
                Citizen.Wait(300000)
                RemoveBlip(blip)
            end)
        end
    elseif data.method == "dropWalkie" then
        local name = GetPlayerName(PlayerId())
        local playerId = PlayerId()
        -- exports["mumble-voip"]:removePlayerFromRadio()
        exports["rp-radio"]:HackedRadio()
    elseif data.method == "burnPhone" then
        local playerId = PlayerId()
        local playerPed = GetPlayerPed(playerId)
        ESX.Streaming.RequestAnimDict('weapon@w_pi_stungun', function()
            TaskPlayAnim(playerPed, 'weapon@w_pi_stungun', 'damage', 8.0, 8.0,
                         10000, 49, 0.0, false, false, false)
        end)
    end
end)

RegisterNetEvent("deep_hacker:policeCoords")
AddEventHandler("deep_hacker:policeCoords", function(cops, method)
    if method == 2 then
        for i = 1, #blips, 1 do RemoveBlip(blips[i]) end
        blips = {}
        for i = 1, #cops, 1 do
            local index = GetPlayerFromServerId(cops[i])
            local player = GetPlayerPed(index)
            local blip = AddBlipForEntity(player)
            SetBlipSprite(blip, 1)
            SetBlipColour(blip, 38)
            SetBlipScale(blip, 0.85)
            SetBlipRotation(blip, math.ceil(GetEntityHeading(player)))
            SetBlipFlashes(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Police")
            EndTextCommandSetBlipName(blip)
            SetBlipAsShortRange(blip, true)

            table.insert(blips, blip)
        end
        Citizen.CreateThreadNow(function()
            exports["mythic_notify"]:SendAlert("success",
                                               "Police locations are marked in the map for 10 minutes.",
                                               5000)
            Citizen.Wait(600000)
            for i = 1, #blips, 1 do RemoveBlip(blips[i]) end
            blips = {}
        end)
    elseif method == 1 then
        exports["mythic_notify"]:SendAlert("success",
                                           "Active police: " .. #cops, 8000)
    end
end)

RegisterNetEvent("deep_hacker:sendPolice")
AddEventHandler("deep_hacker:sendPolice", function(coords)
    local jobname = ESX.GetPlayerData().job.name

    if jobname == "police" then
        exports["mythic_notify"]:SendAlert("error", "Hacking system detected!",
                                           5000)
        local blip = AddBlipForCoord(coords)
        SetBlipSprite(blip, 161)
        SetBlipScale(blip, 2.0)
        SetBlipColour(blip, 1)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Hack İhbarı")
        EndTextCommandSetBlipName(blip)
        PulseBlip(blip)
        if SpamPolice then
            Citizen.CreateThreadNow(function()
                local count = 0
                repeat
                    Citizen.Wait(4500)
                    exports["mythic_notify"]:SendAlert("error",
                                                       "Hacking system detected!",
                                                       5000)
                    count = count + 1
                until count == 5
                RemoveBlip(blip)
            end)
        else
            Citizen.CreateThreadNow(function()
                Citizen.Wait(15000)
                RemoveBlip(blip)
            end)
        end
    end
end)
