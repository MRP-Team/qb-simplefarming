local QBCore = exports['qb-core']:GetCoreObject()
local SellerPed = Config.Seller.Coords
local PedModel = Config.Seller.PedModel
local time = 1000

-- Animals
CreateThread(function()
  RequestModel( GetHashKey( "a_c_cow" ) )
  while ( not HasModelLoaded( GetHashKey( "a_c_cow" ) ) ) do
      Wait(1)
  end
  RequestModel(PedModel)
  while ( not HasModelLoaded(PedModel) ) do
      Wait(1)
  end

  for k, ChickenFarm in pairs(Config.ChickenFarms) do
    for chickenPedName, chickenPedOptions in pairs(ChickenFarm.Peds) do
      TriggerEvent('qb-simplefarming:spawnchicken', chickenPedOptions.Coords)
    end
  end
  for k, CowFarm in pairs(Config.CowFarms) do
    for CowPedName, CowPedOptions in pairs(CowFarm.Peds) do
      TriggerEvent('qb-simplefarming:spawncow', CowPedOptions.Coords)
    end
  end
  farmerped = CreatePed(1, PedModel, SellerPed, false, true)
  SetEntityInvincible(farmerped, true)
  SetBlockingOfNonTemporaryEvents(farmerped, true)
  FreezeEntityPosition(farmerped, true)
end)

function loadModel(model) if not HasModelLoaded(model) then
	if Config.Debug then print("^5Debug^7: ^2Loading Model^7: '^6"..model.."^7'") end
	while not HasModelLoaded(model) do
		if time > 0 then time = time - 1 RequestModel(model)
		else time = 1000 print("^5Debug^7: ^3LoadModel^7: ^2Timed out loading model ^7'^6"..model.."^7'") break
		end
		Wait(10)
	end
end end

function makePed(model, coords, freeze)
	loadModel(model)
	local ped = CreatePed(0, model, coords.x, coords.y, coords.z-1.03, 0.0, false, false)
	SetEntityInvincible(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, freeze or true)
	if Config.Debug then print("^5Debug^7: ^6Ped ^2Created for location^7: '^6"..model.."^7'") end
    return ped
end
