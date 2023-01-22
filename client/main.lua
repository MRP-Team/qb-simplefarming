local QBCore = exports['qb-core']:GetCoreObject()
local inZone = false

----------------------------------- Apple Stuff -----------------------------------
CreateThread(function()
  for k, v in pairs(AppleField) do
    local AppleFieldBlip = AddBlipForCoord(AppleField[k].BlipCoord)
      SetBlipSprite(AppleFieldBlip, AppleField[k].Blip)
      SetBlipAsShortRange(AppleFieldBlip, true)
      SetBlipScale(AppleFieldBlip, 0.8)
      SetBlipColour(AppleFieldBlip, AppleField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(AppleField[k].label)
      EndTextCommandSetBlipName(AppleFieldBlip)

    local ApplePicking = PolyZone:Create(AppleField[k].zones, {
      name = AppleField[k].label,
      minZ = AppleField[k].minz,
      maxZ = AppleField[k].maxz,
      debugPoly = false
    })

    ApplePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('AppleTrees')
      else
        for k, v in pairs(AppleTrees) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('AppleTrees', function()
  for k, v in pairs(AppleTrees) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), 1, 1, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:appletree",
          icon = "fas fa-apple-whole",
          label = "Pick Apples",
          job = "farmer",
        },
      },
    distance = v.distance,
  })
  end
end)

RegisterNetEvent('qb-simplefarming:appletree', function()
  QBCore.Functions.Progressbar('apple_pickingapples', Config.Alerts['apple_pickingbar'], 7500, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    }, {
    animDict = 'missmechanic',
    anim = 'work_base',
    flags = 16,
    }, {}, {}, function()
        TriggerServerEvent('qb-simplefarming:applepicking')
    end, function()
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

----------------------------------- Lime Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(LimeField) do
    local LimeFieldBlip = AddBlipForCoord(LimeField[k].BlipCoord)
      SetBlipSprite(LimeFieldBlip, LimeField[k].Blip)
      SetBlipAsShortRange(LimeFieldBlip, true)
      SetBlipScale(LimeFieldBlip, 0.8)
      SetBlipColour(LimeFieldBlip, LimeField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(LimeField[k].label)
      EndTextCommandSetBlipName(LimeFieldBlip)

    local LimePicking = PolyZone:Create(LimeField[k].zones, {
      name = LimeField[k].label,
      minZ = LimeField[k].minz,
      maxZ = LimeField[k].maxz,
      debugPoly = false
    })

    LimePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('LimeTrees')
      else
        for k, v in pairs(LimeTrees) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:limetree', function()
  QBCore.Functions.Progressbar('apple_pickinglimes', Config.Alerts['lime_pickingbar'], 7500, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    }, {
    animDict = 'missmechanic',
    anim = 'work_base',
    flags = 16,
    }, {}, {}, function()
        TriggerServerEvent('qb-simplefarming:limepicking')
    end, function()
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('LimeTrees', function()
  for k, v in pairs(LimeTrees) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), 1, 1, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:limetree",
          icon = "fas fa-lemon",
          label = "Pick Limes",
          job = "farmer",
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Orange Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(OrangeField) do
    local OrangeFieldBlip = AddBlipForCoord(OrangeField[k].BlipCoord)
      SetBlipSprite(OrangeFieldBlip, OrangeField[k].Blip)
      SetBlipAsShortRange(OrangeFieldBlip, true)
      SetBlipScale(OrangeFieldBlip, 0.8)
      SetBlipColour(OrangeFieldBlip, OrangeField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(OrangeField[k].label)
      EndTextCommandSetBlipName(OrangeFieldBlip)

    local OrangePicking = PolyZone:Create(OrangeField[k].zones, {
      name = OrangeField[k].label,
      minZ = OrangeField[k].minz,
      maxZ = OrangeField[k].maxz,
      debugPoly = false
    })

    OrangePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('OrangeTrees')
      else
        for k, v in pairs(OrangeTrees) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:orangetree', function()
  QBCore.Functions.Progressbar('orange_pickinglimes', Config.Alerts['orange_pickingbar'], 7500, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    }, {
    animDict = 'missmechanic',
    anim = 'work_base',
    flags = 16,
    }, {}, {}, function()
        TriggerServerEvent('qb-simplefarming:orangepicking')
    end, function()
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('OrangeTrees', function()
  for k, v in pairs(OrangeTrees) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), 1, 1, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:orangetree",
          icon = "fas fa-apple-whole",
          label = "Pick Oranges",
          job = "farmer",
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Pomegranate Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(PomegranateField) do
    local PomegranateFieldBlip = AddBlipForCoord(PomegranateField[k].BlipCoord)
      SetBlipSprite(PomegranateFieldBlip, PomegranateField[k].Blip)
      SetBlipAsShortRange(PomegranateFieldBlip, true)
      SetBlipScale(PomegranateFieldBlip, 0.8)
      SetBlipColour(PomegranateFieldBlip, PomegranateField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PomegranateField[k].label)
      EndTextCommandSetBlipName(PomegranateFieldBlip)

    local PomegranatePicking = PolyZone:Create(PomegranateField[k].zones, {
      name = PomegranateField[k].label,
      minZ = PomegranateField[k].minz,
      maxZ = PomegranateField[k].maxz,
      debugPoly = false
    })

    PomegranatePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('PomegranateTrees')
      else
        for k, v in pairs(PomegranateTrees) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:pomegranatetree', function()
  QBCore.Functions.Progressbar('pomegranate_pickinglimes', Config.Alerts['pomegranate_pickingbar'], 7500, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    }, {
    animDict = 'missmechanic',
    anim = 'work_base',
    flags = 16,
    }, {}, {}, function()
        TriggerServerEvent('qb-simplefarming:pomegranatepicking')
    end, function()
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('PomegranateTrees', function()
  for k, v in pairs(PomegranateTrees) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), 1, 1, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:pomegranatetree",
          icon = "fas fa-apple-whole",
          label = "Pick Pomegranates",
          job = "farmer",
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Peach Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(PeachField) do
    local PeachFieldBlip = AddBlipForCoord(PeachField[k].BlipCoord)
      SetBlipSprite(PeachFieldBlip, PeachField[k].Blip)
      SetBlipAsShortRange(PeachFieldBlip, true)
      SetBlipScale(PeachFieldBlip, 0.8)
      SetBlipColour(PeachFieldBlip, PeachField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PeachField[k].label)
      EndTextCommandSetBlipName(PeachFieldBlip)

    local PeachPicking = PolyZone:Create(PeachField[k].zones, {
      name = PeachField[k].label,
      minZ = PeachField[k].minz,
      maxZ = PeachField[k].maxz,
      debugPoly = false
    })

    PeachPicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('PeachTrees')
      else
        for k, v in pairs(PeachTrees) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:peachtree', function()
  QBCore.Functions.Progressbar('peach_pickinglimes', Config.Alerts['peach_pickingbar'], 7500, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    }, {
    animDict = 'missmechanic',
    anim = 'work_base',
    flags = 16,
    }, {}, {}, function()
        TriggerServerEvent('qb-simplefarming:peachpicking')
    end, function()
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('PeachTrees', function()
  for k, v in pairs(PeachTrees) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), 1, 1, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:peachtree",
          icon = "fas fa-apple-whole",
          label = "Pick Peachs",
          job = "farmer",
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Cow Farming Stuff -----------------------------------

-- Animals
CreateThread(function()
  for k, v in pairs(Barns) do
    local BarnBlip = AddBlipForCoord(Barns[k].BlipCoord)
    SetBlipSprite(BarnBlip, Barns[k].Blip)
    SetBlipAsShortRange(BarnBlip, true)
    SetBlipScale(BarnBlip, 0.8)
    SetBlipColour(BarnBlip, Barns[k].BlipColor)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Barns[k].label)
    EndTextCommandSetBlipName(BarnBlip)

    local BarnFarming = PolyZone:Create(Barns[k].zones, {
        name = Barns[k].label,
        minZ = Barns[k].minz,
        maxZ = Barns[k].maxz,
        debugPoly = false
    })

    BarnFarming:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('AnimalFarming')
      else
        for k, v in pairs(CowFarming) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:milkcow', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:emptybucket', function(emptybucket)
    if emptybucket then
      local playerPed = PlayerPedId()
      local coords = GetEntityCoords(playerPed)
      TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_BUM_WASH', 0, false)
      QBCore.Functions.Progressbar('cow_milking', Config.Alerts['cow_milking'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
    }, {
    }, {}, {}, function()
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-simplefarming:cowmilking")
    end, function()
      QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
    end)
    elseif not emptybucket then
      Wait(500)
      QBCore.Functions.Notify(Config.Alerts['emptybucket'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('AnimalFarming', function()
  for k, v in pairs(CowFarming) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:milkcow",
          icon = "fas fa-glass-water-droplet",
          label = "Milk the Cow",
          job = "farmer",
        },
      },
      distance = v.distance,
    })
  end
end)

------------ Pumpkins --------------

CreateThread(function()
  for k, v in pairs(PumpkinField) do
    local PumpkinFarmingBlip = AddBlipForCoord(PumpkinField[k].BlipCoord)
      SetBlipSprite(PumpkinFarmingBlip, PumpkinField[k].Blip)
      SetBlipAsShortRange(PumpkinFarmingBlip, true)
      SetBlipScale(PumpkinFarmingBlip, 0.8)
      SetBlipColour(PumpkinFarmingBlip, PumpkinField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PumpkinField[k].label)
      EndTextCommandSetBlipName(PumpkinFarmingBlip)

    local PumpkinFarmingLocation = PolyZone:Create(PumpkinField[k].zones, {
      name = PumpkinField[k].label,
      minZ = PumpkinField[k].minz,
      maxZ = PumpkinField[k].maxz,
      debugPoly = false
    })

    PumpkinFarmingLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('qb-simplefarming:pumpkin')
      else
        for k, v in pairs(PumpkinFarm) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:pumpkinfarming', function()
  local playerPed = PlayerPedId()
  local coords = GetEntityCoords(playerPed)
  TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
  QBCore.Functions.Progressbar("picking_pumpkins", Config.Alerts['picking_pumpkins'], 3000, false, true, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
      disableInventory = true,
  }, {}, {}, {}, function()
      ClearPedTasks(PlayerPedId())
      RequestAnimDict("anim@heists@box_carry@")
			Wait(100)
      pumpkinprop = CreateObject(GetHashKey("prop_veg_crop_03_pump"), 0, 0, 0, true, true, true)
      AttachEntityToEntity(pumpkinprop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.12, 0, 0.30, -145.0, 100.0, 0.0, true, true, false, true, 1, true)
      TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 2.0, 2.0, 2500, 51, 0, false, false, false)
			Wait(3500)
      DetachEntity(pumpkinprop, 1, true)
      DeleteEntity(pumpkinprop)
      DeleteObject(pumpkinprop)
      TriggerServerEvent('qb-simplefarming:pumpkinpicking')
  end, function()
      ClearPedTasks(PlayerPedId())
      QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:pumpkin', function()
  for k, v in pairs(PumpkinFarm) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:pumpkinfarming",
          icon = "fas fa-apple-whole",
          label = "Pick Pumpkin",
          job = "farmer",
        },
      },
      distance = v.distance,
    })
  end
end)

------------ Lettuce --------------

CreateThread(function()
  for k, v in pairs(LettuceField) do
    local LettuceFarmingBlip = AddBlipForCoord(LettuceField[k].BlipCoord)
      SetBlipSprite(LettuceFarmingBlip, LettuceField[k].Blip)
      SetBlipAsShortRange(LettuceFarmingBlip, true)
      SetBlipScale(LettuceFarmingBlip, 0.8)
      SetBlipColour(LettuceFarmingBlip, LettuceField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(LettuceField[k].label)
      EndTextCommandSetBlipName(LettuceFarmingBlip)

    local LettuceFarmingLocation = PolyZone:Create(LettuceField[k].zones, {
      name = LettuceField[k].label,
      minZ = LettuceField[k].minz,
      maxZ = LettuceField[k].maxz,
      debugPoly = false
    })

    LettuceFarmingLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('qb-simplefarming:lettuce')
      else
        for k, v in pairs(LettuceFarm) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:lettucefarming', function()
  local playerPed = PlayerPedId()
  local coords = GetEntityCoords(playerPed)
  TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
  QBCore.Functions.Progressbar("picking_lettuce", Config.Alerts['picking_lettuce'], 3000, false, true, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
      disableInventory = true,
  }, {}, {}, {}, function()
      ClearPedTasks(PlayerPedId())
      RequestAnimDict("anim@heists@box_carry@")
		Wait(100)
      lettuceprop = CreateObject(GetHashKey("prop_veg_crop_03_cab"), 0, 0, 0, true, true, true)
      AttachEntityToEntity(lettuceprop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.12, 0, 0.30, -145.0, 100.0, 0.0, true, true, false, true, 1, true)
      TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 2.0, 2.0, 2500, 51, 0, false, false, false)
		Wait(3500)
      DetachEntity(lettuceprop, 1, true)
      DeleteEntity(lettuceprop)
      DeleteObject(lettuceprop)
      TriggerServerEvent('qb-simplefarming:lettucepicking')
  end, function()
      ClearPedTasks(PlayerPedId())
      QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:lettuce', function()
  for k, v in pairs(LettuceFarm) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:lettucefarming",
          icon = "fas fa-seedling",
          label = "Pick Lettuce",
          job = "farmer",
        },
      },
      distance = v.distance,
    })
  end
end)

------------ PineApple --------------

CreateThread(function()
  for k, v in pairs(PineAppleField) do
    local PineAppleFarmingBlip = AddBlipForCoord(PineAppleField[k].BlipCoord)
      SetBlipSprite(PineAppleFarmingBlip, PineAppleField[k].Blip)
      SetBlipAsShortRange(PineAppleFarmingBlip, true)
      SetBlipScale(PineAppleFarmingBlip, 0.8)
      SetBlipColour(PineAppleFarmingBlip, PineAppleField[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(PineAppleField[k].label)
      EndTextCommandSetBlipName(PineAppleFarmingBlip)

    local PineAppleFarmingLocation = PolyZone:Create(PineAppleField[k].zones, {
      name = PineAppleField[k].label,
      minZ = PineAppleField[k].minz,
      maxZ = PineAppleField[k].maxz,
      debugPoly = false
    })

    PineAppleFarmingLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('qb-simplefarming:pineapple')
      else
        for k, v in pairs(PineAppleFarm) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:pineapplefarming', function()
  local playerPed = PlayerPedId()
  local coords = GetEntityCoords(playerPed)
  TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
  QBCore.Functions.Progressbar("picking_pineapple", Config.Alerts['picking_pineapple'], 3000, false, true, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
      disableInventory = true,
  }, {}, {}, {}, function()
      ClearPedTasks(PlayerPedId())
      RequestAnimDict("anim@heists@box_carry@")
		Wait(100)
      pineappleprop = CreateObject(GetHashKey("prop_pineapple"), 0, 0, 0, true, true, true)
      AttachEntityToEntity(pineappleprop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.12, 0, 0.30, -145.0, 100.0, 0.0, true, true, false, true, 1, true)
      TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 2.0, 2.0, 2500, 51, 0, false, false, false)
		Wait(3500)
      DetachEntity(pineappleprop, 1, true)
      DeleteEntity(pineappleprop)
      DeleteObject(pineappleprop)
      TriggerServerEvent('qb-simplefarming:pineapplepicking')
  end, function()
      ClearPedTasks(PlayerPedId())
      QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:pineapple', function()
  for k, v in pairs(PineAppleFarm) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:pineapplefarming",
          icon = "fas fa-apple-whole",
          label = "Pick PineApple",
          job = "farmer",
        },
      },
      distance = v.distance,
    })
  end
end)

-- Corn --

CreateThread(function()
  for k, v in pairs(CornFields) do
    local CornFieldBlips = AddBlipForCoord(CornFields[k].BlipCoord)
      SetBlipSprite(CornFieldBlips, CornFields[k].Blip)
      SetBlipAsShortRange(CornFieldBlips, true)
      SetBlipScale(CornFieldBlips, 0.8)
      SetBlipColour(CornFieldBlips, CornFields[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(CornFields[k].label)
      EndTextCommandSetBlipName(CornFieldBlips)

    local CornFieldLocation = PolyZone:Create(CornFields[k].zones, {
      name = CornFields[k].label,
      minZ = CornFields[k].minz,
      maxZ = CornFields[k].maxz,
      debugPoly = false
    })

    CornFieldLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('CornField')
      else
        for k, v in pairs(CornField) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:cornfield', function()
  QBCore.Functions.Progressbar("picking_corns", Config.Alerts['corn_picking'], 3000, false, true, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
      disableInventory = true,
    }, {
      animDict = 'missmechanic',
      anim = 'work_base',
      flags = 16,
    }, {}, {}, function()
        TriggerServerEvent('qb-simplefarming:cornpicking')
    end, function()
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('CornField', function()
  for k, v in pairs(CornField) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:cornfield",
          icon = "fas fa-wheat-awn",
          label = "Grather Corn",
          job = "farmer",
        },
      },
      distance = v.distance,
    })
  end
end)

-- Gradens --

CreateThread(function()
  for k, v in pairs(Garden) do
    local GardenBlips = AddBlipForCoord(Garden[k].BlipCoord)
      SetBlipSprite(GardenBlips, Garden[k].Blip)
      SetBlipAsShortRange(GardenBlips, true)
      SetBlipScale(GardenBlips, 0.8)
      SetBlipColour(GardenBlips, Garden[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Garden[k].label)
      EndTextCommandSetBlipName(GardenBlips)

    local GardenLocation = PolyZone:Create(Garden[k].zones, {
      name = Garden[k].label,
      minZ = Garden[k].minz,
      maxZ = Garden[k].maxz,
      debugPoly = false
    })

    GardenLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('GrapeField')
        TriggerEvent('Mints')
        TriggerEvent('Coffee')
        TriggerEvent('Potatoes')
        TriggerEvent('Tomatoes')
      else
        for k, v in pairs(GrapeField) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
        for k, v in pairs(MintsField) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
        for k, v in pairs(CoffeeField) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
        for k, v in pairs(PotatoesField) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
        for k, v in pairs(TomatoesField) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:grapefield', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
  QBCore.Functions.Progressbar("grapefield_picking", Config.Alerts['grape_picking'], 3000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    disableInventory = true,
  }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"C"})
    TriggerServerEvent('qb-simplefarming:grapepicking')
  end, function()
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:mintfield', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
  QBCore.Functions.Progressbar("mint_picking", Config.Alerts['mint_picking'], 3000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    disableInventory = true,
  }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"C"})
    TriggerServerEvent('qb-simplefarming:mintpicking')
  end, function()
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:coffeefield', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
  QBCore.Functions.Progressbar("coffee_picking", Config.Alerts['coffee_picking'], 3000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    disableInventory = true,
  }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"C"})
    TriggerServerEvent('qb-simplefarming:coffeepicking')
  end, function()
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:potatofield', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
  QBCore.Functions.Progressbar("chilly_picking", Config.Alerts['potato_picking'], 3000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    disableInventory = true,
  }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"C"})
    TriggerServerEvent('qb-simplefarming:potatopicking')
  end, function()
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:tomatoefields', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
  QBCore.Functions.Progressbar("tomatoes_picking", Config.Alerts['tomatoes_picking'], 3000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
    disableInventory = true,
  }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"C"})
    TriggerServerEvent('qb-simplefarming:tomatoespicking')
  end, function()
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('GrapeField', function()
  for k, v in pairs(GrapeField) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:grapefield",
            icon = "fa fa-sign-language",
            label = "Pick Grapes",
            job = "farmer",
          },
        },
      distance = v.distance,
    })
  end
end)

RegisterNetEvent('Mints', function()
  for k, v in pairs(MintsField) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:mintfield",
            icon = "fas fa-leaf",
            label = "Pick Mint",
            job = "farmer",
          },
        },
      distance = v.distance,
    })
  end
end)

RegisterNetEvent('Coffee', function()
  for k, v in pairs(CoffeeField) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:coffeefield",
            icon = "fas fa-leaf",
            label = "Pick Coffee Beans",
            job = "farmer",
          },
        },
      distance = v.distance,
    })
  end
end)

RegisterNetEvent('Potatoes', function()
  for k, v in pairs(PotatoesField) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:potatofield",
            icon = "fa fa-sign-language",
            label = "Pick Potatoes",
            job = "farmer",
          },
        },
      distance = v.distance,
    })
  end
end)


RegisterNetEvent('Tomatoes', function()
  for k, v in pairs(TomatoesField) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:tomatoefields",
            icon = "fa fa-sign-language",
            label = "Pick Tomatoes From Garden",
            job = "farmer",
          },
        },
      distance = v.distance,
    })
  end
end)

-- Chiken

CreateThread(function()
  for k, v in pairs(ChickenFarm) do
    local ChickenFarmBlips = AddBlipForCoord(ChickenFarm[k].BlipCoord)
      SetBlipSprite(ChickenFarmBlips, ChickenFarm[k].Blip)
      SetBlipAsShortRange(ChickenFarmBlips, true)
      SetBlipScale(ChickenFarmBlips, 0.8)
      SetBlipColour(ChickenFarmBlips, ChickenFarm[k].BlipColor)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(ChickenFarm[k].label)
      EndTextCommandSetBlipName(ChickenFarmBlips)

    local ChickenFarmLocation = PolyZone:Create(ChickenFarm[k].zones, {
      name = ChickenFarm[k].label,
      minZ = ChickenFarm[k].minz,
      maxZ = ChickenFarm[k].maxz,
      debugPoly = false
    })

    ChickenFarmLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        inZone = true
        TriggerEvent('ChickenPens')
      else
        for k, v in pairs(ChickenPens) do
          exports['qb-target']:RemoveZone(v.Name)
          inZone = false
        end
      end
    end)
  end
end)

RegisterNetEvent('qb-simplefarming:petchicken', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Petting"})
  QBCore.Functions.Progressbar("pet_chicken", "Petting Chicken", 5000, false, true, { -- 5 Seconds
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
      disableInventory = true,
  }, {}, {}, {}, function()
      TriggerEvent('animations:client:EmoteCommandStart', {"c"})
      TriggerServerEvent('hud:server:RelieveStress', math.random(2, 5))
      Wait(1000)
      QBCore.Functions.Notify(Config.Alerts['stress'])
  end, function()
      ClearPedTasks(PlayerPedId())
      QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
  end)
end)

RegisterNetEvent('qb-simplefarming:feedchicken', function ()
  QBCore.Functions.TriggerCallback('qb-simplefarming:soybeancheck', function(soybeans)
    if soybeans then
      TriggerEvent('animations:client:EmoteCommandStart', {"Bumbin"})
      QBCore.Functions.Progressbar("feeding_chicken", "Feeding Chicken", 5000, false, true, { -- 5 Seconds
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          disableInventory = true,
      }, {}, {}, {}, function()
          TriggerEvent('animations:client:EmoteCommandStart', {"c"})
          TriggerServerEvent("qb-simplefarming:feedingchickenlit")
          Wait(2000)
      end, function()
          ClearPedTasks(PlayerPedId())
          QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
      end)
    elseif not soybeans then
      QBCore.Functions.Notify(Config.Alerts['error.soybean'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('ChickenPens', function()
  for k, v in pairs(ChickenPens) do
    exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
      name=v.Name,
      heading= v.heading,
      debugPoly=false,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:petchicken",
          icon = "Fas Fa-Hand-Paper",
          label = "Pet",
          job = "farmer",
        },
        {
          type = "client",
          event = "qb-simplefarming:feedchicken",
          icon = "Fas Fa-Hand-Holding-Heart",
          job = "farmer",
          label = "Feed Chicken",
        },
      },
      distance = v.distance,
    })
  end
end)

exports['qb-target']:AddBoxZone("sellerped", Seller.targetZone, 1, 1, {
	name = "seller",
	heading = Seller.targetHeading,
	debugPoly = false,
	minZ = Seller.minZ,
	maxZ = Seller.maxZ,
}, {
	options = {
    {
      type = "server",
      event = "qb-simpefarming:sellItems",
      icon = "Fas Fa-hands",
      job = "farmer",
      label = "Talk to farmer",
    },
	},
	distance = 1.0
})
