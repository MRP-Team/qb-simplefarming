local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = ''
local createdBlips = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	local Player = QBCore.Functions.GetPlayerData()
	PlayerJob = Player.job
	Wait(500)
	loadBlips()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
	PlayerJob = JobInfo
	for k,v in pairs(createdBlips) do
		RemoveBlip(v)
	end
  createdBlips = {}
	Wait(500)
	loadBlips()
end)

function loadBlips()
  if not Config.Job or PlayerJob.name == Config.Job then
    -- seller blip
    local SFBLIP = AddBlipForCoord(Config.Seller.coords)
    SetBlipSprite (SFBLIP, Config.Seller.SetBlipSprite)
    SetBlipDisplay(SFBLIP, Config.Seller.SetBlipDisplay)
    SetBlipScale  (SFBLIP, Config.Seller.SetBlipScale)
    SetBlipAsShortRange(SFBLIP, true)
    SetBlipColour(SFBLIP, Config.Seller.SetBlipColour)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Seller.BlipLabel)
    EndTextCommandSetBlipName(SFBLIP)
    table.insert(createdBlips, SFBLIP)
    -- apple field
    for k, v in pairs(AppleField) do
      local AppleFieldBlip = AddBlipForCoord(AppleField[k].BlipCoord)
      SetBlipSprite(AppleFieldBlip, AppleField[k].Blip)
      SetBlipAsShortRange(AppleFieldBlip, true)
      SetBlipScale(AppleFieldBlip, 0.8)
      SetBlipColour(AppleFieldBlip, AppleField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(AppleField[k].label)
      EndTextCommandSetBlipName(AppleFieldBlip)
      table.insert(createdBlips, AppleFieldBlip)
    end
    -- lime field
    for k, v in pairs(LimeField) do
      local LimeFieldBlip = AddBlipForCoord(LimeField[k].BlipCoord)
      SetBlipSprite(LimeFieldBlip, LimeField[k].Blip)
      SetBlipAsShortRange(LimeFieldBlip, true)
      SetBlipScale(LimeFieldBlip, 0.8)
      SetBlipColour(LimeFieldBlip, LimeField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(LimeField[k].label)
      EndTextCommandSetBlipName(LimeFieldBlip)
      table.insert(createdBlips, LimeFieldBlip)
    end
    -- orange field
    for k, v in pairs(OrangeField) do
      local OrangeFieldBlip = AddBlipForCoord(OrangeField[k].BlipCoord)
      SetBlipSprite(OrangeFieldBlip, OrangeField[k].Blip)
      SetBlipAsShortRange(OrangeFieldBlip, true)
      SetBlipScale(OrangeFieldBlip, 0.8)
      SetBlipColour(OrangeFieldBlip, OrangeField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(OrangeField[k].label)
      EndTextCommandSetBlipName(OrangeFieldBlip)
      table.insert(createdBlips, OrangeFieldBlip)
    end
    -- Pomegranate Field
    for k, v in pairs(PomegranateField) do
      local PomegranateFieldBlip = AddBlipForCoord(PomegranateField[k].BlipCoord)
      SetBlipSprite(PomegranateFieldBlip, PomegranateField[k].Blip)
      SetBlipAsShortRange(PomegranateFieldBlip, true)
      SetBlipScale(PomegranateFieldBlip, 0.8)
      SetBlipColour(PomegranateFieldBlip, PomegranateField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PomegranateField[k].label)
      EndTextCommandSetBlipName(PomegranateFieldBlip)
      table.insert(createdBlips, PomegranateFieldBlip)
    end
    -- peach field
    for k, v in pairs(PeachField) do
      local PeachFieldBlip = AddBlipForCoord(PeachField[k].BlipCoord)
      SetBlipSprite(PeachFieldBlip, PeachField[k].Blip)
      SetBlipAsShortRange(PeachFieldBlip, true)
      SetBlipScale(PeachFieldBlip, 0.8)
      SetBlipColour(PeachFieldBlip, PeachField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PeachField[k].label)
      EndTextCommandSetBlipName(PeachFieldBlip)
      table.insert(createdBlips, PeachFieldBlip)
    end
    -- pumpkin field
    for k, v in pairs(PumpkinField) do
      local PumpkinFarmingBlip = AddBlipForCoord(PumpkinField[k].BlipCoord)
      SetBlipSprite(PumpkinFarmingBlip, PumpkinField[k].Blip)
      SetBlipAsShortRange(PumpkinFarmingBlip, true)
      SetBlipScale(PumpkinFarmingBlip, 0.8)
      SetBlipColour(PumpkinFarmingBlip, PumpkinField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PumpkinField[k].label)
      EndTextCommandSetBlipName(PumpkinFarmingBlip)
      table.insert(createdBlips, PumpkinFarmingBlip)
    end
    -- lettuce field
    for k, v in pairs(LettuceField) do
      local LettuceFarmingBlip = AddBlipForCoord(LettuceField[k].BlipCoord)
      SetBlipSprite(LettuceFarmingBlip, LettuceField[k].Blip)
      SetBlipAsShortRange(LettuceFarmingBlip, true)
      SetBlipScale(LettuceFarmingBlip, 0.8)
      SetBlipColour(LettuceFarmingBlip, LettuceField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(LettuceField[k].label)
      EndTextCommandSetBlipName(LettuceFarmingBlip)
      table.insert(createdBlips, LettuceFarmingBlip)
    end
    -- pineapple field
    for k, v in pairs(PineAppleField) do
      local PineAppleFarmingBlip = AddBlipForCoord(PineAppleField[k].BlipCoord)
      SetBlipSprite(PineAppleFarmingBlip, PineAppleField[k].Blip)
      SetBlipAsShortRange(PineAppleFarmingBlip, true)
      SetBlipScale(PineAppleFarmingBlip, 0.8)
      SetBlipColour(PineAppleFarmingBlip, PineAppleField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PineAppleField[k].label)
      EndTextCommandSetBlipName(PineAppleFarmingBlip)
      table.insert(createdBlips, PineAppleFarmingBlip)
    end
    -- corn field
    for k, v in pairs(CornFields) do
      local CornFieldBlips = AddBlipForCoord(CornFields[k].BlipCoord)
      SetBlipSprite(CornFieldBlips, CornFields[k].Blip)
      SetBlipAsShortRange(CornFieldBlips, true)
      SetBlipScale(CornFieldBlips, 0.8)
      SetBlipColour(CornFieldBlips, CornFields[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(CornFields[k].label)
      EndTextCommandSetBlipName(CornFieldBlips)
      table.insert(createdBlips, CornFieldBlips)
    end
    -- garden
    for k, v in pairs(Garden) do
      local GardenBlips = AddBlipForCoord(Garden[k].BlipCoord)
      SetBlipSprite(GardenBlips, Garden[k].Blip)
      SetBlipAsShortRange(GardenBlips, true)
      SetBlipScale(GardenBlips, 0.8)
      SetBlipColour(GardenBlips, Garden[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Garden[k].label)
      EndTextCommandSetBlipName(GardenBlips)
      table.insert(createdBlips, GardenBlips)
    end
    -- cow
    for k, CowFarm in pairs(Config.CowFarms) do
      local CowFarmBlips = AddBlipForCoord(CowFarm.Coord)
      SetBlipSprite(CowFarmBlips, CowFarm.Blip.Sprite)
      SetBlipAsShortRange(CowFarmBlips, true)
      SetBlipScale(CowFarmBlips, CowFarm.Blip.Scale)
      SetBlipColour(CowFarmBlips, CowFarm.Blip.Color)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(CowFarm.Blip.Label)
      EndTextCommandSetBlipName(CowFarmBlips)
      table.insert(createdBlips, CowFarmBlips)
    end
    -- chicken
    for k, ChickenFarm in pairs(Config.ChickenFarms) do
      local ChickenFarmBlips = AddBlipForCoord(ChickenFarm.Coord)
      SetBlipSprite(ChickenFarmBlips, ChickenFarm.Blip.Sprite)
      SetBlipAsShortRange(ChickenFarmBlips, true)
      SetBlipScale(ChickenFarmBlips, ChickenFarm.Blip.Scale)
      SetBlipColour(ChickenFarmBlips, ChickenFarm.Blip.Color)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(ChickenFarm.Blip.Label)
      EndTextCommandSetBlipName(ChickenFarmBlips)
      table.insert(createdBlips, ChickenFarmBlips)
    end
	end
end
