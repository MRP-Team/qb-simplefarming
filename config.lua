Config = Config or {}

Config.UseBlips = true                                 -- True / false option for toggling farm blips

Config.PedModel = "s_f_y_migrant_01"                    -- Ped model  https://wiki.rage.mp/index.php?title=Peds
Config.PedHash = 0xD55B2BF5                            -- Hash numbers for ped model

-- Blips
Seller = {
    targetZone = vector3(760.4, -3194.97, 6.07),
    targetHeading = 265.82,
    coords = vector4(760.4, -3194.97, 6.07 - 1.00, 265.82),
    SetBlipSprite = 642,
    SetBlipDisplay = 6,
    SetBlipScale = 0.65,
    SetBlipColour = 17,
    BlipLabel = "Farm Seller",
    minZ = 4,
    maxZ = 7,
}

-- Sell Items
Config.Sell = {
    ["apple"] = {
        ["price"] = math.random(5, 15)                  -- Seller Price
    },
    ["lettuce"] = {
        ["price"] = math.random(5, 15)
    },
    ["corncob"] = {
        ["price"] = math.random(5, 15)
    },
    ["grapes"] = {
        ["price"] = math.random(5, 15)
    },
    ["tomato"] = {
        ["price"] = math.random(5, 15)
    },
    ["orange"] = {
        ["price"] = math.random(5, 15)
    },
    ["pomegranate"] = {
        ["price"] = math.random(5, 15)
    },
    ["peach"] = {
        ["price"] = math.random(5, 15)
    },
    ["lime"] = {
        ["price"] = math.random(5, 15)
    },
    ["pineapple"] = {
        ["price"] = math.random(5, 15)
    },
    ["milkbucket"] = {
        ["price"] = math.random(25, 35)
    },
    ["rawpumpkin"] = {
        ["price"] = math.random(25, 35)
    },
}

-- Cosumable Items
Config.Consumable = {
    ["apple"] = {
        ['progress'] = {
            label = 'Eating apple ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01b',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["grapes"] = {
        ['progress'] = {
            label = 'Eating grapes ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01a',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["tomato"] = {
        ['progress'] = {
            label = 'Eating tomato ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01a',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["orange"] = {
        ['progress'] = {
            label = 'Eating orange ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01a',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["pomegranate"] = {
        ['progress'] = {
            label = 'Eating pomegranate ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01a',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["peach"] = {
        ['progress'] = {
            label = 'Eating peach ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01a',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["lime"] = {
        ['progress'] = {
            label = 'Eating lime ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'sf_prop_sf_apple_01a',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
    ["pineapple"] = {
        ['progress'] = {
            label = 'Eating pineapple ...',
            time = 5000
        },
        ['animation'] = {
            animDict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            flags = 51,
        },
        ['prop'] = {
            model = 'prop_pineapple',
            bone = 60309,
            coords = vector3(0.0, 0.0150, -0.0200), -- vector 3 format
            rotation = vector3(-124.6964, -166.5760, 8.4572), -- vector 3 format
        },
        ['replenish'] = {
            type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
            replenish = math.random(5, 10),
            isAlcohol = false, -- if you want it to add alcohol count
            event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
            server = false -- if the event above is a server event
        }
    },
}

-- Alert Notification
Config.Alerts = {
    ['cancel'] = 'Cancelled',
    ['apple_pickingbar'] = 'Picking Apples',
	['apple_pickingfront'] = 'You picked ',
    ['apple_pickingend'] = ' apples from the tree',

    ['lime_pickingbar'] = 'Picking Limes',
    ['lime_progressbar'] = 'Making Juice',
	['lime_pickingfront'] = 'You picked ',
    ['lime_pickingend'] = ' limes from the tree',

    ['orange_pickingbar'] = 'Picking Oranges',
    ['orange_progressbar'] = 'Making Juice',
	['orange_pickingfront'] = 'You picked ',
    ['orange_pickingend'] = ' oranges from the tree',

    ['pomegranate_pickingbar'] = 'Picking Pomegranates',
    ['pomegranate_progressbar'] = 'Making Juice',
	['pomegranate_pickingfront'] = 'You picked ',
    ['pomegranate_pickingend'] = ' pomegranates from the tree',

    ['peach_pickingbar'] = 'Picking peaches',
    ['peach_progressbar'] = 'Making Juice',
	['peach_pickingfront'] = 'You picked ',
    ['peach_pickingend'] = ' peaches from the tree',

    ['cow_milking'] = 'Milking The Cow',
    ['emptybucket'] = 'You don\'t have a empty bucket',

    ['picking_pumpkins'] = 'Picking Up Pumpkin',

    ['picking_lettuce'] = 'Picking Up Lettuce',

    ['picking_pineapple'] = 'Picking Up PineApple',

    ['corn_picking'] = 'Picking Corn',

    ['grape_picking'] = 'Picking Grapes',

    ['mint_picking'] = "Picking Mint",

    ['coffee_picking'] = "Picking Coffee Beans",

    ['potato_picking'] = 'Picking Potatoes',

    ['tomatoes_picking'] = 'Picking Tomatoes',

    ['error.soybean'] = 'You don\'t have any soybeans to feed the chicken',
    ['stress'] = 'Your Stress Was Relieved',
}
