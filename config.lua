RewardType = "bank" -- earning type from random hack ["black_money", "cash", "bank"]
Dailyhack = 100 -- max hack in one day
SuccessNotify = 30 -- police notify chance if the hack success (percent)
FailNotify = 90 -- police notify chance if the hack fails (percent)
SpamPolice = false -- spam notify if police gets notify ?
InformPlayer = true -- inform player if the police notified
FailDecrease = true -- remove one hack life if the hack fails ?  (hack life always spent on successful hacks)
BankReward = {
    max = 2500, -- max amount can be stolen from another player's bank account
    min = 2000 -- min amount (if player has money lower than the min amount then what's in the bank will be stolen)
}
LevelConfig = {
    [1] = {
        total = 1000, -- the amount of exp to reach next level
        maxrnd = 800, -- max amount can be stolen with random hack
        minrnd = 700 -- min amount can be stolen with random hack
    },
    [2] = {total = 2500, maxrnd = 900, minrnd = 800},
    [3] = {total = 4000, maxrnd = 1000, minrnd = 900},
    [4] = {total = 6000, maxrnd = 1100, minrnd = 1000},
    [5] = {total = 8000, maxrnd = 1200, minrnd = 1100},
    [6] = {total = 12000, maxrnd = 1300, minrnd = 1200},
    [7] = {total = 15000, maxrnd = 1400, minrnd = 1300},
    [8] = {
        total = 20000, -- no more level up here, but players still can track their gained exp
        maxrnd = 1500,
        minrnd = 1400
    }
}

Diff = { -- stuff about difficulty
    [1] = {[1] = 5, [2] = 50},
    [2] = {[1] = 5, [2] = 50},
    [3] = {[1] = 4, [2] = 50},
    [4] = {[1] = 4, [2] = 50},
    [5] = {[1] = 3, [2] = 50},
    [6] = {[1] = 3, [2] = 50},
    [7] = {[1] = 2, [2] = 90},
    [8] = {[1] = 2, [2] = 90}
}
