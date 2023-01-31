local QBCore = exports['qb-core']:GetCoreObject()

----------------------------------- Apple Stuff -----------------------------------
CreateThread(function()
  for k, v in pairs(AppleField) do
    local ApplePicking = PolyZone:Create(AppleField[k].zones, {
      name = AppleField[k].label,
      minZ = AppleField[k].minz,
      maxZ = AppleField[k].maxz,
      debugPoly = Config.Debug
    })

    ApplePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('AppleTrees')
      else
        for k, v in pairs(AppleTrees) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:appletree",
          icon = "fas fa-apple-whole",
          label = "Pick Apples",
          job = Config.Job,
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
    local LimePicking = PolyZone:Create(LimeField[k].zones, {
      name = LimeField[k].label,
      minZ = LimeField[k].minz,
      maxZ = LimeField[k].maxz,
      debugPoly = Config.Debug
    })

    LimePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('LimeTrees')
      else
        for k, v in pairs(LimeTrees) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:limetree",
          icon = "fas fa-lemon",
          label = "Pick Limes",
          job = Config.Job,
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Orange Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(OrangeField) do
    local OrangePicking = PolyZone:Create(OrangeField[k].zones, {
      name = OrangeField[k].label,
      minZ = OrangeField[k].minz,
      maxZ = OrangeField[k].maxz,
      debugPoly = Config.Debug
    })

    OrangePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('OrangeTrees')
      else
        for k, v in pairs(OrangeTrees) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:orangetree",
          icon = "fas fa-apple-whole",
          label = "Pick Oranges",
          job = Config.Job,
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Pomegranate Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(PomegranateField) do
    local PomegranatePicking = PolyZone:Create(PomegranateField[k].zones, {
      name = PomegranateField[k].label,
      minZ = PomegranateField[k].minz,
      maxZ = PomegranateField[k].maxz,
      debugPoly = Config.Debug
    })

    PomegranatePicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('PomegranateTrees')
      else
        for k, v in pairs(PomegranateTrees) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:pomegranatetree",
          icon = "fas fa-apple-whole",
          label = "Pick Pomegranates",
          job = Config.Job,
        },
      },
    distance = v.distance,
  })
  end
end)

----------------------------------- Peach Stuff -----------------------------------

CreateThread(function()
  for k, v in pairs(PeachField) do
    local PeachPicking = PolyZone:Create(PeachField[k].zones, {
      name = PeachField[k].label,
      minZ = PeachField[k].minz,
      maxZ = PeachField[k].maxz,
      debugPoly = Config.Debug
    })

    PeachPicking:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('PeachTrees')
      else
        for k, v in pairs(PeachTrees) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:peachtree",
          icon = "fas fa-apple-whole",
          label = "Pick Peachs",
          job = Config.Job,
        },
      },
    distance = v.distance,
  })
  end
end)

------------ Pumpkins --------------

CreateThread(function()
  for k, v in pairs(PumpkinField) do

    local PumpkinFarmingLocation = PolyZone:Create(PumpkinField[k].zones, {
      name = PumpkinField[k].label,
      minZ = PumpkinField[k].minz,
      maxZ = PumpkinField[k].maxz,
      debugPoly = Config.Debug
    })

    PumpkinFarmingLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('qb-simplefarming:pumpkin')
      else
        for k, v in pairs(PumpkinFarm) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:pumpkinfarming",
          icon = "fas fa-apple-whole",
          label = "Pick Pumpkin",
          job = Config.Job,
        },
      },
      distance = v.distance,
    })
  end
end)

------------ Lettuce --------------

CreateThread(function()
  for k, v in pairs(LettuceField) do
    local LettuceFarmingLocation = PolyZone:Create(LettuceField[k].zones, {
      name = LettuceField[k].label,
      minZ = LettuceField[k].minz,
      maxZ = LettuceField[k].maxz,
      debugPoly = Config.Debug
    })

    LettuceFarmingLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('qb-simplefarming:lettuce')
      else
        for k, v in pairs(LettuceFarm) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:lettucefarming",
          icon = "fas fa-seedling",
          label = "Pick Lettuce",
          job = Config.Job,
        },
      },
      distance = v.distance,
    })
  end
end)

------------ PineApple --------------

CreateThread(function()
  for k, v in pairs(PineAppleField) do
    local PineAppleFarmingLocation = PolyZone:Create(PineAppleField[k].zones, {
      name = PineAppleField[k].label,
      minZ = PineAppleField[k].minz,
      maxZ = PineAppleField[k].maxz,
      debugPoly = Config.Debug
    })

    PineAppleFarmingLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('qb-simplefarming:pineapple')
      else
        for k, v in pairs(PineAppleFarm) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:pineapplefarming",
          icon = "fas fa-apple-whole",
          label = "Pick PineApple",
          job = Config.Job,
        },
      },
      distance = v.distance,
    })
  end
end)

-- Corn --

CreateThread(function()
  for k, v in pairs(CornFields) do
    local CornFieldLocation = PolyZone:Create(CornFields[k].zones, {
      name = CornFields[k].label,
      minZ = CornFields[k].minz,
      maxZ = CornFields[k].maxz,
      debugPoly = Config.Debug
    })

    CornFieldLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('CornField')
      else
        for k, v in pairs(CornField) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
        {
          type = "client",
          event = "qb-simplefarming:cornfield",
          icon = "fas fa-wheat-awn",
          label = "Grather Corn",
          job = Config.Job,
        },
      },
      distance = v.distance,
    })
  end
end)

-- Gradens --

CreateThread(function()
  for k, v in pairs(Garden) do
    local GardenLocation = PolyZone:Create(Garden[k].zones, {
      name = Garden[k].label,
      minZ = Garden[k].minz,
      maxZ = Garden[k].maxz,
      debugPoly = Config.Debug
    })

    GardenLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        TriggerEvent('GrapeField')
        TriggerEvent('Mints')
        TriggerEvent('Coffee')
        TriggerEvent('Potatoes')
        TriggerEvent('Tomatoes')
      else
        for k, v in pairs(GrapeField) do
          exports['qb-target']:RemoveZone(v.Name)
        end
        for k, v in pairs(MintsField) do
          exports['qb-target']:RemoveZone(v.Name)
        end
        for k, v in pairs(CoffeeField) do
          exports['qb-target']:RemoveZone(v.Name)
        end
        for k, v in pairs(PotatoesField) do
          exports['qb-target']:RemoveZone(v.Name)
        end
        for k, v in pairs(TomatoesField) do
          exports['qb-target']:RemoveZone(v.Name)
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:grapefield",
            icon = "fa fa-sign-language",
            label = "Pick Grapes",
            job = Config.Job,
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:mintfield",
            icon = "fas fa-leaf",
            label = "Pick Mint",
            job = Config.Job,
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:coffeefield",
            icon = "fas fa-leaf",
            label = "Pick Coffee Beans",
            job = Config.Job,
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:potatofield",
            icon = "fa fa-sign-language",
            label = "Pick Potatoes",
            job = Config.Job,
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
      debugPoly = Config.Debug,
      minZ = v.minZ,
      maxZ = v.maxZ,
    },{
      options = {
          {
            type = "client",
            event = "qb-simplefarming:tomatoefields",
            icon = "fa fa-sign-language",
            label = "Pick Tomatoes From Garden",
            job = Config.Job,
          },
        },
      distance = v.distance,
    })
  end
end)

-- Animals
-- Chiken

CreateThread(function()
  for k, ChickenFarm in pairs(Config.ChickenFarms) do
    local ChickenFarmLocation = PolyZone:Create(ChickenFarm.Zone, {
      name = ChickenFarm.Label,
      minZ = ChickenFarm.minZ,
      maxZ = ChickenFarm.maxZ,
      debugPoly = Config.Debug
    })

    ChickenFarmLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        for chickenPedName, chickenPedOptions in pairs(ChickenFarm.Peds) do
          exports['qb-target']:AddBoxZone(chickenPedName, vector3(chickenPedOptions.Coords.x, chickenPedOptions.Coords.y, chickenPedOptions.Coords.z), 1.0, 1.0, {
            name = chickenPedName,
            heading = chickenPedOptions.heading,
            debugPoly = Config.Debug,
            minZ = ChickenFarm.minZ,
            maxZ = ChickenFarm.maxZ,
          },{
            options = {
              {
                type = "client",
                event = "qb-simplefarming:petchicken",
                icon = "Fas Fa-Hand-Paper",
                label = "Pet",
                job = Config.Job,
              },
              {
                type = "client",
                event = "qb-simplefarming:feedchicken",
                icon = "Fas Fa-Hand-Holding-Heart",
                job = Config.Job,
                label = "Feed Chicken",
              },
              {
                type = "client",
                action = function(entity)
                  if IsPedAPlayer(entity) then return false end
                  TriggerEvent('qb-simplefarming:killchicken', chickenPedOptions.Coords)
                end,
                icon = "Fas Fa-Hand-Holding-Heart",
                job = Config.Job,
                label = "Kill Chicken",
              },
            },
            distance = 1.5,
          })
        end
      else
        for chickenPedName, chickenPedOptions in pairs(ChickenFarm.Peds) do
          exports['qb-target']:RemoveZone(chickenPedName)
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

RegisterNetEvent('qb-simplefarming:spawnchicken',function(coords)
  makePed(0x6AF51FAF, coords, true)
end)

RegisterNetEvent('qb-simplefarming:killchicken', function(coords)
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      local chickenPed, closestDistance = QBCore.Functions.GetClosestPed(coords)
      if DoesEntityExist(chickenPed) and GetPedType(chickenPed) == 28 and closestDistance < 2.0 then
      QBCore.Debug(GetPedType(chickenPed))
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
        QBCore.Functions.Progressbar('Killing_chicken', Config.Alerts['killing_chicken'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(chickenPed)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slaychickenreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(1000 * 60 * 10) -- 10 minutes
            TriggerEvent('qb-simplefarming:spawnchicken', coords)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

-- Cows

CreateThread(function()
  for k, CowFarm in pairs(Config.CowFarms) do
    local CowFarmLocation = PolyZone:Create(CowFarm.Zone, {
      name = CowFarm.Label,
      minZ = CowFarm.minZ,
      maxZ = CowFarm.maxZ,
      debugPoly = Config.Debug
    })

    CowFarmLocation:onPlayerInOut(function(isPointInside)
      if isPointInside then
        for CowPedName, CowPedOptions in pairs(CowFarm.Peds) do
          exports['qb-target']:AddBoxZone(CowPedName, vector3(CowPedOptions.Coords.x, CowPedOptions.Coords.y, CowPedOptions.Coords.z), 1.0, 1.0, {
            name = CowPedName,
            heading = CowPedOptions.heading,
            debugPoly = Config.Debug,
            minZ = CowFarm.minZ,
            maxZ = CowFarm.maxZ,
          },{
            options = {
              {
                type = "client",
                event = "qb-simplefarming:milkcow",
                icon = "fas fa-glass-water-droplet",
                label = "Milk the Cow",
                job = Config.Job,
              },
              {
                type = "client",
                action = function(entity)
                  if IsPedAPlayer(entity) then return false end
                  TriggerEvent('qb-simplefarming:killCow', CowPedOptions.Coords)
                end,
                icon = "Fas Fa-Hand-Holding-Heart",
                job = Config.Job,
                label = "Kill Cow",
              },
            },
            distance = 1.5,
          })
        end
      else
        for CowPedName, CowPedOptions in pairs(CowFarm.Peds) do
          exports['qb-target']:RemoveZone(CowPedName)
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

RegisterNetEvent('qb-simplefarming:spawncow',function(coords)
  makePed(0xFCFA9E1E, coords, true)
end)

RegisterNetEvent('qb-simplefarming:killCow', function(coords)
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      local cowPed, closestDistance = QBCore.Functions.GetClosestPed(coords)
      if DoesEntityExist(cowPed) and GetPedType(cowPed) == 28 and closestDistance < 2.0 then
      QBCore.Debug(GetPedType(cowPed))
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
        QBCore.Functions.Progressbar('Killing_cow', Config.Alerts['killing_cow'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(cowPed)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slaycowreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(1000 * 60 * 10) -- 10 minutes
            TriggerEvent('qb-simplefarming:spawncow', coords)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

-- seller

exports['qb-target']:AddBoxZone("sellerped", Config.Seller.Coords, 1, 1, {
	name = "seller",
	heading = Config.Seller.Coords.w,
	debugPoly = Config.Debug,
	minZ = Config.Seller.minZ,
	maxZ = Config.Seller.maxZ,
}, {
	options = {
    {
      type = "server",
      event = "qb-simpefarming:sellItems",
      icon = "Fas Fa-hands",
      job = Config.Job,
      label = "Talk to farmer",
    },
	},
	distance = 1.0
})
