local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-simplefarming:sellItems', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if Config.Sell[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (Config.Sell[Player.PlayerData.items[k].name].price * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[k].name], "remove")
                end
            end
        end
        Player.Functions.AddMoney("cash", price)
        TriggerClientEvent('QBCore:Notify', src, "You have sold your items")
    else
		TriggerClientEvent('QBCore:Notify', src, "You do not have the items to sell here!")
	end
end)

------------------------------- Apple Farm ----------------------------

RegisterServerEvent('qb-simplefarming:applepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(1,3)
    Player.Functions.AddItem('apple', amount, false)
    TriggerClientEvent('QBCore:Notify', source, Config.Alerts['apple_pickingfront'] ..amount.. Config.Alerts['apple_pickingend'])
end)

------------------------------- Lime Farm ----------------------------

RegisterServerEvent('qb-simplefarming:limepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(1,3)
    Player.Functions.AddItem('lime', amount, false, info)
    TriggerClientEvent('QBCore:Notify', source, Config.Alerts['lime_pickingfront'] ..amount.. Config.Alerts['lime_pickingend'])
end)

------------------------------- Orange Farm ----------------------------

RegisterServerEvent('qb-simplefarming:orangepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(1,3)
    Player.Functions.AddItem('orange', amount, false, info)
    TriggerClientEvent('QBCore:Notify', source, Config.Alerts['orange_pickingfront'] ..amount.. Config.Alerts['orange_pickingend'])
end)

------------------------------- Pomegranate Farm ----------------------------

RegisterServerEvent('qb-simplefarming:pomegranatepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(1,3)
    Player.Functions.AddItem('pomegranate', amount, false, info)
    TriggerClientEvent('QBCore:Notify', source, Config.Alerts['pomegranate_pickingfront'] ..amount.. Config.Alerts['pomegranate_pickingend'])
end)

------------------------------- Peach Farm ----------------------------

RegisterServerEvent('qb-simplefarming:peachpicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(1,3)
    Player.Functions.AddItem('peach', amount, false, info)
    TriggerClientEvent('QBCore:Notify', source, Config.Alerts['peach_pickingfront'] ..amount.. Config.Alerts['peach_pickingend'])
end)

------------------------------- Cow Farming Stuff ----------------------------

QBCore.Functions.CreateCallback('qb-simplefarming:emptybucket', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player ~= nil then
        if Player.Functions.GetItemByName("emptybucket") ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterServerEvent('qb-simplefarming:cowmilking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local cow_milkbucket = 1
    Player.Functions.RemoveItem('emptybucket', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['milkbucket'], "remove")
    Wait(1000)
    Player.Functions.AddItem('milkbucket', cow_milkbucket)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['milkbucket'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Gathered  " ..cow_milkbucket.. " buckets of milk.")
end)

------------------------------- Pumpkin Farming ----------------------------

RegisterServerEvent('qb-simplefarming:pumpkinpicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local pumpkinfarming = 1
    Player.Functions.AddItem('rawpumpkin', pumpkinfarming)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rawpumpkin'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Picked up " ..pumpkinfarming.. " Pumpkin")
end)

------------------------------- Lettuce Farming ----------------------------

RegisterServerEvent('qb-simplefarming:lettucepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local lettucefarming = 1
    Player.Functions.AddItem('lettuce', lettucefarming)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lettuce'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Picked up " ..lettucefarming.. " Lettuce")
end)

------------------------------- Pineapple Farming ----------------------------

RegisterServerEvent('qb-simplefarming:pineapplepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local pineapplefarming = 1
    Player.Functions.AddItem('pineapple', pineapplefarming)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pineapple'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Picked up " ..pineapplefarming.. " Pinapple")
end)

------------------------------- Corn Farming ----------------------------

RegisterServerEvent('qb-simplefarming:cornpicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local cornfarming = math.random(1,3)
    Player.Functions.AddItem('corncob', cornfarming)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['corncob'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..cornfarming.. " Corn Cobs")
end)

------------------------------- Garden ----------------------------

RegisterServerEvent('qb-simplefarming:grapepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local grapepicking = math.random(1,2)
    Player.Functions.AddItem('grapes', grapepicking)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapes'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..grapepicking.. " Grapes")
end)

-- Mint

RegisterServerEvent('qb-simplefarming:mintpicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local mintpicking = math.random(1,3)
    Player.Functions.AddItem('mint', mintpicking)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['mint'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..mintpicking.. " Mints")
end)

-- Coffee

RegisterServerEvent('qb-simplefarming:coffeepicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local coffeepicking = math.random(1,3)
    Player.Functions.AddItem('coffeebeans', coffeepicking)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['coffeebeans'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..coffeepicking.. " Coffee Beans")
end)

-- Potato

RegisterServerEvent('qb-simplefarming:potatopicking', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local potatopicking = math.random(1,3)
    Player.Functions.AddItem('potato', potatopicking)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['potato'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..potatopicking.. " Potatoes")
end)

-- Tomatoes

RegisterServerEvent('qb-simplefarming:tomatoespicking', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local tompicking = math.random(1,3)
    Player.Functions.AddItem('tomato', tompicking)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['tomato'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..tompicking.. " Red Tomatoes")
end)

-- Chicken

QBCore.Functions.CreateCallback('qb-simplefarming:soybeancheck', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player ~= nil then
        if Player.Functions.GetItemByName("soybeans") ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterServerEvent('qb-simplefarming:feedingchickenlit', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local soybean = Player.Functions.GetItemByName('soybeans')
    if not soybean then
        TriggerClientEvent('QBCore:Notify', source, Config.Alerts['error_soybean'])
        return false
    end

    local amount = soybean.amount
    if amount >= 1 then
        amount = 1
    else
      return false
    end

    if not Player.Functions.RemoveItem('soybeans', amount) then
        TriggerClientEvent('QBCore:Notify', source, Config.Alerts['error.soybean'])
        return false
    end
    local eggs = math.random(1, 4)
    Player.Functions.AddItem('eggs', eggs)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['soybeans'], "remove")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['eggs'], "add")
end)

-- Consumable

CreateThread(function()
    for k, v in pairs(Config.Consumable) do
        exports['qb-smallresources']:AddCustom(k, v)
    end
end)
