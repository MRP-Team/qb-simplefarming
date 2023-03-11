Config = Config or {}

Config.Debug = false

Config.Job = 'farmer' -- set to false if no job is needed (Config.Job = false)

Config.Seller = { -- seller set to false (Config.Seller = false) if you don't want a seller ped
    PedModel = `s_f_y_migrant_01`, -- Ped model  https://wiki.rage.mp/index.php?title=Peds
    Coords = vector4(760.4, -3194.97, 6.07, 265.82),
    Blip = { -- set to false if no blip is needed (Blip = false)
        Sprite = 642,
        Display = 6,
        Scale = 0.65,
        Colour = 17,
        Label = "Farm Seller",
    },
    SellPrice = {
        ["apple"] = {
            ["price"] = math.random(5, 15)
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
}


Config.CowFarms = {
    [1] = {
        Label = "Barn",
        Coord = vector3(427.27, 6467.9, 33.06),
        Blip = { -- set to false if no blip is needed (Blip = false)
            Sprite = 569,
            Display = 6,
            Scale = 0.65,
            Color = 1,
            Label = "Barn",
        },
        Zone = {
            vector2(427.27011108398, 6482.0576171875),
            vector2(414.93353271484, 6467.5634765625),
            vector2(437.35623168945, 6449.587890625),
            vector2(449.0798034668, 6463.6796875)		
        },
        minZ = 28.0,
        maxZ = 30.0,
        PedModel = `a_c_cow`,
        Peds = {
            cow1 = {
                Coords = vector3(433.94, 6472.54, 28.77),
            },
            cow2 = {
                Coords = vector3(425.9, 6463.02, 28.78),
            },
            cow3 = {
                Coords = vector3(431.09, 6458.64, 28.76),
            },
            cow4 = {
                Coords = vector3(436.39, 6454.36, 28.75),
            },
        }
    }
}
Config.ChickenFarms = { -- set to false if no chicken farm needed
    [1] = {
        Label = "Chicken Farm",
        Coord = vector3(2378.2, 5053.26, 46.44),
        Blip = { -- set to false if no blip is needed (Blip = false)
            Sprite = 677,
            Display = 6,
            Scale = 0.65,
            Color = 5,
            Label = "Chicken Farm",
        },
        Zone = {
            vector2(2369.6208496094, 5060.04296875),
            vector2(2367.5373535156, 5055.6630859375),
            vector2(2367.4750976562, 5050.7309570312),
            vector2(2369.5764160156, 5046.3500976562),
            vector2(2373.3249511718, 5043.1772460938),
            vector2(2378.0537109375, 5041.9638671875),
            vector2(2382.8674316406, 5042.8388671875),
            vector2(2386.7736816406, 5045.6704101562),
            vector2(2389.1911621094, 5049.9096679688),
            vector2(2389.55078125, 5054.8041992188),
            vector2(2387.7934570312, 5059.3745117188),
            vector2(2384.3041992188, 5062.7436523438),
            vector2(2379.6799316406, 5064.3305664062),
            vector2(2374.8686523438, 5063.8203125),
            vector2(2371.9616699218, 5062.3247070312)			
        },
        minZ = 45.34721374511,
        maxZ = 49.475967407226,
        PedModel = `a_c_hen`,
        Peds = {
            chicken1 = {
                Coords = vector3(2386.2, 5047.97, 46.4),
            },
            chicken2 = {
                Coords = vector3(2387.07, 5052.83, 46.45),
            },
            chicken3 = {
                Coords = vector3(2386.37, 5057.24, 46.44),
            },
            chicken4 = {
                Coords = vector3(2382.61, 5059.2, 46.44),
            },
            chicken5 = {
                Coords = vector3(2371.64, 5056.94, 46.44),
            },
            chicken6 = {
                Coords = vector3(2377.03, 5059.62, 46.44),
            },
            chicken7 = {
                Coords = vector3(2374.73, 5056.82, 46.44),
            },
            chicken8 = {
                Coords = vector3(2374.08, 5053.2, 46.44),
            },
            chicken9 = {
                Coords = vector3(2377.54, 5050.32, 46.44),
            },
            chicken10 = {
                Coords = vector3(2380.87, 5049.97, 46.44),
            },
            chicken11 = {
                Coords = vector3(2383.23, 5054.1, 46.44),
            },
            chicken12 = {
                Coords = vector3(2377.87, 5054.12, 46.44),
            },
            chicken13 = {
                Coords = vector3(2381.62, 5056.2, 46.44),
            },
            chicken14 = {
                Coords = vector3(2376.19, 5047.36, 46.44),
            },
            chicken15 = {
                Coords = vector3(2374.41, 5049.63, 46.42),
            },
            chicken16 = {
                Coords = vector3(2379.72, 5059.89, 46.44),
            },
        }
    }
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
            model = 'ng_proc_food_ornge1a',
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
    ['killing_chicken'] = 'Killing the chicken',
    ['killing_cow'] = 'Killing the cow',
    ['weapon'] = 'You don\'t have a knife',
}
