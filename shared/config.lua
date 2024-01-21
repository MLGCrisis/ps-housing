PropertiesTable = {}
ApartmentsTable = {}

exports('GetProperties', function() return PropertiesTable end)
exports('GetApartments', function() return ApartmentsTable end)

Config = {}

-- If you're not utilizing ox_lib, it's time to question your approach.
Config.Target = "qb" -- "ox" or "qb"
Config.Notify = "qb" -- "ox" or "qb"
Config.Radial = "qb" -- "ox" or "qb"
Config.Inventory = "qb" -- "ox" or "qb"
Config.Logs = "qb" -- "qb"

-- Anyone provided with keys to a property has the ability to modify its furnishings.
Config.AccessCanEditFurniture = true

-- Draw the poly for the property
Config.DebugMode = false

function Debug(...)
    if Config.DebugMode then
        print(...)
    end
end

-- Log System
Config.EnableLogs = true

-- Enables Dynamic Doors
Config.DynamicDoors = true

Config.PoliceJobNames = {  -- add multiple police jobs that are allowed to raid properties!
    "police",
    -- "police2",
    -- "police3",
}

Config.MinGradeToRaid = 3  -- Minimum grade to raid a property

Config.RaidTimer = 5  -- 5 minutes

Config.RaidItem = "police_stormram"  -- The item required to raid a property

-- If you are using ox_inventory, it is encouraged to use the consume property within data/items.lua and keeping this config option false
Config.ConsumeRaidItem = false          -- Whether or not to consume the raid item upon successful entry.

Config.RealtorJobName = "realestate" -- Set your Real Estate job here

-- If you are utilizing qb-banking and wish for the funds to be deposited directly into the Realestate bank account, set this value to true. 
-- In case you are using an alternative Boss Menu, replace the qb-banking export with the appropriate script export or event.
Config.QBManagement = true

-- Realtor Commisions based on job grade, the rest goes to the owner, if any.
Config.Commissions = {
    [0] = 0.01, -- 1% commision for each sale
    [1] = 0.02,
    [2] = 0.03,
    [3] = 0.04,
    [4] = 0.05,
}

-- Set this value to false if you don't want to assign a starting apartment.
Config.StartingApartment = true

--- With this enabled, the customizer will open when starting apartment is false.
Config.ShowCustomizerWhenNoStartingApartment = true

Config.Apartments = {
    ["Integrity Way"] = {
        label = "Integrity Way",
        door = { x = 269.73, y = -640.75, z = 42.02, h = 249.07, length = 1, width = 2 },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1143566042153631784/1143566754983972954/986BKLz.jpg",
                label = "Outside",
            },
        },
        shell = "Apartment Furnished",
    },
    
    ["South Rockford Drive"] = {
        label = "South Rockford Drive",
        door = { x = -667.02, y = -1105.24, z = 14.63, h = 242.32, length = 1, width = 2 },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1143566042153631784/1143566767864684665/FKTQq4b.jpg",
                label = "Outside",
            },
        },
        shell = "Apartment Furnished",
    },

    ['Morningwood Blvd'] = {
        label = 'Morningwood Blvd',
        door = { x = -1288.52, y = -430.51, z = 35.15, h = 124.81, length = 1, width = 2 },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1143566042153631784/1143566730363412582/amZDmz7.jpg",
                label = "Outside",
            },
        },
        shell = "Apartment Furnished",
    },

    ['Tinsel Towers'] = {
        label = 'Tinsel Towers',
        door = { x = -619.29, y = 37.69, z = 43.59, h = 181.03, length = 1, width = 2 },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1108364246342963322/1140163262315495494/tinsel.webp",
                label = "Outside",
            },
        },
        shell = "Apartment Furnished",
    },

    ['Fantastic Plaza'] = {
        label = 'Fantastic Plaza',
        door = { x = 291.517, y = -1078.674, z = 29.405, h = 270.75, length = 1, width = 2 },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1143566042153631784/1143566742589800629/SgK60IR.jpg",
                label = "Outside",
            },
        },
        shell = "Apartment Furnished",
    }
}

-- Shells provided by K4MB1 https://www.k4mb1maps.com/
Config.Shells = {
    ["Standard Motel"] = {
        label = "Standard Motel",
        hash = 'standardmotel_shell',
        doorOffset = { x = -0.5, y = -2.3, z = 0.0, h = 90.0, width = 1.5 },
        stash = {
            maxweight = 100000, 
            slots = 12,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712181017460736/motel.webp",
                label = "Motel",
            },
        }
    },

    ["Modern Hotel"] = {
        label = "Modern Hotel",
        hash = 'modernhotel_shell',
        doorOffset = { x = 4.98, y = 4.35, z = 0.0, h = 179.79, width = 2.0  },
        stash = {
            maxweight = 150000, 
            slots = 20,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712459691208704/angle_1.webp",
                label = "Angle 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712460110643210/angle_2.webp",
                label = "Angle 2",
            },
        }
    },

    ["Apartment Furnished"] = {
        label = "Apartment Furnished",
        hash = 'furnitured_midapart',
        doorOffset = { x = 1.44, y = -10.25, z = 0.0, h = 0.0, width = 1.5  },
        stash = {
            maxweight = 200000, 
            slots = 25,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712598019354684/bathroom.webp",
                label = "Bathroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712598409420850/Bedroom.webp",
                label = "Bedroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712598807887942/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712599185371146/Kitchen_and_Dining.webp",
                label = "Kitchen and Dining",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712599629963366/living_room_1.webp",
                label = "Living Room Angle 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712599982293022/living_room_2.webp",
                label = "Living Room Angle 2",
            },
        },
    },

    ["Apartment Unfurnished"] = {
        label = "Apartment Unfurnished",
        hash = 'shell_v16mid',
        doorOffset = { x = 1.34, y = -14.36, z = -0.5, h = 354.08, width = 1.5  },
        stash = {
            maxweight = 200000, 
            slots = 25,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712919412088955/bathroom.webp",
                label = "Bathroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712919735054417/bedroom.webp",
                label = "Bedroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712920083189770/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712920464859257/kitchen.webp",
                label = "Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101712920846544907/livingroom.webp",
                label = "Living Room",
            },
        },
    },

    ["Apartment 2 Unfurnished"] = {
        label = "Apartment 2 Unfurnished",
        hash = 'shell_v16low',
        doorOffset = { x = 4.69, y = -6.5, z = -1.0, h = 358.50, width = 1.5  },
        stash = {
            maxweight = 200000, 
            slots = 25,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713104288612384/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713104926154853/kitchen.webp",
                label = "Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713105333006357/livingroom.webp",
                label = "Living Room",
            },
        },
    },

    ["Garage"] = {
        label = "Garage",
        hash = 'shell_garagem',
        doorOffset = { x = 14.0, y = 1.7, z = -0.76, h = 88.49, width = 2.0  },
        stash = {
            maxweight = 500000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713200220745748/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713200677933126/garage.webp",
                label = "Garage",
            },
        },
    },

    ["Office"] = {
        label = "Office",
        hash = 'shell_office1',
        doorOffset = { x = 1.2, y = 4.90, z = -0.73, h = 180.0, width = 2.0  },
        stash = {
            maxweight = 250000, 
            slots = 30,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713285117648976/entry.webp",
                label = "Entance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713285449007196/office.webp",
                label = "Office",
            },
        },
    },

    ["Store"] = {
        label = "Store",
        hash = 'shell_store1',
        doorOffset = { x = -2.69, y = -4.56, z = -0.62, h = 1.91, width = 2.0  },
        stash = {
            maxweight = 500000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713353291878420/room_1.webp",
                label = "Room 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713353937789018/room_2.webp",
                label = "Room 2",
            },
        },
    },

    ["Warehouse"] = {
        label = "Warehouse",
        hash = 'shell_warehouse1',
        doorOffset = { x = -8.96, y = 0.11, z = -0.95, h = 270.64, width = 2.0  },
        stash = {
            maxweight = 1000000, 
            slots = 100,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713451149172766/angle1.webp",
                label = "Angle 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713451551838278/angle2.webp",
                label = "Angle 2",
            },
        },
    },

    ["Container"] = {
        label = "Container",
        hash = 'container_shell',
        doorOffset = { x = 0.05, y = -5.7, z = -0.22, h = 1.7, width = 2.2  },
        stash = {
            maxweight = 500000, 
            slots = 100,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713526319497267/container.webp",
                label = "Container",
            },
        },
    },

    ["2 Floor House"] = {
        label = "2 Floor House",
        hash = 'shell_michael',
        doorOffset = { x = -9.6, y = 5.63, z = -4.07, h = 268.55, width = 2.0  },
        stash = {
            maxweight = 300000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp",
                label = "Bathroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp",
                label = "Floor 2",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp",
                label = "Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp",
                label = "Living Room",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp",
                label = "Room 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp",
                label = "Room 2",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp",
                label = "Room 3",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp",
                label = "Room 3 Dresser",
            },
        },
    },

    ["House 1"] = {
        label = "House 1",
        hash = 'shell_frankaunt',
        doorOffset = { x = -0.34, y = -5.97, z = -0.57, h = 357.23, width = 2.0  },
        stash = {
            maxweight = 200000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713982059974656/bathroom.webp",
                label = "Bathroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713982491983942/diningroom.webp",
                label = "Dining Room",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713982848512030/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713983175659530/kitchen.webp",
                label = "Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713983490228285/livingroom.webp",
                label = "Living Room",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713983821590578/room1.webp",
                label = "Room 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101713984169709690/room2.webp",
                label = "Room 2",
            },
        },
    },

    ["House 2"] = {
        label = "House 2",
        hash = 'shell_ranch',
        doorOffset = { x = -1.23, y = -5.54, z = -1.1, h = 272.21, width = 2.0  },
        stash = {
            maxweight = 500000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714310809518131/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714311228964956/hallway.webp",
                label = "Hallway",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714311623213177/kitchen.webp",
                label = "Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714311988133910/mainarea.webp",
                label = "Main Area",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714312394977370/room.webp",
                label = "Room",
            },
        },
    },

    ["House 3"] = {
        label = "House 3",
        hash = 'shell_lester',
        doorOffset = { x = -1.61, y = -6.02, z = -0.37, h = 357.7, width = 2.0  },
        stash = {
            maxweight = 15000, 
            slots = 20,
        },
        imgs = {
            {
                url = "https://i.imgur.com/ddg9zHU.jpeg",
                label = "Angle 1",
            },
            {
                url = "https://i.imgur.com/4rvkeme.jpeg",
                label = "Angle 2",
            },
            {
                url = "https://i.imgur.com/4QAcZBp.jpeg",
                label = "Entrance",
            },
        },
    },

    ["House 4"] = {
        label = "House 4",
        hash = 'shell_trevor',
        doorOffset = { x = 0.2, y = -3.82, z = -0.41, h = 358.4, width = 2.0  },
        stash = {
            maxweight = 10000, 
            slots = 12,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714761596543107/bathroom.webp",
                label = "Bathroom",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714761994997760/entry.webp",
                label = "Entrance",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714762343133227/kitchen.webp",
                label = "Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714762741588018/livingroom.webp",
                label = "Living Room",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714763140042772/room1.webp",
                label = "Room 1",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714763500761158/room2.webp",
                label = "Room 2",
            },
        },
    },

    ["Trailer"] = {
        label = "Trailer",
        hash = 'shell_trailer',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 10000, 
            slots = 12,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    --purchased shells
    ["highend1"] = {
        label = "High End Apartment",
        hash = 'shell_highend',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 300000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    ["highend2"] = {
        label = "High End Apartment 2",
        hash = 'shell_highendv2',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 300000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    ["apartment1"] = {
        label = "Apartment 1",
        hash = 'shell_apartment1',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 300000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    ["apartment2"] = {
        label = "Apartment 2",
        hash = 'shell_apartment2',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 300000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    ["apartment3"] = {
        label = "Apartment 3",
        hash = 'shell_apartment3',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 300000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    ["garagesmall"] = {
        label = "Small Garage",
        hash = 'shell_garages',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 500000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },

    ["garagelarge"] = {
        label = "Large Garage",
        hash = 'shell_garagel',
        doorOffset = { x = -1.27, y = -2.08, z = -0.48, h = 358.84, width = 2.0  },
        stash = {
            maxweight = 500000, 
            slots = 50,
        },
        imgs = {
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714470985809920/entranceandkitchen.webp",
                label = "Entrance and Kitchen",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471329747026/main.webp",
                label = "Main",
            },
            {
                url = "https://cdn.discordapp.com/attachments/1101313033684394084/1101714471665274980/room1.webp",
                label = "Room",
            },
        },
    },
}


Config.FurnitureTypes = {
    ["storage"] = function(entity, property_id, shell, furniture, count)
        local stash = string.format("property_%s", property_id) -- if you changed this you will fuck things up

        Framework[Config.Target].AddTargetEntity(entity, "Storage", "fas fa-box-open", function()
            local stashConfig = Config.Shells[shell].stash
            Framework[Config.Inventory].OpenInventory(stash, stashConfig)
        end)

        local property = Property.Get(property_id)
        property.storageTarget = entity
    end,

    ["clothing"] = function(entity, property_id, shell, furniture, count)
        Framework[Config.Target].AddTargetEntity(entity, "Clothing", "fas fa-shirt", function()
            local heading = GetEntityHeading(cache.ped)
            SetEntityHeading(cache.ped, heading - 180.0)
            TriggerEvent("qb-clothing:client:openOutfitMenu")
        end)

        local property = Property.Get(property_id)
        property.clothingTarget = entity
    end
}

Config.Furnitures = {
    {
        category = "Prerequisites",
        items = {
            { ["object"] = "v_res_tre_storagebox", ["price"] = 0, ["label"] = "Storage Unit", ["type"] = "storage", ["max"] = 1 },
            { ["object"] = "v_res_tre_wardrobe", ["price"] = 0, ["label"] = "Wardrobe", ["type"] = "clothing", ["max"] = 1 },
        }
    },

    {
        category = "Couches",
        items = {
            { ["object"] = "miss_rub_couch_01", ["price"] = 300, ["label"] = "Old couch" },
            { ["object"] = "prop_fib_3b_bench", ["price"] = 700, ["label"] = "Threesits couch" },
            { ["object"] = "prop_ld_farm_chair01", ["price"] = 250, ["label"] = "Old chair" },
            { ["object"] = "prop_ld_farm_couch01", ["price"] = 300, ["label"] = "Old treesits couch" },
            { ["object"] = "prop_ld_farm_couch02", ["price"] = 300, ["label"] = "Old striped couch" },
            { ["object"] = "v_res_d_armchair", ["price"] = 300, ["label"] = "Old 1 Seat Couch Yellow" },
            { ["object"] = "v_res_fh_sofa", ["price"] = 3700, ["label"] = "corner sofa" },
            { ["object"] = "v_res_mp_sofa", ["price"] = 3700, ["label"] = "corner sofa 2" },
            { ["object"] = "v_res_d_sofa", ["price"] = 700, ["label"] = "couch 1" },
            { ["object"] = "v_res_j_sofa", ["price"] = 700, ["label"] = "Couch 2" },
            { ["object"] = "v_res_mp_stripchair", ["price"] = 700, ["label"] = "Couch 3" },
            { ["object"] = "v_res_m_h_sofa_sml", ["price"] = 700, ["label"] = "Couch 4" },
            { ["object"] = "v_res_r_sofa", ["price"] = 700, ["label"] = "Couch 5" },
            { ["object"] = "v_res_tre_sofa", ["price"] = 700, ["label"] = "Couch 6" },
            { ["object"] = "v_res_tre_sofa_mess_a", ["price"] = 700, ["label"] = "Couch 7" },
            { ["object"] = "v_res_tre_sofa_mess_b", ["price"] = 700, ["label"] = "Couch 8" },
            { ["object"] = "v_res_tre_sofa_mess_c", ["price"] = 700, ["label"] = "Couch 9" },
            { ["object"] = "v_res_tt_sofa", ["price"] = 700, ["label"] = "Couch 10" },
            { ["object"] = "prop_rub_couch02", ["price"] = 700, ["label"] = "Couch 11" },
            { ["object"] = "v_ilev_m_sofa", ["price"] = 2000, ["label"] = "White Couch" },
            { ["object"] = "v_med_p_sofa", ["price"] = 1000, ["label"] = "Lether Couch Brown" },
            { ["object"] = "v_club_officesofa", ["price"] = 500, ["label"] = "pauper Couch rood" },
            { ["object"] = "bkr_prop_clubhouse_sofa_01a", ["price"] = 1000, ["label"] = "Black Couch" },
            { ["object"] = "apa_mp_h_stn_sofacorn_01", ["price"] = 5000, ["label"] = "corner sofa 3" },
            { ["object"] = "prop_couch_lg_02", ["price"] = 1000, ["label"] = "Couch hout" },
            { ["object"] = "apa_mp_h_stn_sofacorn_10", ["price"] = 5000, ["label"] = "corner sofa 4" },
            { ["object"] = "apa_mp_h_yacht_sofa_02", ["price"] = 1000, ["label"] = "Brown Couch" },
            { ["object"] = "apa_mp_h_yacht_sofa_01", ["price"] = 5000, ["label"] = "White long Couch" },
            { ["object"] = "prop_couch_01", ["price"] = 1000, ["label"] = "Sofa cushions" },
            { ["object"] = "prop_couch_03", ["price"] = 1000, ["label"] = "Sofa yellow" },
            { ["object"] = "prop_couch_04", ["price"] = 1000, ["label"] = "Leather sofa cushions" },
            { ["object"] = "prop_couch_lg_05", ["price"] = 500, ["label"] = "Sofa corduroy" },
            { ["object"] = "prop_couch_lg_06", ["price"] = 1000, ["label"] = "Leather sofa brown 2" },
            { ["object"] = "prop_couch_lg_07", ["price"] = 1000, ["label"] = "Sofa cushions 2" },
            { ["object"] = "prop_couch_lg_08", ["price"] = 1000, ["label"] = "Leather sofa brown 3" },
            { ["object"] = "prop_couch_sm1_07", ["price"] = 500, ["label"] = "Leather sofa corner" },
            { ["object"] = "prop_couch_sm2_07", ["price"] = 500, ["label"] = "Leather sofa straight" },
            { ["object"] = "prop_couch_sm_06", ["price"] = 500, ["label"] = "Leather sofa small" },
            { ["object"] = "apa_mp_h_stn_sofa2seat_02", ["price"] = 1000, ["label"] = "Love seat" },
            { ["object"] = "apa_mp_h_stn_sofacorn_05", ["price"] = 5000, ["label"] = "Corner sofa 5" },
            { ["object"] = "apa_mp_h_stn_sofacorn_06", ["price"] = 5000, ["label"] = "Corner sofa 6" },
            { ["object"] = "apa_mp_h_stn_sofacorn_07", ["price"] = 5000, ["label"] = "Corner sofa 7" },
            { ["object"] = "apa_mp_h_stn_sofacorn_08", ["price"] = 5000, ["label"] = "Corner sofa 8" },
            { ["object"] = "apa_mp_h_stn_sofacorn_09", ["price"] = 5000, ["label"] = "Corner sofa 9" },
            { ["object"] = "ex_mp_h_off_sofa_003", ["price"] = 1000, ["label"] = "Sofa blue fabric" },
            { ["object"] = "ex_mp_h_off_sofa_01", ["price"] = 1000, ["label"] = "Sofa white leather" },
            { ["object"] = "ex_mp_h_off_sofa_02", ["price"] = 1000, ["label"] = "Sofa black leather" },
            { ["object"] = "hei_heist_stn_sofa2seat_03", ["price"] = 1000, ["label"] = "Sofa modern" },
            { ["object"] = "hei_heist_stn_sofa2seat_06", ["price"] = 1000, ["label"] = "Couch brown" },
            { ["object"] = "hei_heist_stn_sofa3seat_01", ["price"] = 1000, ["label"] = "Chaise lounge" },
            { ["object"] = "hei_heist_stn_sofa3seat_02", ["price"] = 1000, ["label"] = "Sofa modern 2" },
            { ["object"] = "hei_heist_stn_sofa3seat_06", ["price"] = 1000, ["label"] = "Sofa modern 3" },
            { ["object"] = "imp_prop_impexp_sofabed_01a", ["price"] = 1000, ["label"] = "Sofa bed" },
            { ["object"] = "prop_t_sofa_02", ["price"] = 1000, ["label"] = "Sofa bed 2" },
        }
    },

    {
        category = "Chairs",
        items = {
            { ["object"] = "v_res_d_highchair", ["price"] = 700, ["label"] = "High chair" },
            { ["object"] = "apa_mp_h_stn_chairstrip_03", ["price"] = 500, ["label"] = "Sitchair 4" },
            { ["object"] = "v_res_fa_chair01", ["price"] = 700, ["label"] = "Chairl" },
            { ["object"] = "v_res_fa_chair02", ["price"] = 700, ["label"] = "Chair 2" },
            { ["object"] = "v_res_fh_barcchair", ["price"] = 700, ["label"] = "High chair 2" },
            { ["object"] = "v_res_fh_dineeamesa", ["price"] = 700, ["label"] = "Kitchen chair 1" },
            { ["object"] = "v_res_fh_dineeamesb", ["price"] = 700, ["label"] = "Kitchen chair 2" },
            { ["object"] = "v_res_fh_dineeamesc", ["price"] = 700, ["label"] = "Kitchen chair 3" },
            { ["object"] = "v_res_fh_easychair", ["price"] = 700, ["label"] = "Chair 3" },
            { ["object"] = "v_res_fh_kitnstool", ["price"] = 700, ["label"] = "Chair 4" },
            { ["object"] = "v_res_fh_singleseat", ["price"] = 700, ["label"] = "High chair 3" },
            { ["object"] = "v_res_jarmchair", ["price"] = 700, ["label"] = "Arm Chair" },
            { ["object"] = "v_res_j_dinechair", ["price"] = 700, ["label"] = "Kitchen chair 4" },
            { ["object"] = "v_res_j_stool", ["price"] = 700, ["label"] = "Chair 5" },
            { ["object"] = "v_res_mbchair", ["price"] = 700, ["label"] = "MB Chair" },
            { ["object"] = "v_res_m_armchair", ["price"] = 700, ["label"] = "Arm Chair 2" },
            { ["object"] = "v_res_m_dinechair", ["price"] = 700, ["label"] = "Kitchen chair 5" },
            { ["object"] = "v_res_study_chair", ["price"] = 700, ["label"] = "Study Chair" },
            { ["object"] = "v_res_trev_framechair", ["price"] = 700, ["label"] = "Chair frame" },
            { ["object"] = "v_res_tre_chair", ["price"] = 700, ["label"] = "Chair 5" },
            { ["object"] = "v_res_tre_officechair", ["price"] = 700, ["label"] = "officeChair" },
            { ["object"] = "v_res_tre_stool", ["price"] = 700, ["label"] = "Chair 6" },
            { ["object"] = "v_res_tre_stool_leather", ["price"] = 700, ["label"] = "Lether Chair" },
            { ["object"] = "v_res_tre_stool_scuz", ["price"] = 700, ["label"] = "Chair Scuz" },
            { ["object"] = "v_med_p_deskchair", ["price"] = 700, ["label"] = "DeskChair" },
            { ["object"] = "v_med_p_easychair", ["price"] = 700, ["label"] = "Easy Chair" },
            { ["object"] = "v_med_whickerchair1", ["price"] = 700, ["label"] = "Whicker Chair" },
            { ["object"] = "prop_direct_chair_01", ["price"] = 700, ["label"] = "Direct Chair" },
            { ["object"] = "prop_direct_chair_02", ["price"] = 700, ["label"] = "Direct Chair 2" },
            { ["object"] = "prop_yacht_lounger", ["price"] = 700, ["label"] = "Yacht Chair 1" },
            { ["object"] = "prop_yacht_seat_01", ["price"] = 700, ["label"] = "Yacht Chair 2" },
            { ["object"] = "prop_yacht_seat_02", ["price"] = 700, ["label"] = "Yacht Chair 3" },
            { ["object"] = "prop_yacht_seat_03", ["price"] = 700, ["label"] = "Yacht Chair 4" },
            { ["object"] = "v_ret_chair_white", ["price"] = 100, ["label"] = "White Chair" },
            { ["object"] = "v_ret_chair", ["price"] = 100, ["label"] = "Chair 7" },
            { ["object"] = "v_ret_ta_stool", ["price"] = 100, ["label"] = "TA Chair" },
            { ["object"] = "prop_cs_office_chair", ["price"] = 100, ["label"] = "Office Chair 2" },
            { ["object"] = "apa_mp_h_yacht_armchair_01", ["price"] = 1000, ["label"] = "White fauteuil" },
            { ["object"] = "v_club_barchair", ["price"] = 300, ["label"] = "Chair 8" },
            { ["object"] = "prop_off_chair_04", ["price"] = 300, ["label"] = "Desk Chair 2" },
            { ["object"] = "v_club_stagechair", ["price"] = 500, ["label"] = "Fauteuil roze" },
            { ["object"] = "v_club_officechair", ["price"] = 500, ["label"] = "Desk Chair 3" },
            { ["object"] = "prop_armchair_01", ["price"] = 500, ["label"] = "Sit chair" },
            { ["object"] = "prop_bar_stool_01", ["price"] = 300, ["label"] = "Barstool" },
            { ["object"] = "apa_mp_h_yacht_stool_01", ["price"] = 300, ["label"] = "White pouffe" },
            { ["object"] = "apa_mp_h_stn_chairarm_12", ["price"] = 500, ["label"] = "Sitchair 3" },
            { ["object"] = "apa_mp_h_stn_chairstool_12", ["price"] = 300, ["label"] = "Feet support" },
            { ["object"] = "prop_chair_03", ["price"] = 100, ["label"] = "Wooden Chair" },
            { ["object"] = "prop_couch_sm_05", ["price"] = 500, ["label"] = "Corduroy armchair" },
            { ["object"] = "prop_couch_sm_07", ["price"] = 300, ["label"] = "White armchair 2" },
            { ["object"] = "prop_couch_sm_02", ["price"] = 300, ["label"] = "Orange armchair" },
            { ["object"] = "apa_mp_h_stn_sofa_daybed_01", ["price"] = 500, ["label"] = "Lounge chair" },
            { ["object"] = "apa_mp_h_stn_sofa_daybed_02", ["price"] = 500, ["label"] = "Lounge chair 2" },
            { ["object"] = "apa_mp_h_din_chair_04", ["price"] = 500, ["label"] = "Modern chair" },
            { ["object"] = "apa_mp_h_din_chair_08", ["price"] = 500, ["label"] = "Modern chair 2" },
            { ["object"] = "apa_mp_h_din_chair_09", ["price"] = 500, ["label"] = "Modern chair 3" },
            { ["object"] = "apa_mp_h_din_chair_12", ["price"] = 500, ["label"] = "Modern chair 4" },
            { ["object"] = "apa_mp_h_din_stool_04", ["price"] = 500, ["label"] = "Modern chair 5" },
            { ["object"] = "apa_mp_h_stn_chairarm_01", ["price"] = 500, ["label"] = "Modern chair 6" },
            { ["object"] = "apa_mp_h_stn_chairarm_02", ["price"] = 500, ["label"] = "Modern chair 7" },
            { ["object"] = "apa_mp_h_stn_chairarm_03", ["price"] = 500, ["label"] = "Modern chair 8" },
            { ["object"] = "apa_mp_h_stn_chairarm_09", ["price"] = 500, ["label"] = "Modern chair 9" },
            { ["object"] = "apa_mp_h_stn_chairarm_11", ["price"] = 500, ["label"] = "Modern chair 10" },
            { ["object"] = "apa_mp_h_stn_chairarm_13", ["price"] = 500, ["label"] = "Modern chair 11" },
            { ["object"] = "apa_mp_h_stn_chairarm_24", ["price"] = 500, ["label"] = "Modern chair 12" },
            { ["object"] = "apa_mp_h_stn_chairarm_25", ["price"] = 500, ["label"] = "Modern chair 13" },
            { ["object"] = "apa_mp_h_stn_chairarm_26", ["price"] = 500, ["label"] = "Modern chair 14" },
            { ["object"] = "apa_mp_h_stn_chairstrip_04", ["price"] = 500, ["label"] = "Modern chair 15" },
            { ["object"] = "apa_mp_h_stn_chairstrip_05", ["price"] = 500, ["label"] = "Modern chair 16" },
            { ["object"] = "apa_mp_h_stn_chairstrip_08", ["price"] = 500, ["label"] = "Modern chair 17" },
            { ["object"] = "apa_mp_h_stn_foot_stool_01", ["price"] = 500, ["label"] = "Pouffe" },
            { ["object"] = "apa_mp_h_stn_foot_stool_02", ["price"] = 500, ["label"] = "Pouffe 2" },
            { ["object"] = "apa_mp_h_yacht_barstool_01", ["price"] = 500, ["label"] = "Barstool 2" },
            { ["object"] = "ba_prop_int_glam_stool", ["price"] = 500, ["label"] = "Barstool 3" },
            { ["object"] = "ba_prop_battle_club_chair_01", ["price"] = 500, ["label"] = "Office chair" },
            { ["object"] = "ba_prop_battle_club_chair_02", ["price"] = 500, ["label"] = "Office chair 2" },
            { ["object"] = "ba_prop_battle_club_chair_03", ["price"] = 500, ["label"] = "Office chair 3" },
            { ["object"] = "ba_prop_battle_control_seat", ["price"] = 500, ["label"] = "Gaming chair" },
        }
    },

    {
        category = "Storage",
        items = {
            { ["object"] = "v_res_cabinet", ["price"] = 2500, ["label"] = "Cabinet Large" },
            { ["object"] = "v_res_d_dressingtable", ["price"] = 2500, ["label"] = "Dressing Table" },
            { ["object"] = "v_res_d_sideunit", ["price"] = 2500, ["label"] = "Side Unit" },
            { ["object"] = "v_res_fh_sidebrddine", ["price"] = 2500, ["label"] = "Side Unit" },
            { ["object"] = "v_res_fh_sidebrdlngb", ["price"] = 2500, ["label"] = "Side Unit" },
            { ["object"] = "v_res_mbbedtable", ["price"] = 2500, ["label"] = "Bed Unit" },
            { ["object"] = "v_res_j_tvstand", ["price"] = 2500, ["label"] = "Tv Unit" },
            { ["object"] = "v_res_mbdresser", ["price"] = 2500, ["label"] = "Dresser Unit" },
            { ["object"] = "v_res_mbottoman", ["price"] = 2500, ["label"] = "Bottoman Unit" },
            { ["object"] = "v_res_mconsolemod", ["price"] = 2500, ["label"] = "Console Unit" },
            { ["object"] = "v_res_mcupboard", ["price"] = 2500, ["label"] = "Cupboard Unit" },
            { ["object"] = "v_res_mdchest", ["price"] = 2500, ["label"] = "Chest Unit" },
            { ["object"] = "v_res_msoncabinet", ["price"] = 2500, ["label"] = "Mason Unit" },
            { ["object"] = "v_res_m_armoire", ["price"] = 2500, ["label"] = "Armoire Unit" },
            { ["object"] = "v_res_m_sidetable", ["price"] = 2500, ["label"] = "Side Unit" },
            { ["object"] = "v_res_son_desk", ["price"] = 2500, ["label"] = "Desk Unit" },
            { ["object"] = "v_res_tre_bedsidetable", ["price"] = 2500, ["label"] = "Side Unit" },
            { ["object"] = "v_res_tre_bedsidetableb", ["price"] = 2500, ["label"] = "Side Unit 2" },
            { ["object"] = "v_res_tre_smallbookshelf", ["price"] = 2500, ["label"] = "Book Unit" },
            { ["object"] = "v_res_tre_storageunit", ["price"] = 2500, ["label"] = "Storage Unit" },
            { ["object"] = "v_res_tre_wardrobe", ["price"] = 2500, ["label"] = "Wardrobe Unit" },
            { ["object"] = "v_res_tre_wdunitscuz", ["price"] = 2500, ["label"] = "Wood Unit" },
            { ["object"] = "prop_devin_box_closed", ["price"] = 100, ["label"] = "Bean Bag 1" },
            { ["object"] = "prop_mil_crate_01", ["price"] = 100, ["label"] = "Mil Crate 1" },
            { ["object"] = "prop_mil_crate_02", ["price"] = 100, ["label"] = "Mil Crate 2" },
            { ["object"] = "prop_ld_int_safe_01", ["price"] = 1100, ["label"] = "Safe" },
            { ["object"] = "prop_toolchest_05", ["price"] = 5000, ["label"] = "Crafting Bench" },
            { ["object"] = "v_corp_filecablow", ["price"] = 500, ["label"] = "Filing cabinet Low" },
            { ["object"] = "v_corp_filecabtall", ["price"] = 500, ["label"] = "Filing cabinet High" },
            { ["object"] = "apa_mp_h_str_shelffloorm_02", ["price"] = 500, ["label"] = "Large modern cupboard" },
            { ["object"] = "v_ilev_frnkwarddr1", ["price"] = 500, ["label"] = "Cupboard franklin" },
            { ["object"] = "prop_coathook_01", ["price"] = 100, ["label"] = "Coat rack" },
            { ["object"] = "v_corp_lowcabdark01", ["price"] = 500, ["label"] = "Filing cabinetLow black" },
            { ["object"] = "v_corp_tallcabdark01", ["price"] = 500, ["label"] = "Filing cabinet High black" },
            { ["object"] = "v_corp_cabshelves01", ["price"] = 1000, ["label"] = "Filing cabinet black" },
            { ["object"] = "v_corp_offshelf", ["price"] = 1000, ["label"] = "Filing cabinet groot" },
            { ["object"] = "v_61_lng_mesh_unitc", ["price"] = 500, ["label"] = "Bookcase white" },
            { ["object"] = "ba_wardrobe", ["price"] = 500, ["label"] = "kledingkast" },
            { ["object"] = "apa_mp_h_str_sideboardl_06", ["price"] = 750, ["label"] = "Cupboard  modern" },
            { ["object"] = "apa_mp_h_str_sideboardl_09", ["price"] = 750, ["label"] = "Cupboard  modern 2" },
            { ["object"] = "apa_mp_h_str_shelfwallm_01", ["price"] = 750, ["label"] = "Bookcase 2" },
            { ["object"] = "apa_mp_h_str_sideboardl_11", ["price"] = 750, ["label"] = "Cupboard  modern 3" },
            { ["object"] = "imp_prop_impexp_parts_rack_03a", ["price"] = 750, ["label"] = "car parts" },
            { ["object"] = "imp_prop_impexp_parts_rack_04a", ["price"] = 750, ["label"] = "car parts 2" },
            { ["object"] = "imp_prop_impexp_parts_rack_05a", ["price"] = 750, ["label"] = "car parts 3" },
            { ["object"] = "apa_mp_h_bed_chestdrawer_02", ["price"] = 750, ["label"] = "chest of drawers" },
            { ["object"] = "hei_heist_bed_chestdrawer_04", ["price"] = 750, ["label"] = "chest of drawers 2" },
            { ["object"] = "prop_rub_cabinet", ["price"] = 50, ["label"] = "rusted filing cabinet" },
            { ["object"] = "prop_tv_cabinet_03", ["price"] = 750, ["label"] = "tv little cupboard" },
            { ["object"] = "prop_tv_cabinet_04", ["price"] = 750, ["label"] = "tv little cupboard 2" },
            { ["object"] = "prop_tv_cabinet_05", ["price"] = 750, ["label"] = "tv little cupboard 3" },
            { ["object"] = "apa_mp_h_str_shelffreel_01", ["price"] = 750, ["label"] = "ikea closet" },
            { ["object"] = "apa_mp_h_str_sideboardl_13", ["price"] = 750, ["label"] = "cabinet modern 4" },
            { ["object"] = "apa_mp_h_str_sideboardl_14", ["price"] = 750, ["label"] = "cabinet modern 5" },
            { ["object"] = "apa_mp_h_str_sideboardm_02", ["price"] = 750, ["label"] = "cabinet modern 6" },
            { ["object"] = "bkr_prop_biker_garage_locker_01", ["price"] = 750, ["label"] = "Biker Locker" },
            { ["object"] = "gr_prop_gr_bench_04b", ["price"] = 750, ["label"] = "Biker Bench" },
        }
    },

    {
        category = "Electronics",
        items = {
            { ["object"] = "prop_trailr_fridge", ["price"] = 300, ["label"] = "Old Fridge" },
            { ["object"] = "v_res_fh_speaker", ["price"] = 300, ["label"] = "Speaker" },
            { ["object"] = "v_res_fh_speakerdock", ["price"] = 300, ["label"] = "Speaker Dock" },
            { ["object"] = "v_res_fh_bedsideclock", ["price"] = 300, ["label"] = "Bedside Clock" },
            { ["object"] = "v_res_fa_phone", ["price"] = 300, ["label"] = "Phone" },
            { ["object"] = "v_res_fh_towerfan", ["price"] = 300, ["label"] = "Tower Fan" },
            { ["object"] = "v_res_fa_fan", ["price"] = 300, ["label"] = "Fan" },
            { ["object"] = "v_res_lest_bigscreen", ["price"] = 300, ["label"] = "Bigscreen" },
            { ["object"] = "v_res_lest_monitor", ["price"] = 300, ["label"] = "Monitor" },
            { ["object"] = "v_res_tre_mixer", ["price"] = 300, ["label"] = "Mixer" },
            { ["object"] = "prop_cs_cctv", ["price"] = 100, ["label"] = "CCTV" },
            { ["object"] = "prop_ld_lap_top", ["price"] = 100, ["label"] = "Laptop" },
            { ["object"] = "prop_ld_monitor_01", ["price"] = 100, ["label"] = "Monitor" },
            { ["object"] = "prop_speaker_05", ["price"] = 500, ["label"] = "mounted speaker" },
            { ["object"] = "prop_tv_flat_03b", ["price"] = 1000, ["label"] = "kleine flatscreen" },
            { ["object"] = "prop_laptop_01a", ["price"] = 750, ["label"] = "Open laptop" },
            { ["object"] = "prop_tv_flat_michael", ["price"] = 3000, ["label"] = "flatscreen hanging ing" },
            { ["object"] = "prop_dyn_pc", ["price"] = 1000, ["label"] = "pc" },
            { ["object"] = "prop_keyboard_01b", ["price"] = 100, ["label"] = "Keybord" },
            { ["object"] = "prop_mouse_01b", ["price"] = 100, ["label"] = "Computer mouse" },
            { ["object"] = "v_ret_gc_phone", ["price"] = 100, ["label"] = "office phone" },
            { ["object"] = "prop_tv_flat_01", ["price"] = 5000, ["label"] = "Big flatscreen" },
            { ["object"] = "prop_arcade_01", ["price"] = 5000, ["label"] = "arcade" },
            { ["object"] = "prop_console_01", ["price"] = 250, ["label"] = "gameconsole" },
            { ["object"] = "v_res_tre_dvdplayer", ["price"] = 250, ["label"] = "dvd Player" },
            { ["object"] = "prop_speaker_08", ["price"] = 500, ["label"] = "wooden speaker" },
            { ["object"] = "prop_cctv_mon_02", ["price"] = 300, ["label"] = "cctv monitor" },
            { ["object"] = "prop_tv_flat_02", ["price"] = 2500, ["label"] = "flatscreen Standing" },
            { ["object"] = "prop_cctv_cam_01a", ["price"] = 300, ["label"] = "cctv 2" },
            { ["object"] = "prop_dest_cctv_02", ["price"] = 300, ["label"] = "cctv monitor 2" },
            { ["object"] = "prop_cctv_cam_07a", ["price"] = 300, ["label"] = "cctv 3" },
            { ["object"] = "apa_mp_h_str_avunits_04", ["price"] = 5500, ["label"] = "flatscreen meubel" },
            { ["object"] = "apa_mp_h_str_avunits_01", ["price"] = 5500, ["label"] = "flatscreen meubel 2" },
            { ["object"] = "v_club_vu_deckcase", ["price"] = 1000, ["label"] = "dj set" },
            { ["object"] = "v_corp_servercln", ["price"] = 1000, ["label"] = "serverrack" },
            { ["object"] = "apa_mp_h_str_avunitl_01_b", ["price"] = 5500, ["label"] = "flat screen furniture 3" },
            { ["object"] = "apa_mp_h_str_avunitl_04", ["price"] = 5500, ["label"] = "flat screen furniture 4" },
            { ["object"] = "apa_mp_h_str_avunitm_01", ["price"] = 5500, ["label"] = "flat screen furniture 5" },
            { ["object"] = "apa_mp_h_str_avunitm_03", ["price"] = 5500, ["label"] = "flat screen furniture 6" },
            { ["object"] = "apa_mp_h_str_avunits_04", ["price"] = 5500, ["label"] = "flat screen furniture 7" },
            { ["object"] = "v_res_printer", ["price"] = 300, ["label"] = "printer" },
            { ["object"] = "apa_mp_h_acc_phone_01", ["price"] = 100, ["label"] = "old fashioned telephone" },
            { ["object"] = "v_res_mousemat", ["price"] = 300, ["label"] = "mouse pad" },
            { ["object"] = "v_res_pcheadset", ["price"] = 300, ["label"] = "headset" },
            { ["object"] = "v_res_pcspeaker", ["price"] = 300, ["label"] = "PC speaker" },
            { ["object"] = "ba_prop_battle_club_speaker_small", ["price"] = 500, ["label"] = "small box" },
            { ["object"] = "ba_prop_battle_club_speaker_med", ["price"] = 750, ["label"] = "box" },
            { ["object"] = "ba_prop_battle_club_speaker_large", ["price"] = 1000, ["label"] = "big box" },
            { ["object"] = "v_res_pcspeaker", ["price"] = 300, ["label"] = "PC speaker" },
            { ["object"] = "v_res_pcwoofer", ["price"] = 300, ["label"] = "PC subwoofer" },
            { ["object"] = "prop_controller_01", ["price"] = 300, ["label"] = "Controller" },
            { ["object"] = "prop_cs_remote_01", ["price"] = 300, ["label"] = "Remote control" },
            { ["object"] = "prop_portable_hifi_01", ["price"] = 300, ["label"] = "Radio" },
            { ["object"] = "prop_dj_deck_02", ["price"] = 300, ["label"] = "DJ table" },
            { ["object"] = "prop_speaker_01", ["price"] = 300, ["label"] = "Speaker" },
        }
    },

    {
        category = "Beds",
        items = {
			{ ["object"] = "v_res_d_bed", ["price"] = 700, ["label"] = "Bed 1" },
			{ ["object"] = "v_res_lestersbed", ["price"] = 700, ["label"] = "Bed 2" },
			{ ["object"] = "v_res_mbbed", ["price"] = 700, ["label"] = "MB Bed" },
			{ ["object"] = "v_res_mdbed", ["price"] = 700, ["label"] = "MD Bed" },
			{ ["object"] = "v_res_msonbed", ["price"] = 700, ["label"] = "Bed 3" },
			{ ["object"] = "v_res_tre_bed1", ["price"] = 700, ["label"] = "Bed 4" },
			{ ["object"] = "v_res_tre_bed2", ["price"] = 700, ["label"] = "T Bed" },
			{ ["object"] = "v_res_tt_bed", ["price"] = 700, ["label"] = "TT Bed" },
			{ ["object"] = "apa_mp_h_bed_with_table_02", ["price"] = 5000, ["label"] = "fancy bed" },
			{ ["object"] = "apa_mp_h_bed_wide_05", ["price"] = 5000, ["label"] = "red bed" },
			{ ["object"] = "apa_mp_h_bed_double_08", ["price"] = 3000, ["label"] = "square bed" },
			{ ["object"] = "apa_mp_h_bed_double_09", ["price"] = 3000, ["label"] = "modern bed" },
			{ ["object"] = "apa_mp_h_yacht_bed_01", ["price"] = 5000, ["label"] = "california king" },
			{ ["object"] = "apa_mp_h_yacht_bed_02", ["price"] = 5000, ["label"] = "california king 2" },
			{ ["object"] = "bkr_prop_biker_campbed_01", ["price"] = 100, ["label"] = "camp bed" },
			{ ["object"] = "ex_prop_exec_bed_01", ["price"] = 700, ["label"] = "small bed" },
			{ ["object"] = "gr_prop_bunker_bed_01", ["price"] = 700, ["label"] = "klein bed 2" },
			{ ["object"] = "p_mbbed_s", ["price"] = 700, ["label"] = "Bed 5" },
        }
    },

    {
        category = "Lighthing",
        items = {
            { ["object"] = "v_corp_cd_desklamp", ["price"] = 100, ["label"] = "Desk Corp Lamp" },
            { ["object"] = "v_res_desklamp", ["price"] = 100, ["label"] = "Desk Lamp" },
            { ["object"] = "v_res_d_lampa", ["price"] = 100, ["label"] = "Lamp AA" },
            { ["object"] = "v_res_fa_lamp1on", ["price"] = 100, ["label"] = "Lamp 1" },
            { ["object"] = "v_res_fh_floorlamp", ["price"] = 100, ["label"] = "Floor Lamp" },
            { ["object"] = "v_res_fh_lampa_on", ["price"] = 100, ["label"] = "Lamp 2" },
            { ["object"] = "v_res_j_tablelamp1", ["price"] = 100, ["label"] = "Table Lamp" },
            { ["object"] = "v_res_j_tablelamp2", ["price"] = 100, ["label"] = "Table Lamp 2" },
            { ["object"] = "v_res_mdbedlamp", ["price"] = 100, ["label"] = "Bed Lamp" },
            { ["object"] = "v_res_mplanttongue", ["price"] = 100, ["label"] = "Plant Tongue Lamp" },
            { ["object"] = "v_res_mtblelampmod", ["price"] = 100, ["label"] = "Table Lamp 3" },
            { ["object"] = "v_res_m_lampstand", ["price"] = 100, ["label"] = "Lamp Stand" },
            { ["object"] = "v_res_m_lampstand2", ["price"] = 100, ["label"] = "Lamp Stand 2" },
            { ["object"] = "v_res_m_lamptbl", ["price"] = 100, ["label"] = "Table Lamp 4" },
            { ["object"] = "v_res_tre_lightfan", ["price"] = 100, ["label"] = "Light Fan" },
            { ["object"] = "v_res_tre_talllamp", ["price"] = 100, ["label"] = "Tall Lamp" },
            { ["object"] = "v_ret_fh_walllighton", ["price"] = 100, ["label"] = "Wall Light" },
            { ["object"] = "v_ret_gc_lamp", ["price"] = 100, ["label"] = "GC Lamp" },
            { ["object"] = "prop_dummy_light", ["price"] = 100, ["label"] = "Flickering Light" },
            { ["object"] = "prop_ld_cont_light_01", ["price"] = 100, ["label"] = "Side Wall Light" },
            { ["object"] = "V_44_D_emis", ["price"] = 100, ["label"] = "Test Light" },
            { ["object"] = "prop_wall_light_07a", ["price"] = 100, ["label"] = "lantaarn" },
            { ["object"] = "prop_wall_light_01a", ["price"] = 100, ["label"] = "Cheap lamp" },
            { ["object"] = "v_serv_tu_light2_", ["price"] = 100, ["label"] = "industrieel licht" },
            { ["object"] = "v_serv_tu_light3_", ["price"] = 100, ["label"] = "industrieel licht2" },
            { ["object"] = "ba_prop_battle_lights_ceiling_l_a", ["price"] = 300, ["label"] = "hanging lamp" },
            { ["object"] = "v_med_p_floorlamp", ["price"] = 300, ["label"] = "Big lamp" },
            { ["object"] = "v_club_vu_lamp", ["price"] = 100, ["label"] = "Smal lamp" },
            { ["object"] = "ba_prop_battle_lights_wall_l_a", ["price"] = 100, ["label"] = "Wall lamp" },
            { ["object"] = "ba_prop_battle_lights_ceiling_l_c", ["price"] = 300, ["label"] = "hanging lamp 2" },
            { ["object"] = "ba_prop_battle_lights_ceiling_l_b", ["price"] = 300, ["label"] = "kroonluchter 2" },
            { ["object"] = "ba_prop_battle_lights_wall_l_c", ["price"] = 100, ["label"] = "Wall lamp 2" },
            { ["object"] = "ba_prop_battle_lights_wall_l_b", ["price"] = 100, ["label"] = "Wall lamp 3" },
            { ["object"] = "hei_heist_lit_lightpendant_02", ["price"] = 300, ["label"] = "hanging lamp 3" },
            { ["object"] = "prop_oldlight_01b", ["price"] = 100, ["label"] = "wall lamp 4" },
            { ["object"] = "apa_mp_h_lit_floorlampnight_07", ["price"] = 100, ["label"] = "blue lamp" },
            { ["object"] = "apa_mp_h_ceiling_light_01", ["price"] = 100, ["label"] = "commercial" },
            { ["object"] = "apa_mp_h_ceiling_light_01_day", ["price"] = 100, ["label"] = "commercial 2" },
            { ["object"] = "apa_mp_h_ceiling_light_02", ["price"] = 100, ["label"] = "ceiling light" },
            { ["object"] = "apa_mp_h_ceiling_light_02_day", ["price"] = 100, ["label"] = "ceiling light 2" },
            { ["object"] = "ba_prop_battle_lights_ceiling_l_d", ["price"] = 100, ["label"] = "commercial 3" },
            { ["object"] = "ba_prop_battle_lights_ceiling_l_f", ["price"] = 100, ["label"] = "ceiling light 3" },
            { ["object"] = "ba_prop_battle_lights_ceiling_l_e", ["price"] = 100, ["label"] = "ceiling light 4" },
            { ["object"] = "apa_mp_h_floorlamp_a", ["price"] = 100, ["label"] = "floor lamp" },
            { ["object"] = "apa_mp_h_floorlamp_b", ["price"] = 100, ["label"] = "floor lamp 2" },
            { ["object"] = "apa_mp_h_floorlamp_c", ["price"] = 100, ["label"] = "floor lamp 3" },
            { ["object"] = "apa_mp_h_floor_lamp_int_08", ["price"] = 100, ["label"] = "floor lamp 4" },
            { ["object"] = "apa_mp_h_lampbulb_multiple_a", ["price"] = 100, ["label"] = "ceiling light 5" },
            { ["object"] = "apa_mp_h_lit_floorlamp_02", ["price"] = 100, ["label"] = "floor lamp 5" },
            { ["object"] = "apa_mp_h_lit_floorlampnight_14", ["price"] = 100, ["label"] = "floor lamp 6" },
            { ["object"] = "apa_mp_h_lit_floorlamp_03", ["price"] = 100, ["label"] = "floor lamp 7" },
            { ["object"] = "apa_mp_h_lit_floorlamp_06", ["price"] = 100, ["label"] = "floor lamp 8" },
            { ["object"] = "apa_mp_h_lit_floorlamp_10", ["price"] = 100, ["label"] = "floor lamp 9" },
            { ["object"] = "apa_mp_h_lit_floorlamp_13", ["price"] = 100, ["label"] = "floor lamp 10" },
            { ["object"] = "apa_mp_h_lit_floorlamp_17", ["price"] = 100, ["label"] = "floor lamp 11" },
            { ["object"] = "apa_mp_h_lit_lamptablenight_16", ["price"] = 100, ["label"] = "night light" },
            { ["object"] = "apa_mp_h_lit_lamptablenight_24", ["price"] = 100, ["label"] = "night light 2" },
            { ["object"] = "apa_mp_h_lit_lamptable_005", ["price"] = 100, ["label"] = "night light 3" },
            { ["object"] = "apa_mp_h_lit_lamptable_04", ["price"] = 100, ["label"] = "night light 4" },
            { ["object"] = "apa_mp_h_lit_lamptable_09", ["price"] = 100, ["label"] = "night light 5" },
            { ["object"] = "apa_mp_h_lit_lamptable_14", ["price"] = 100, ["label"] = "night light 6" },
            { ["object"] = "apa_mp_h_lit_lamptable_17", ["price"] = 100, ["label"] = "night light 7" },
            { ["object"] = "apa_mp_h_yacht_table_lamp_01", ["price"] = 100, ["label"] = "night light 8" },
        },
    },

    {
        category = "Tables",
        items = {
            { ["object"] = "v_res_d_coffeetable", ["price"] = 500, ["label"] = "Coffee Table 1" },
            { ["object"] = "v_res_d_roundtable", ["price"] = 500, ["label"] = "Round Table" },
            { ["object"] = "v_res_d_smallsidetable", ["price"] = 500, ["label"] = "Small Side Table" },
            { ["object"] = "v_res_fh_coftablea", ["price"] = 500, ["label"] = "Table A" },
            { ["object"] = "v_res_fh_coftableb", ["price"] = 500, ["label"] = "Table B" },
            { ["object"] = "v_res_fh_coftbldisp", ["price"] = 500, ["label"] = "Table C" },
            { ["object"] = "v_res_fh_diningtable", ["price"] = 500, ["label"] = "Dining Table" },
            { ["object"] = "v_res_j_coffeetable", ["price"] = 500, ["label"] = "Coffee Table 2" },
            { ["object"] = "v_res_j_lowtable", ["price"] = 500, ["label"] = "Low Table" },
            { ["object"] = "v_res_mdbedtable", ["price"] = 500, ["label"] = "Bed Table" },
            { ["object"] = "v_res_mddesk", ["price"] = 500, ["label"] = "Desk" },
            { ["object"] = "v_res_msidetblemod", ["price"] = 500, ["label"] = "Side Table" },
            { ["object"] = "v_res_m_console", ["price"] = 500, ["label"] = "Console Table" },
            { ["object"] = "v_res_m_dinetble_replace", ["price"] = 500, ["label"] = "Dining Table 2" },
            { ["object"] = "v_res_m_h_console", ["price"] = 500, ["label"] = "Console H Table" },
            { ["object"] = "v_res_m_stool", ["price"] = 500, ["label"] = "Stool?" },
            { ["object"] = "v_res_tre_sideboard", ["price"] = 500, ["label"] = "Sideboard Table" },
            { ["object"] = "v_res_tre_table2", ["price"] = 500, ["label"] = "Table 2" },
            { ["object"] = "v_res_tre_tvstand", ["price"] = 500, ["label"] = "Tv Table" },
            { ["object"] = "v_res_tre_tvstand_tall", ["price"] = 500, ["label"] = "Tv Table Tall" },
            { ["object"] = "v_med_p_coffeetable", ["price"] = 500, ["label"] = "Med Coffee Table" },
            { ["object"] = "v_med_p_desk", ["price"] = 500, ["label"] = "Med Desk" },
            { ["object"] = "prop_yacht_table_01", ["price"] = 100, ["label"] = "Yacht Table 1" },
            { ["object"] = "prop_yacht_table_02", ["price"] = 100, ["label"] = "Yacht Table 2" },
            { ["object"] = "prop_yacht_table_03", ["price"] = 100, ["label"] = "Yacht Table 3" },
            { ["object"] = "v_ret_csr_table", ["price"] = 100, ["label"] = "CSR Table" },
            { ["object"] = "v_res_mconsoletrad", ["price"] = 250, ["label"] = "high side table" },
            { ["object"] = "v_ilev_liconftable_sml", ["price"] = 500, ["label"] = "Office tabel" },
            { ["object"] = "v_ret_tablesml", ["price"] = 350, ["label"] = "Side table  marillaux" },
            { ["object"] = "apa_mp_h_yacht_coffee_table_02", ["price"] = 500, ["label"] = "koffie table Brown" },
            { ["object"] = "apa_mp_h_yacht_side_table_01", ["price"] = 300, ["label"] = "Side table Brown" },
            { ["object"] = "apa_mp_h_yacht_side_table_02", ["price"] = 300, ["label"] = "ronde Side table" },
            { ["object"] = "apa_mp_h_tab_sidelrg_04", ["price"] = 300, ["label"] = "ronde Side table 2" },
            { ["object"] = "v_club_vu_table", ["price"] = 300, ["label"] = "Coverd Table" },
            { ["object"] = "apa_mp_h_tab_sidelrg_07", ["price"] = 500, ["label"] = "koffieTable glas" },
            { ["object"] = "bkr_prop_weed_table_01b", ["price"] = 100, ["label"] = "clapTable" },
            { ["object"] = "ba_prop_int_trad_table", ["price"] = 300, ["label"] = "Stand Table" },
            { ["object"] = "apa_mp_h_str_sideboards_02", ["price"] = 750, ["label"] = "Side table glas" },
            { ["object"] = "apa_mp_h_yacht_coffee_table_01", ["price"] = 750, ["label"] = "koffieTable modern" },
            { ["object"] = "apa_mp_h_din_table_04", ["price"] = 1000, ["label"] = "dinner Table glas" },
            { ["object"] = "xm_prop_base_staff_desk_01", ["price"] = 5000, ["label"] = "desk + setup" },
            { ["object"] = "apa_mp_h_tab_coffee_07", ["price"] = 1000, ["label"] = "triangular side table" },
            { ["object"] = "apa_mp_h_tab_coffee_08", ["price"] = 1000, ["label"] = "white side table" },
            { ["object"] = "apa_mp_h_tab_sidelrg_01", ["price"] = 1000, ["label"] = "glass side table" },
            { ["object"] = "apa_mp_h_tab_sidelrg_02", ["price"] = 1000, ["label"] = "glass side table 2" },
            { ["object"] = "apa_mp_h_tab_sidesml_01", ["price"] = 1000, ["label"] = "folding table" },
            { ["object"] = "ba_prop_int_edgy_table_01", ["price"] = 500, ["label"] = "table marble" },
            { ["object"] = "ba_prop_int_edgy_table_02", ["price"] = 500, ["label"] = "table marble high" },
            { ["object"] = "apa_mp_h_tab_sidelrg_01", ["price"] = 1000, ["label"] = "glass side table" },
            { ["object"] = "xm_prop_lab_desk_01", ["price"] = 1000, ["label"] = "lab table" },
        }
    },

    {
        category = "Bathroom",
        items = {
            { ["object"] = "prop_ld_toilet_01", ["price"] = 100, ["label"] = "Toilet 1" },
            { ["object"] = "prop_toilet_01", ["price"] = 100, ["label"] = "Toilet 2" },
            { ["object"] = "prop_toilet_02", ["price"] = 100, ["label"] = "Toilet 3" },
            { ["object"] = "prop_sink_02", ["price"] = 100, ["label"] = "Sink 1" },
            { ["object"] = "prop_sink_04", ["price"] = 100, ["label"] = "Sink 2" },
            { ["object"] = "prop_sink_05", ["price"] = 100, ["label"] = "Sink 3" },
            { ["object"] = "prop_sink_06", ["price"] = 100, ["label"] = "Sink 4" },
            { ["object"] = "prop_soap_disp_01", ["price"] = 100, ["label"] = "Soap Dispenser" },
            { ["object"] = "prop_shower_rack_01", ["price"] = 100, ["label"] = "Shower Rack" },
            { ["object"] = "prop_handdry_01", ["price"] = 100, ["label"] = "Hand Dryer 1" },
            { ["object"] = "prop_handdry_02", ["price"] = 100, ["label"] = "Hand Dryer 2" },
            { ["object"] = "prop_towel_rail_01", ["price"] = 100, ["label"] = "Towel Rail 1" },
            { ["object"] = "prop_towel_rail_02", ["price"] = 100, ["label"] = "Towel Rail 2" },
            { ["object"] = "prop_towel_01", ["price"] = 100, ["label"] = "Towel 1" },
            { ["object"] = "v_res_mbtowel", ["price"] = 100, ["label"] = "Towel 2" },
            { ["object"] = "v_res_mbtowelfld", ["price"] = 100, ["label"] = "Towel 3" },
            { ["object"] = "v_res_mbath", ["price"] = 100, ["label"] = "Bath" },
            { ["object"] = "v_res_mbsink", ["price"] = 100, ["label"] = "Sink" },
            { ["object"] = "v_ilev_mm_faucet", ["price"] = 100, ["label"] = "tap" },
            { ["object"] = "v_res_tre_washbasket", ["price"] = 250, ["label"] = "Washing mand" },
            { ["object"] = "prop_toilet_soap_02", ["price"] = 100, ["label"] = "Tray Soap" },
            { ["object"] = "prop_bar_sink_01", ["price"] = 100, ["label"] = "Sink" },
            { ["object"] = "apa_mp_h_bathtub_01", ["price"] = 1000, ["label"] = "Bath" },
            { ["object"] = "prop_toilet_brush_01", ["price"] = 1000, ["label"] = "Brush" },
            { ["object"] = "prop_toilet_roll_01", ["price"] = 1000, ["label"] = "Toilet rol" },
            { ["object"] = "prop_toilet_roll_02", ["price"] = 1000, ["label"] = "Toilet rol 2" },
            { ["object"] = "prop_toilet_shamp_01", ["price"] = 1000, ["label"] = "Shampoo" },
            { ["object"] = "prop_toilet_shamp_02", ["price"] = 1000, ["label"] = "Shampoo 2" },
        }
    },

    {
        category = "Wall Decorations",
        items = {
            { ["object"] = "apa_p_h_acc_artwalll_02", ["price"] = 1000, ["label"] = "Painting whit marks" },
            { ["object"] = "v_ind_cs_toolboard", ["price"] = 500, ["label"] = "Tools" },
            { ["object"] = "apa_mp_stilts_bed_art", ["price"] = 300, ["label"] = "3d art" },
            { ["object"] = "ex_office_swag_paintings03", ["price"] = 1000, ["label"] = "Paintingen Ground" },
            { ["object"] = "ex_mp_h_acc_artwallm_03", ["price"] = 750, ["label"] = "abstract Painting" },
            { ["object"] = "ex_p_h_acc_artwallm_04", ["price"] = 750, ["label"] = "abstract Painting 2" },
            { ["object"] = "ex_p_h_acc_artwalll_01", ["price"] = 1250, ["label"] = "abstract Painting Big" },
            { ["object"] = "apa_p_h_acc_artwalll_03", ["price"] = 750, ["label"] = "abstract Painting 3" },
            { ["object"] = "ex_mp_h_acc_artwallm_02", ["price"] = 750, ["label"] = "abstract Painting 4" },
            { ["object"] = "ex_p_h_acc_artwallm_03", ["price"] = 750, ["label"] = "abstract Painting 5" },
            { ["object"] = "apa_mp_stilts_a_study_pics", ["price"] = 500, ["label"] = "Paintingen" },
            { ["object"] = "apa_mp_h_acc_artwallm_02", ["price"] = 750, ["label"] = "abstract Painting 6" },
            { ["object"] = "apa_mp_h_acc_artwalll_02", ["price"] = 750, ["label"] = "abstract Painting 7" },
            { ["object"] = "apa_mp_h_acc_artwallm_04", ["price"] = 750, ["label"] = "abstract Painting 8" },
            { ["object"] = "prop_dart_bd_cab_01", ["price"] = 250, ["label"] = "Dartboard" },
            { ["object"] = "prop_dart_bd_01", ["price"] = 250, ["label"] = "Dartboard 2" },
            { ["object"] = "hei_heist_acc_artwalll_01", ["price"] = 250, ["label"] = "wall deco 1" },
            { ["object"] = "hei_heist_acc_artgolddisc_01", ["price"] = 250, ["label"] = "wall deco 2" },
            { ["object"] = "hei_heist_acc_artgolddisc_02", ["price"] = 250, ["label"] = "wall deco 3" },
            { ["object"] = "hei_heist_acc_artgolddisc_03", ["price"] = 250, ["label"] = "wall deco 4" },
            { ["object"] = "hei_heist_acc_artgolddisc_04", ["price"] = 250, ["label"] = "wall deco 5" },
            { ["object"] = "v_ilev_ra_doorsafe", ["price"] = 250, ["label"] = "Luxury deco" },
        }
    },

    {
        category = "Kitchen",
        items = {
            { ["object"] = "prop_washer_01", ["price"] = 150, ["label"] = "Washer 1" },
            { ["object"] = "prop_washer_02", ["price"] = 150, ["label"] = "Washer 2" },
            { ["object"] = "prop_washer_03", ["price"] = 150, ["label"] = "Washer 3" },
            { ["object"] = "prop_washing_basket_01", ["price"] = 150, ["label"] = "Washing Basket" },
            { ["object"] = "v_res_fridgemoda", ["price"] = 150, ["label"] = "Fridge 1" },
            { ["object"] = "v_res_fridgemodsml", ["price"] = 150, ["label"] = "Fridge 2" },
            { ["object"] = "prop_fridge_01", ["price"] = 150, ["label"] = "Fridge 3" },
            { ["object"] = "prop_fridge_03", ["price"] = 150, ["label"] = "Fridge 4" },
            { ["object"] = "prop_cooker_03", ["price"] = 150, ["label"] = "Cooker" },
            { ["object"] = "prop_micro_01", ["price"] = 150, ["label"] = "Microwave 1" },
            { ["object"] = "prop_micro_02", ["price"] = 150, ["label"] = "Microwave 2" },
            { ["object"] = "prop_wok", ["price"] = 150, ["label"] = "Wok" },
            { ["object"] = "v_res_cakedome", ["price"] = 150, ["label"] = "Cake Plate" },
            { ["object"] = "v_res_fa_chopbrd", ["price"] = 150, ["label"] = "Chopping Board" },
            { ["object"] = "v_res_mutensils", ["price"] = 150, ["label"] = "Utensils" },
            { ["object"] = "v_res_pestle", ["price"] = 150, ["label"] = "Pestle" },
            { ["object"] = "v_ret_ta_paproll", ["price"] = 150, ["label"] = "PaperRoll 1" },
            { ["object"] = "v_ret_ta_paproll2", ["price"] = 150, ["label"] = "PaperRoll 2" },
            { ["object"] = "v_ret_fh_pot01", ["price"] = 150, ["label"] = "Pot 1" },
            { ["object"] = "v_ret_fh_pot02", ["price"] = 150, ["label"] = "Pot 2" },
            { ["object"] = "v_ret_fh_pot05", ["price"] = 150, ["label"] = "Pot 3" },
            { ["object"] = "prop_pot_03", ["price"] = 150, ["label"] = "Pot 4" },
            { ["object"] = "prop_pot_04", ["price"] = 150, ["label"] = "Pot 5" },
            { ["object"] = "prop_pot_05", ["price"] = 150, ["label"] = "Pot 6" },
            { ["object"] = "prop_pot_06", ["price"] = 150, ["label"] = "Pot 7" },
            { ["object"] = "prop_pot_rack", ["price"] = 150, ["label"] = "Pot Rack" },
            { ["object"] = "prop_kitch_juicer", ["price"] = 150, ["label"] = "Juicer" },
            { ["object"] = "v_res_ovenhobmod", ["price"] = 1000, ["label"] = "Stove" },
            { ["object"] = "v_res_mkniferack", ["price"] = 100, ["label"] = "Knive" },
            { ["object"] = "v_res_mchopboard", ["price"] = 100, ["label"] = "Cutting plank" },
            { ["object"] = "prop_cs_kitchen_cab_l", ["price"] = 750, ["label"] = "Kitchen Cupboard Wide" },
            { ["object"] = "prop_cs_kitchen_cab_r", ["price"] = 500, ["label"] = "Kitchen cupboard smal" },
            { ["object"] = "prop_cs_kitchen_cab_r", ["price"] = 500, ["label"] = "Kitchen cupboard smal" },
            { ["object"] = "v_res_tre_fridge", ["price"] = 500, ["label"] = "refrigerator" },
            { ["object"] = "apa_mp_h_acc_coffeemachine_01", ["price"] = 500, ["label"] = "coffee machine" },
            { ["object"] = "p_new_j_counter_02", ["price"] = 500, ["label"] = "Counter" },
            { ["object"] = "prop_bar_pump_09", ["price"] = 500, ["label"] = "Pump 1" },
            { ["object"] = "prop_bar_pump_01", ["price"] = 500, ["label"] = "Pump 2" },
            { ["object"] = "prop_chip_fryer", ["price"] = 500, ["label"] = "Chips fryer" },
            { ["object"] = "prop_cleaver", ["price"] = 500, ["label"] = "Knife" },
            { ["object"] = "prop_coffee_mac_02", ["price"] = 500, ["label"] = "coffee machine" },
            { ["object"] = "prop_coffee_mac_01", ["price"] = 500, ["label"] = "coffee machine 2" },
            { ["object"] = "prop_cs_fork", ["price"] = 500, ["label"] = "Fork" },
            { ["object"] = "prop_cs_sink_filler", ["price"] = 500, ["label"] = "Sink filler" },
            { ["object"] = "prop_toaster_01", ["price"] = 500, ["label"] = "Toaster" },
            { ["object"] = "prop_cs_plate_01", ["price"] = 500, ["label"] = "Plate" },
            { ["object"] = "prop_foodprocess_01", ["price"] = 500, ["label"] = "Food Process" },
            { ["object"] = "prop_food_sugarjar", ["price"] = 500, ["label"] = "Sugar Bowl" },
            { ["object"] = "prop_juice_dispenser", ["price"] = 500, ["label"] = "Dispencer" },
            { ["object"] = "prop_knife_stand", ["price"] = 500, ["label"] = "Knife holder" },
            { ["object"] = "prop_knife", ["price"] = 500, ["label"] = "Knife 2" },
            { ["object"] = "prop_micro_04", ["price"] = 500, ["label"] = "Microwave 4" },
            { ["object"] = "v_ret_fh_plate3", ["price"] = 500, ["label"] = "Plate 5" },
            { ["object"] = "v_ilev_tt_plate01", ["price"] = 500, ["label"] = "Plate 6" },
            { ["object"] = "v_res_fa_grater", ["price"] = 500, ["label"] = "Grater" },
            { ["object"] = "v_res_tt_pizzaplate", ["price"] = 500, ["label"] = "Pizza Plate" },
            { ["object"] = "v_ret_247_ketchup2", ["price"] = 500, ["label"] = "Ketchup" },
        }
    },

    {
        category = "Plants",
        items = {
            { ["object"] = "prop_fib_plant_01", ["price"] = 150, ["label"] = "Plant Fib" },
            { ["object"] = "v_corp_bombplant", ["price"] = 170, ["label"] = "Plant Bomb" },
            { ["object"] = "v_res_mflowers", ["price"] = 170, ["label"] = "Plant Flowers" },
            { ["object"] = "v_res_mvasechinese", ["price"] = 170, ["label"] = "Plant Chinese" },
            { ["object"] = "v_res_m_bananaplant", ["price"] = 170, ["label"] = "Plant Banana" },
            { ["object"] = "v_res_m_palmplant1", ["price"] = 170, ["label"] = "Plant Palm" },
            { ["object"] = "v_res_m_palmstairs", ["price"] = 170, ["label"] = "Plant Palm 2" },
            { ["object"] = "v_res_m_urn", ["price"] = 170, ["label"] = "Plant Urn" },
            { ["object"] = "v_res_rubberplant", ["price"] = 170, ["label"] = "Plant Rubber" },
            { ["object"] = "v_res_tre_plant", ["price"] = 170, ["label"] = "Plant" },
            { ["object"] = "v_res_tre_tree", ["price"] = 170, ["label"] = "Plant Tree" },
            { ["object"] = "v_med_p_planter", ["price"] = 170, ["label"] = "Planter" },
            { ["object"] = "v_ret_flowers", ["price"] = 100, ["label"] = "Flowers" },
            { ["object"] = "v_ret_j_flowerdisp", ["price"] = 100, ["label"] = "Flowers 1" },
            { ["object"] = "v_ret_j_flowerdisp_white", ["price"] = 100, ["label"] = "Flowers 2" },
            { ["object"] = "v_res_m_vasefresh", ["price"] = 300, ["label"] = "FlowerFase" },
            { ["object"] = "v_res_rosevasedead", ["price"] = 300, ["label"] = "Pink Fase 2" },
            { ["object"] = "v_res_exoticvase", ["price"] = 300, ["label"] = "FlowerFase 2" },
            { ["object"] = "v_res_rosevase", ["price"] = 300, ["label"] = "Pink Fase" },
            { ["object"] = "prop_pot_plant_6a", ["price"] = 300, ["label"] = "Hanging ende plant" },
            { ["object"] = "prop_pot_plant_02a", ["price"] = 300, ["label"] = "Flower pot" },
            { ["object"] = "apa_mp_h_acc_plant_palm_01", ["price"] = 300, ["label"] = "palm plant" },
            { ["object"] = "prop_plant_interior_05a", ["price"] = 300, ["label"] = "flower box" },
            { ["object"] = "prop_plant_int_01a", ["price"] = 300, ["label"] = "plant" },
            { ["object"] = "prop_plant_int_01b", ["price"] = 300, ["label"] = "plant 2" },
            { ["object"] = "prop_plant_int_02a", ["price"] = 300, ["label"] = "plant 3" },
            { ["object"] = "prop_plant_int_02b", ["price"] = 300, ["label"] = "plant 4" },
            { ["object"] = "prop_plant_int_03a", ["price"] = 300, ["label"] = "plant 5" },
            { ["object"] = "prop_plant_int_03b", ["price"] = 300, ["label"] = "plant 6" },
            { ["object"] = "prop_plant_int_03c", ["price"] = 300, ["label"] = "plant 7" },
            { ["object"] = "prop_plant_int_04a", ["price"] = 300, ["label"] = "plant 8" },
            { ["object"] = "prop_plant_int_04c", ["price"] = 300, ["label"] = "plant 9" },
            { ["object"] = "prop_plant_int_05b", ["price"] = 300, ["label"] = "flower box 2" },
            { ["object"] = "prop_pot_plant_01a", ["price"] = 300, ["label"] = "plant pot 2" },
            { ["object"] = "prop_pot_plant_01b", ["price"] = 300, ["label"] = "plant pot 3" },
            { ["object"] = "prop_pot_plant_01c", ["price"] = 300, ["label"] = "plant pot 4" },
            { ["object"] = "prop_pot_plant_01d", ["price"] = 300, ["label"] = "plant pot 5" },
            { ["object"] = "prop_pot_plant_01e", ["price"] = 300, ["label"] = "plant pot 6" },
            { ["object"] = "prop_pot_plant_03b", ["price"] = 300, ["label"] = "plant pot 7" },
            { ["object"] = "prop_pot_plant_05a", ["price"] = 300, ["label"] = "plant pot 8" },
            { ["object"] = "prop_pot_plant_05b", ["price"] = 300, ["label"] = "plant pot 9" },
            { ["object"] = "p_int_jewel_plant_01", ["price"] = 300, ["label"] = "plant pot 10" },
            { ["object"] = "p_int_jewel_plant_02", ["price"] = 300, ["label"] = "plant pot 11" },
            { ["object"] = "apa_mp_h_acc_vase_flowers_01", ["price"] = 300, ["label"] = "plant pot 12" },
            { ["object"] = "apa_mp_h_acc_vase_flowers_02", ["price"] = 300, ["label"] = "plant pot 13" },
            { ["object"] = "apa_mp_h_acc_vase_flowers_03", ["price"] = 300, ["label"] = "plant pot 14" },
            { ["object"] = "apa_mp_h_acc_vase_flowers_04", ["price"] = 300, ["label"] = "plant pot 15" },
        }
    },

    {
        category = "Detailing",
        items = {
            { ["object"] = "v_res_r_figcat", ["price"] = 300, ["label"] = "Fig Cat" },
			{ ["object"] = "v_res_r_figclown", ["price"] = 300, ["label"] = "Fig Clown" },
			{ ["object"] = "v_res_r_figauth2", ["price"] = 300, ["label"] = "Fig Auth" },
			{ ["object"] = "v_res_r_figfemale", ["price"] = 300, ["label"] = "Fig Female" },
			{ ["object"] = "v_res_r_figflamenco", ["price"] = 300, ["label"] = "Fig Flamenco" },
			{ ["object"] = "v_res_r_figgirl", ["price"] = 300, ["label"] = "Fig Girl" },
			{ ["object"] = "v_res_r_figgirlclown", ["price"] = 300, ["label"] = "Fig Girl Clown" },
			{ ["object"] = "v_res_r_figoblisk", ["price"] = 300, ["label"] = "Fig Oblisk" },
			{ ["object"] = "v_res_r_figpillar", ["price"] = 300, ["label"] = "Fig Pillar" },
			{ ["object"] = "v_res_r_teapot", ["price"] = 300, ["label"] = "Teapot" },
			{ ["object"] = "v_res_sculpt_dec", ["price"] = 300, ["label"] = "Sculpture 1" },
			{ ["object"] = "v_res_sculpt_decd", ["price"] = 300, ["label"] = "Sculpture 2" },
			{ ["object"] = "v_res_sculpt_dece", ["price"] = 300, ["label"] = "Sculpture 3" },
			{ ["object"] = "v_res_sculpt_decf", ["price"] = 300, ["label"] = "Sculpture 4" },
			{ ["object"] = "v_res_skateboard", ["price"] = 300, ["label"] = "Skateboard" },
			{ ["object"] = "v_res_sketchpad", ["price"] = 300, ["label"] = "Sketchpad" },
			{ ["object"] = "v_res_tissues", ["price"] = 300, ["label"] = "Tissues" },
			{ ["object"] = "v_res_tre_basketmess", ["price"] = 300, ["label"] = "Basket" },
			{ ["object"] = "v_res_tre_bin", ["price"] = 300, ["label"] = "Bin" },
			{ ["object"] = "v_res_tre_cushiona", ["price"] = 300, ["label"] = "Cushion 1" },
			{ ["object"] = "v_res_tre_cushionb", ["price"] = 300, ["label"] = "Cushion 2" },
			{ ["object"] = "v_res_tre_cushionc", ["price"] = 300, ["label"] = "Cushion 3" },
			{ ["object"] = "v_res_tre_cushiond", ["price"] = 300, ["label"] = "Cushion 4" },
			{ ["object"] = "v_res_tre_cushnscuzb", ["price"] = 300, ["label"] = "Cushion 5" },
			{ ["object"] = "v_res_tre_cushnscuzd", ["price"] = 300, ["label"] = "Cushion 6" },
			{ ["object"] = "v_res_tre_fruitbowl", ["price"] = 300, ["label"] = "Fruitbowl" },
			{ ["object"] = "v_med_p_sideboard", ["price"] = 300, ["label"] = "Sideboard" },
			{ ["object"] = "prop_idol_01", ["price"] = 100, ["label"] = "Idol 1" },
			{ ["object"] = "v_res_r_fighorsestnd", ["price"] = 300, ["label"] = "Figurine black horse" },
			{ ["object"] = "v_res_r_fighorse", ["price"] = 300, ["label"] = "Figurine big horse" },
			{ ["object"] = "v_res_r_figdancer", ["price"] = 300, ["label"] = "Figurine dancer" },
			{ ["object"] = "v_res_fa_idol02", ["price"] = 300, ["label"] = "olifanten Figurine" },
			{ ["object"] = "v_res_m_statue", ["price"] = 300, ["label"] = "Sculpture" },
			{ ["object"] = "v_20_ornaeagle", ["price"] = 300, ["label"] = "Figurine adelaar" },
			{ ["object"] = "v_med_p_vaseround", ["price"] = 300, ["label"] = "Fase round" },
			{ ["object"] = "ex_mp_h_acc_vase_05", ["price"] = 300, ["label"] = "Fase Violet" },
			{ ["object"] = "apa_mp_h_acc_dec_head_01", ["price"] = 300, ["label"] = "Art work" },
			{ ["object"] = "apa_mp_h_acc_dec_sculpt_02", ["price"] = 300, ["label"] = "Art work 2" },
			{ ["object"] = "ex_mp_h_acc_dec_plate_02", ["price"] = 300, ["label"] = "Art work 3" },
			{ ["object"] = "apa_mp_h_acc_bowl_ceramic_01", ["price"] = 300, ["label"] = "schaal" },
			{ ["object"] = "apa_mp_h_acc_dec_plate_01", ["price"] = 300, ["label"] = "Scale 2" },
			{ ["object"] = "apa_mp_h_acc_vase_01", ["price"] = 300, ["label"] = "vase black and white" },
			{ ["object"] = "apa_mp_h_acc_vase_02", ["price"] = 300, ["label"] = "vase red" },
			{ ["object"] = "apa_mp_h_acc_vase_05", ["price"] = 300, ["label"] = "vase" },
			{ ["object"] = "apa_mp_h_acc_vase_06", ["price"] = 300, ["label"] = "vase black and white 2" },
        }
    },

    {
        category = "Doors", -- All from Base Game.
        items = {
            { ["object"] = "v_ilev_fa_frontdoor", ["price"] = 300, ["type"] = "door", ["label"] = "White Door" },
            { ["object"] = "v_ilev_247_offdorr", ["price"] = 300, ["type"] = "door", ["label"] = "24/7 Wooden Door" },
            { ["object"] = "v_ilev_arm_secdoor", ["price"] = 300, ["type"] = "door", ["label"] = "Security Door" },
            { ["object"] = "v_ilev_bank4door01", ["price"] = 300, ["type"] = "door", ["label"] = "Bank Glass Door" },
            { ["object"] = "v_ilev_bk_gate", ["price"] = 300, ["type"] = "door", ["label"] = "Fancy Metal Gate" },
            { ["object"] = "v_ilev_cbankcountdoor01", ["price"] = 300, ["type"] = "door",  ["label"] = "Bank Office Door" },
            { ["object"] = "v_ilev_cd_door", ["price"] = 300, ["type"] = "door", ["label"] = "Wooden Door with Glass" },
            { ["object"] = "v_ilev_cm_door1", ["price"] = 300, ["type"] = "door", ["label"] = "Light Blue Door" },
            { ["object"] = "v_ilev_dev_door", ["price"] = 300, ["type"] = "door", ["label"] = "Black House Door" },
            { ["object"] = "v_ilev_door_orangesolid", ["price"] = 300, ["type"] = "door", ["label"] = "Orange Solid Door" },
            { ["object"] = "v_ilev_fa_backdoor", ["price"] = 300, ["type"] = "door", ["label"] = "Dirty Glass Door" },
            { ["object"] = "v_ilev_gangsafedoor", ["price"] = 300, ["type"] = "door", ["label"] = "Gang Safe Door" },
            { ["object"] = "v_ilev_gc_door02", ["price"] = 300, ["type"] = "door", ["label"] = "Office Door" },
            { ["object"] = "v_ilev_janitor_frontdoor", ["price"] = 300, ["type"] = "door",  ["label"] = "White Mesh Door" },
            { ["object"] = "v_ilev_rc_door1", ["price"] = 300, ["type"] = "door", ["label"] = "Yellow Fire Door" },
            { ["object"] = "v_ilev_roc_door2", ["price"] = 300, ["type"] = "door", ["label"] = "Solid Red Door" },
            { ["object"] = "v_ilev_sol_off_door01", ["price"] = 300, ["type"] = "door", ["label"] = "Solid Wooden Door" },
            { ["object"] = "v_ilev_stad_fdoor", ["price"] = 300, ["type"] = "door", ["label"] = "Glass Door with Rails" },
            { ["object"] = "v_ilev_tort_door", ["price"] = 300, ["type"] = "door", ["label"] = "Door with Danger Sign" },
            { ["object"] = "v_ilev_trevtraildr", ["price"] = 300, ["type"] = "door", ["label"] = "Trailer Door" },
            { ["object"] = "prop_cs_fridge_door", ["price"] = 300, ["type"] = "door", ["label"] = "Fridge Door" },
            { ["object"] = "prop_artgallery_dl", ["price"] = 300, ["type"] = "door", ["label"] = "White Art Gallery Door" },
            { ["object"] = "prop_bh1_09_mp_l", ["price"] = 300, ["type"] = "door",  ["label"] = "Weazel Plaza Door" },
            { ["object"] = "prop_bh1_48_backdoor_l", ["price"] = 300, ["type"] = "door", ["label"] = "Black Glass Door" },
            { ["object"] = "prop_casino_door_01r", ["price"] = 300, ["type"] = "door", ["label"] = "Casino Glass Door" },
            { ["object"] = "prop_cs4_11_door", ["price"] = 300, ["type"] = "door", ["label"] = "White Door with Small Window" },
            { ["object"] = "prop_cs6_03_door_r", ["price"] = 300, ["type"] = "door", ["label"] = "Antique Wooden Door" },
            { ["object"] = "prop_grumandoor_r", ["price"] = 300, ["type"] = "door", ["label"] = "Golden Snake Door" },
            { ["object"] = "prop_motel_door_09", ["price"] = 300, ["type"] = "door", ["label"] = "Motel Door" },
            { ["object"] = "prop_fnclink_03gate5", ["price"] = 300, ["type"] = "door", ["label"] = "Chainlink Fence" },
        }
    },

    {
        category = "Walls",
        items = {
            { ["object"] = "ps_wall_aqua", ["price"] = 1000, ["label"] = "Aqua Wall" },
            { ["object"] = "ps_wall_black", ["price"] = 1000, ["label"] = "Black Wall" },
            { ["object"] = "ps_wall_green", ["price"] = 1000, ["label"] = "Green Wall" },
            { ["object"] = "ps_wall_grey", ["price"] = 1000, ["label"] = "Grey Wall" },
            { ["object"] = "ps_wall_purple", ["price"] = 1000, ["label"] = "Purple Wall" },
            { ["object"] = "ps_wall_red", ["price"] = 1000, ["label"] = "Red Wall" },
            { ["object"] = "ps_wall_white", ["price"] = 1000, ["label"] = "White Wall" },
            { ["object"] = "ps_wall_yellow", ["price"] = 1000, ["label"] = "Yellow Wall" },
            { ["object"] = "ps_wall_wall", ["price"] = 1000, ["label"] = "Brick Wall" },
        }
    },

    {
        category = "Misc",
        items = {
            { ["object"] = "v_corp_facebeanbag", ["price"] = 100, ["label"] = "Bean Bag 1" },
            { ["object"] = "v_res_cherubvase", ["price"] = 2500, ["label"] = "White Vase" },
            { ["object"] = "v_res_d_paddedwall", ["price"] = 300, ["label"] = "Padded Wall" },
            { ["object"] = "v_res_d_ramskull", ["price"] = 300, ["label"] = "Item" },
            { ["object"] = "v_res_d_whips", ["price"] = 300, ["label"] = "Whips" },
            { ["object"] = "v_res_fashmag1", ["price"] = 300, ["label"] = "Mags" },
            { ["object"] = "v_res_fashmagopen", ["price"] = 300, ["label"] = "Mags Open" },
            { ["object"] = "v_res_fa_magtidy", ["price"] = 300, ["label"] = "Mag Tidy" },
            { ["object"] = "v_res_fa_yogamat002", ["price"] = 300, ["label"] = "Yoga Mat 1" },
            { ["object"] = "v_res_fa_yogamat1", ["price"] = 300, ["label"] = "Yoga Mat 2" },
            { ["object"] = "v_res_fh_aftershavebox", ["price"] = 300, ["label"] = "Aftershave" },
            { ["object"] = "v_res_fh_flowersa", ["price"] = 300, ["label"] = "Flowers" },
            { ["object"] = "v_res_fh_fruitbowl", ["price"] = 300, ["label"] = "Fruitbowl" },
            { ["object"] = "v_res_fh_laundrybasket", ["price"] = 300, ["label"] = "Laundry Basket" },
            { ["object"] = "v_res_fh_pouf", ["price"] = 300, ["label"] = "Pouf" },
            { ["object"] = "v_res_fh_sculptmod", ["price"] = 300, ["label"] = "Sculpture" },
            { ["object"] = "v_res_j_magrack", ["price"] = 300, ["label"] = "Mag Rack" },
            { ["object"] = "v_res_jewelbox", ["price"] = 300, ["label"] = "Jewel Box" },
            { ["object"] = "v_res_mbbin", ["price"] = 300, ["label"] = "Bin" },
            { ["object"] = "v_res_mbowlornate", ["price"] = 300, ["label"] = "Ornate Bowl" },
            { ["object"] = "v_res_mbronzvase", ["price"] = 300, ["label"] = "Bronze Vase" },
            { ["object"] = "v_res_mchalkbrd", ["price"] = 300, ["label"] = "Chalk Board" },
            { ["object"] = "v_res_mddresser", ["price"] = 300, ["label"] = "Dresser" },
            { ["object"] = "v_res_mplinth", ["price"] = 300, ["label"] = "Linth" },
            { ["object"] = "v_res_mp_ashtrayb", ["price"] = 300, ["label"] = "Ashtray" },
            { ["object"] = "v_res_m_candle", ["price"] = 300, ["label"] = "Candle" },
            { ["object"] = "v_res_m_candlelrg", ["price"] = 300, ["label"] = "Candle Large" },
            { ["object"] = "v_res_m_kscales", ["price"] = 300, ["label"] = "Scales" },
            { ["object"] = "v_res_tt_bedpillow", ["price"] = 300, ["label"] = "Bed Pillow" },
            { ["object"] = "v_med_cor_whiteboard", ["price"] = 300, ["label"] = "whiteboard" },
            { ["object"] = "prop_ashtray_01", ["price"] = 100, ["label"] = "asbak black" },
            { ["object"] = "v_ret_fh_ashtray", ["price"] = 100, ["label"] = "asbak stone" },
            { ["object"] = "v_24_wdr_mesh_rugs", ["price"] = 500, ["label"] = "Rag" },
            { ["object"] = "apa_mp_h_acc_rugwooll_04", ["price"] = 500, ["label"] = "Rug 2" },
            { ["object"] = "ex_mp_h_acc_rugwoolm_04", ["price"] = 500, ["label"] = "Rug 3" },
            { ["object"] = "apa_mp_h_acc_rugwoolm_03", ["price"] = 500, ["label"] = "Rug 4" },
            { ["object"] = "apa_mp_h_acc_rugwooll_03", ["price"] = 500, ["label"] = "Rug 5" },
            { ["object"] = "apa_mp_h_acc_rugwoolm_04", ["price"] = 500, ["label"] = "Rug 6" },
            { ["object"] = "v_club_rack", ["price"] = 500, ["label"] = "kledingrek" },
            { ["object"] = "prop_a4_pile_01", ["price"] = 100, ["label"] = "A4 Pile" },
            { ["object"] = "prop_amb_40oz_03", ["price"] = 100, ["label"] = "40 oz" },
            { ["object"] = "prop_amb_beer_bottle", ["price"] = 100, ["label"] = "Beer" },
            { ["object"] = "prop_aviators_01", ["price"] = 100, ["label"] = "Aviators" },
            { ["object"] = "prop_barry_table_detail", ["price"] = 100, ["label"] = "Detail" },
            { ["object"] = "prop_beer_box_01", ["price"] = 100, ["label"] = "Beers" },
            { ["object"] = "prop_binoc_01", ["price"] = 100, ["label"] = "Binoculars" },
            { ["object"] = "prop_blox_spray", ["price"] = 100, ["label"] = "Blox Spray" },
            { ["object"] = "prop_bongos_01", ["price"] = 100, ["label"] = "Bongos" },
            { ["object"] = "prop_bong_01", ["price"] = 100, ["label"] = "Bong" },
            { ["object"] = "prop_boombox_01", ["price"] = 100, ["label"] = "Boombox" },
            { ["object"] = "prop_bowl_crisps", ["price"] = 100, ["label"] = "Bowl Crisps" },
            { ["object"] = "prop_candy_pqs", ["price"] = 100, ["label"] = "Candy" },
            { ["object"] = "prop_carrier_bag_01", ["price"] = 100, ["label"] = "Carrier bag" },
            { ["object"] = "prop_ceramic_jug_01", ["price"] = 100, ["label"] = "Ceramic Jug" },
            { ["object"] = "prop_cigar_pack_01", ["price"] = 100, ["label"] = "Cigar Pack 1" },
            { ["object"] = "prop_cigar_pack_02", ["price"] = 100, ["label"] = "Cigar Pack 2" },
            { ["object"] = "prop_cs_beer_box", ["price"] = 100, ["label"] = "Beer Box 2" },
            { ["object"] = "prop_cs_binder_01", ["price"] = 100, ["label"] = "Binder" },
            { ["object"] = "prop_cs_bs_cup", ["price"] = 100, ["label"] = "Cup" },
            { ["object"] = "prop_cs_cashenvelope", ["price"] = 100, ["label"] = "Envelope" },
            { ["object"] = "prop_cs_champ_flute", ["price"] = 100, ["label"] = "Flute" },
            { ["object"] = "prop_cs_duffel_01", ["price"] = 100, ["label"] = "Duffel Bag" },
            { ["object"] = "prop_cs_dvd", ["price"] = 50, ["label"] = "DVD" },
            { ["object"] = "prop_cs_dvd_case", ["price"] = 50, ["label"] = "DVD Case" },
            { ["object"] = "prop_cs_film_reel_01", ["price"] = 100, ["label"] = "Film Reel" },
            { ["object"] = "prop_cs_ilev_blind_01", ["price"] = 100, ["label"] = "Blind" },
            { ["object"] = "p_ld_bs_bag_01", ["price"] = 100, ["label"] = "Bag" },
            { ["object"] = "prop_cs_ironing_board", ["price"] = 100, ["label"] = "Ironing Board" },
            { ["object"] = "prop_cs_katana_01", ["price"] = 100, ["label"] = "Katana" },
            { ["object"] = "prop_cs_kettle_01", ["price"] = 100, ["label"] = "Kettle" },
            { ["object"] = "prop_cs_lester_crate", ["price"] = 100, ["label"] = "Crate" },
            { ["object"] = "prop_cs_petrol_can", ["price"] = 100, ["label"] = "Petrol Can" },
            { ["object"] = "prop_cs_sack_01", ["price"] = 100, ["label"] = "Sack" },
            { ["object"] = "prop_cs_script_bottle_01", ["price"] = 100, ["label"] = "Script Bottle" },
            { ["object"] = "prop_cs_script_bottle", ["price"] = 100, ["label"] = "Script Bottle 2" },
            { ["object"] = "prop_cs_street_binbag_01", ["price"] = 100, ["label"] = "Bin Bag" },
            { ["object"] = "prop_cs_whiskey_bottle", ["price"] = 100, ["label"] = "Whiskey Bottle" },
            { ["object"] = "prop_sh_bong_01", ["price"] = 100, ["label"] = "Bong" },
            { ["object"] = "prop_peanut_bowl_01", ["price"] = 100, ["label"] = "Peanuts" },
            { ["object"] = "prop_tumbler_01", ["price"] = 100, ["label"] = "Tumbler" },
            { ["object"] = "prop_weed_bottle", ["price"] = 100, ["label"] = "Weed koker" },
            { ["object"] = "p_cs_lighter_01", ["price"] = 100, ["label"] = "Lighter" },
            { ["object"] = "p_cs_papers_01", ["price"] = 100, ["label"] = "Rolling papers" },
            { ["object"] = "v_res_d_dildo_f", ["price"] = 100, ["label"] = "dildo Black" },
            { ["object"] = "v_res_d_dildo_c", ["price"] = 100, ["label"] = "dildo white" },
            { ["object"] = "v_res_d_dildo_a", ["price"] = 100, ["label"] = "Mommy's toy" },
            { ["object"] = "prop_champ_cool", ["price"] = 100, ["label"] = "Champagne cooler" },
            { ["object"] = "prop_champ_01b", ["price"] = 100, ["label"] = "champagnebottle" },
            { ["object"] = "prop_champ_flute", ["price"] = 100, ["label"] = "champagneglas" },
            { ["object"] = "ba_prop_club_champset", ["price"] = 300, ["label"] = "champagneset" },
            { ["object"] = "v_res_fa_candle01", ["price"] = 100, ["label"] = "candle blue" },
            { ["object"] = "v_res_fa_candle02", ["price"] = 100, ["label"] = "candle red" },
            { ["object"] = "v_res_fa_candle03", ["price"] = 100, ["label"] = "candle black" },
            { ["object"] = "v_res_fa_candle04", ["price"] = 100, ["label"] = "candle small" },
            { ["object"] = "v_med_bottles2", ["price"] = 100, ["label"] = "Chemicals" },
            { ["object"] = "v_res_desktidy", ["price"] = 100, ["label"] = "Office stuf" },
            { ["object"] = "v_med_p_notebook", ["price"] = 100, ["label"] = "Note's" },
            { ["object"] = "bkr_prop_weed_dry_01a", ["price"] = 100, ["label"] = "mountain of weed" },
            { ["object"] = "ba_prop_battle_trophy_battler", ["price"] = 100, ["label"] = "fist trofee" },
            { ["object"] = "ba_prop_battle_trophy_no1", ["price"] = 100, ["label"] = "ster trofee" },
            { ["object"] = "prop_golf_bag_01c", ["price"] = 100, ["label"] = "Golf bag" },
            { ["object"] = "hei_heist_kit_bin_01", ["price"] = 100, ["label"] = "Garbage can" },
            { ["object"] = "prop_wooden_barrel", ["price"] = 100, ["label"] = "wooden vat" },
            { ["object"] = "bkr_prop_bkr_cash_scatter_01", ["price"] = 100, ["label"] = "scatter" },
            { ["object"] = "bkr_prop_bkr_cashpile_01", ["price"] = 100, ["label"] = "Cash" },
            { ["object"] = "bkr_prop_bkr_cash_roll_01", ["price"] = 100, ["label"] = "Cash roll" },
            { ["object"] = "bkr_prop_bkr_cashpile_04", ["price"] = 100, ["label"] = "pile of cash" },
            { ["object"] = "bkr_prop_weed_bigbag_open_01a", ["price"] = 100, ["label"] = "Weed open bag" },
            { ["object"] = "bkr_prop_weed_bigbag_02a", ["price"] = 100, ["label"] = "Weed bag 2" },
            { ["object"] = "bkr_prop_weed_bigbag_03a", ["price"] = 100, ["label"] = "Weed bag 3" },
            { ["object"] = "bkr_prop_weed_scales_01a", ["price"] = 100, ["label"] = "scales" },
            { ["object"] = "bkr_prop_weed_smallbag_01a", ["price"] = 100, ["label"] = "small bag" },
            { ["object"] = "prop_gold_bar", ["price"] = 100, ["label"] = "Gold Bar" },
            { ["object"] = "beerrow_world", ["price"] = 100, ["label"] = "beer bottles" },
            { ["object"] = "beerrow_local", ["price"] = 100, ["label"] = "beer bottles 2" },
            { ["object"] = "p_cs_bbbat_01", ["price"] = 100, ["label"] = "Bat" },
            { ["object"] = "p_cs_cuffs_02_s", ["price"] = 100, ["label"] = "handcuffs" },
            { ["object"] = "p_cs_joint_02", ["price"] = 100, ["label"] = "Joint" },
            { ["object"] = "p_ing_coffeecup_01", ["price"] = 100, ["label"] = "Coffee mug" },
            { ["object"] = "p_tumbler_cs2_s", ["price"] = 100, ["label"] = "Tumbler" },
            { ["object"] = "prop_turkey_leg_01", ["price"] = 100, ["label"] = "chicken leg" },
            { ["object"] = "prop_amb_donut", ["price"] = 100, ["label"] = "Donut" },
            { ["object"] = "prop_donut_02", ["price"] = 100, ["label"] = "Donut 2" },
            { ["object"] = "prop_bar_shots", ["price"] = 100, ["label"] = "Bar shots" },
            { ["object"] = "prop_bar_stirrers", ["price"] = 100, ["label"] = "Bar stirrers" },
            { ["object"] = "prop_beer_amopen", ["price"] = 100, ["label"] = "Beer open" },
            { ["object"] = "prop_beer_blr", ["price"] = 100, ["label"] = "Beer 1" },
            { ["object"] = "prop_beer_logger", ["price"] = 100, ["label"] = "Beer 2" },
            { ["object"] = "prop_beer_stzopen", ["price"] = 100, ["label"] = "Beer 3" },
            { ["object"] = "prop_bikerset", ["price"] = 100, ["label"] = "Biker Set" },
            { ["object"] = "prop_bottle_brandy", ["price"] = 100, ["label"] = "Bottle brandy" },
            { ["object"] = "prop_tequila_bottle", ["price"] = 100, ["label"] = "Tequila bottle" },
            { ["object"] = "prop_tequila", ["price"] = 100, ["label"] = "Tequila" },
            { ["object"] = "prop_bottle_cognac", ["price"] = 100, ["label"] = "Bottle of Cognac" },
            { ["object"] = "prop_bottle_macbeth", ["price"] = 100, ["label"] = "Bottle of Macbeth" },
            { ["object"] = "prop_brandy_glass", ["price"] = 100, ["label"] = "Brandy Glass" },
            { ["object"] = "prop_mug_01", ["price"] = 100, ["label"] = "Mug 1" },
            { ["object"] = "prop_mug_02", ["price"] = 100, ["label"] = "Mug 2" },
            { ["object"] = "prop_mug_03", ["price"] = 100, ["label"] = "Mug 3" },
            { ["object"] = "prop_optic_vodka", ["price"] = 100, ["label"] = "Vodka" },
            { ["object"] = "prop_optic_jd", ["price"] = 100, ["label"] = "JD" },
            { ["object"] = "prop_pint_glass_01", ["price"] = 100, ["label"] = "Pint Glass" },
            { ["object"] = "prop_pizza_box_03", ["price"] = 100, ["label"] = "Pizza box" },
            { ["object"] = "prop_sandwich_01", ["price"] = 100, ["label"] = "Sandwich" },
            { ["object"] = "prop_cava", ["price"] = 100, ["label"] = "Cava" },
            { ["object"] = "prop_drink_redwine", ["price"] = 100, ["label"] = "Red wine" },
            { ["object"] = "vodkarow", ["price"] = 100, ["label"] = "Vodka Row" },
            { ["object"] = "prop_cherenkov_02", ["price"] = 100, ["label"] = "Cherenkov" },
            { ["object"] = "prop_cherenkov_03", ["price"] = 100, ["label"] = "Cherenkov 2" },
            { ["object"] = "prop_cocktail_glass", ["price"] = 100, ["label"] = "Cocktail glass" },
            { ["object"] = "prop_cs_bottle_opener", ["price"] = 100, ["label"] = "Fles opener" },
            { ["object"] = "prop_food_bs_chips", ["price"] = 100, ["label"] = "Chips" },
            { ["object"] = "prop_cs_burger_01", ["price"] = 100, ["label"] = "Burger" },
            { ["object"] = "prop_cs_hand_radio", ["price"] = 100, ["label"] = "Hand radio" },
            { ["object"] = "prop_cs_hotdog_01", ["price"] = 100, ["label"] = "Hotdog" },
            { ["object"] = "prop_cs_milk_01", ["price"] = 100, ["label"] = "Milk" },
            { ["object"] = "prop_cs_panties", ["price"] = 100, ["label"] = "Panties" },
            { ["object"] = "prop_cs_steak", ["price"] = 100, ["label"] = "Meat" },
            { ["object"] = "v_ret_csr_bin", ["price"] = 100, ["label"] = "CSR Bin" },
            { ["object"] = "v_ret_fh_wickbskt", ["price"] = 100, ["label"] = "Basket" },
            { ["object"] = "v_ret_gc_bag01", ["price"] = 100, ["label"] = "GC Bag 1" },
            { ["object"] = "v_ret_gc_bag02", ["price"] = 100, ["label"] = "GC Bag 2" },
            { ["object"] = "v_ret_gc_bin", ["price"] = 100, ["label"] = "GC Bin" },
            { ["object"] = "v_ret_gc_cashreg", ["price"] = 100, ["label"] = "Cash Register" },
            { ["object"] = "v_ret_gc_chair01", ["price"] = 100, ["label"] = "GC Chair 01" },
            { ["object"] = "v_ret_gc_chair02", ["price"] = 100, ["label"] = "GC Chair 02" },
            { ["object"] = "v_ret_gc_clock", ["price"] = 100, ["label"] = "Clock" },
            { ["object"] = "v_ret_hd_prod1_", ["price"] = 100, ["label"] = "Prod 1" },
            { ["object"] = "v_ret_hd_prod2_", ["price"] = 100, ["label"] = "Prod 2" },
            { ["object"] = "v_ret_hd_prod3_", ["price"] = 100, ["label"] = "Prod 3" },
            { ["object"] = "v_ret_hd_prod4_", ["price"] = 100, ["label"] = "Prod 4" },
            { ["object"] = "v_ret_hd_prod5_", ["price"] = 100, ["label"] = "Prod 5" },
            { ["object"] = "v_ret_hd_prod6_", ["price"] = 100, ["label"] = "Prod 6" },
            { ["object"] = "v_ret_hd_unit1_", ["price"] = 100, ["label"] = "HD Unit 1" },
            { ["object"] = "v_ret_hd_unit2_", ["price"] = 100, ["label"] = "HD Unit 2" },
            { ["object"] = "v_ret_ml_fridge02", ["price"] = 100, ["label"] = "Fridge" },
            { ["object"] = "v_ret_ps_bag_01", ["price"] = 100, ["label"] = "Bag 1" },
            { ["object"] = "v_ret_ps_bag_02", ["price"] = 100, ["label"] = "Bag 2" },
            { ["object"] = "v_ret_ta_book1", ["price"] = 100, ["label"] = "Book 1" },
            { ["object"] = "v_ret_ta_book2", ["price"] = 100, ["label"] = "Book 2" },
            { ["object"] = "v_ret_ta_book3", ["price"] = 100, ["label"] = "Book 3" },
            { ["object"] = "v_ret_ta_book4", ["price"] = 100, ["label"] = "Book 4" },
            { ["object"] = "v_ret_ta_camera", ["price"] = 100, ["label"] = "Cam" },
            { ["object"] = "v_ret_ta_firstaid", ["price"] = 100, ["label"] = "First Aid" },
            { ["object"] = "v_ret_ta_hero", ["price"] = 100, ["label"] = "Hero" },
            { ["object"] = "v_ret_ta_mag1", ["price"] = 100, ["label"] = "Mag 1" },
            { ["object"] = "v_ret_ta_mag2", ["price"] = 100, ["label"] = "Mag 2" },
            { ["object"] = "v_ret_ta_skull", ["price"] = 100, ["label"] = "Skull" },
            { ["object"] = "prop_acc_guitar_01", ["price"] = 100, ["label"] = "Guitar" },
            { ["object"] = "prop_amb_handbag_01", ["price"] = 100, ["label"] = "Handbag" },
            { ["object"] = "prop_attache_case_01", ["price"] = 100, ["label"] = "Case" },
            { ["object"] = "prop_big_bag_01", ["price"] = 100, ["label"] = "Big Bag" },
            { ["object"] = "prop_bonesaw", ["price"] = 100, ["label"] = "Bonesaw" },
            { ["object"] = "prop_cs_fertilizer", ["price"] = 100, ["label"] = "Fertilizer" },
            { ["object"] = "prop_cs_shopping_bag", ["price"] = 100, ["label"] = "Shopping Bag" },
            { ["object"] = "prop_cs_vial_01", ["price"] = 100, ["label"] = "Vial" },
            { ["object"] = "prop_defilied_ragdoll_01", ["price"] = 100, ["label"] = "Ragdoll" },
            { ["object"] = "v_res_fa_book03", ["price"] = 100, ["label"] = "boek kamasutra" },
            { ["object"] = "prop_weight_rack_02", ["price"] = 500, ["label"] = "dumbbellrek" },
            { ["object"] = "prop_weight_bench_02", ["price"] = 500, ["label"] = "Couchdrukset" },
            { ["object"] = "prop_tool_broom", ["price"] = 100, ["label"] = "Broom" },
            { ["object"] = "prop_fire_exting_2a", ["price"] = 100, ["label"] = "Fire extinguisher" },
            { ["object"] = "v_res_vacuum", ["price"] = 100, ["label"] = "vacuum cleaner" },
            { ["object"] = "v_ret_gc_fan", ["price"] = 100, ["label"] = "Fan" },
            { ["object"] = "prop_paint_stepl01b", ["price"] = 100, ["label"] = "ladder" },
            { ["object"] = "bkr_prop_weed_bucket_01b", ["price"] = 100, ["label"] = "Fertilizer" },
            { ["object"] = "v_club_vusnaketank", ["price"] = 500, ["label"] = "terrarium" },
            { ["object"] = "prop_pooltable_02", ["price"] = 1500, ["label"] = "poolTable" },
            { ["object"] = "prop_pool_rack_02", ["price"] = 100, ["label"] = "poolcues" },
            { ["object"] = "v_club_vu_deckcase", ["price"] = 1000, ["label"] = "dj set" },
            { ["object"] = "v_corp_servercln", ["price"] = 1000, ["label"] = "serverrack" },
            { ["object"] = "prop_dummy_01", ["price"] = 100, ["label"] = "Dummy" },
            { ["object"] = "prop_egg_clock_01", ["price"] = 100, ["label"] = "Egg Clock" },
            { ["object"] = "prop_el_guitar_01", ["price"] = 100, ["label"] = "E Guitar 1" },
            { ["object"] = "prop_el_guitar_02", ["price"] = 100, ["label"] = "E Guitar 2" },
            { ["object"] = "prop_el_guitar_03", ["price"] = 100, ["label"] = "E Guitar 2" },
            { ["object"] = "prop_feed_sack_01", ["price"] = 100, ["label"] = "Feed Sack" },
            { ["object"] = "prop_floor_duster_01", ["price"] = 100, ["label"] = "Floor Duster" },
            { ["object"] = "prop_fruit_basket", ["price"] = 100, ["label"] = "Fruit Basket" },
            { ["object"] = "prop_f_duster_02", ["price"] = 100, ["label"] = "Duster" },
            { ["object"] = "prop_grapes_02", ["price"] = 100, ["label"] = "Grapes" },
            { ["object"] = "prop_hotel_clock_01", ["price"] = 100, ["label"] = "Hotel Clock" },
            { ["object"] = "prop_idol_case_01", ["price"] = 100, ["label"] = "Idol Case" },
            { ["object"] = "prop_jewel_02a", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_jewel_02b", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_jewel_02c", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_jewel_03a", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_jewel_03b", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_jewel_04a", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_jewel_04b", ["price"] = 100, ["label"] = "Jewels" },
            { ["object"] = "prop_j_disptray_01", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_01b", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_02", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_03", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_04", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_04b", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_05", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_j_disptray_05b", ["price"] = 100, ["label"] = "Display Tray" },
            { ["object"] = "prop_ld_greenscreen_01", ["price"] = 100, ["label"] = "Green Screen" },
            { ["object"] = "prop_ld_handbag", ["price"] = 100, ["label"] = "Handbag" },
            { ["object"] = "prop_ld_jerrycan_01", ["price"] = 100, ["label"] = "Jerry Can" },
            { ["object"] = "prop_ld_keypad_01", ["price"] = 100, ["label"] = "Keypad 1" },
            { ["object"] = "prop_ld_keypad_01b", ["price"] = 100, ["label"] = "Keypad 2" },
            { ["object"] = "prop_ld_suitcase_01", ["price"] = 100, ["label"] = "Suitcase 1" },
            { ["object"] = "prop_ld_suitcase_02", ["price"] = 100, ["label"] = "Suitcase 2" },
            { ["object"] = "hei_p_attache_case_shut", ["price"] = 100, ["label"] = "Suitcase 3"},
            { ["object"] = "prop_mr_rasberryclean", ["price"] = 100, ["label"] = "Rasberry Clean" },
            { ["object"] = "prop_paper_bag_01", ["price"] = 100, ["label"] = "Paper Bag" },
            { ["object"] = "prop_shopping_bags01", ["price"] = 100, ["label"] = "Shopping Bags" },
            { ["object"] = "prop_shopping_bags02", ["price"] = 100, ["label"] = "Shopping Bags 2" },
            { ["object"] = "prop_yoga_mat_01", ["price"] = 100, ["label"] = "Yoga Mat 1" },
            { ["object"] = "prop_yoga_mat_02", ["price"] = 100, ["label"] = "Yoga Mat 2" },
            { ["object"] = "prop_yoga_mat_03", ["price"] = 100, ["label"] = "Yoga Mat 3" },
            { ["object"] = "p_ld_sax", ["price"] = 100, ["label"] = "Sax" },
            { ["object"] = "p_ld_soc_ball_01", ["price"] = 100, ["label"] = "SOCCER Ball" },
            { ["object"] = "p_watch_01", ["price"] = 100, ["label"] = "Watch 1" },
            { ["object"] = "p_watch_02", ["price"] = 100, ["label"] = "Watch 2" },
            { ["object"] = "p_watch_03", ["price"] = 100, ["label"] = "Watch 3" },
            { ["object"] = "p_watch_04", ["price"] = 100, ["label"] = "Watch 4" },
            { ["object"] = "p_watch_05", ["price"] = 100, ["label"] = "Watch 5" },
            { ["object"] = "p_watch_06", ["price"] = 100, ["label"] = "Watch 6" },
            { ["object"] = "apa_mp_h_acc_candles_01", ["price"] = 100, ["label"] = "candle" },
            { ["object"] = "apa_mp_h_acc_candles_02", ["price"] = 100, ["label"] = "candle 2" },
            { ["object"] = "apa_mp_h_acc_candles_04", ["price"] = 100, ["label"] = "candle 3" },
            { ["object"] = "apa_mp_h_acc_candles_06", ["price"] = 100, ["label"] = "candle 4" },
            { ["object"] = "apa_mp_h_acc_fruitbowl_02", ["price"] = 100, ["label"] = "fruit bowl" },
            { ["object"] = "apa_mp_h_acc_tray_01", ["price"] = 100, ["label"] = "thingies" },
            { ["object"] = "prop_bskball_01", ["price"] = 100, ["label"] = "Basketball" },
            { ["object"] = "prop_cs_wrench", ["price"] = 100, ["label"] = "Wrench" },
            { ["object"] = "prop_cs_bowie_knife", ["price"] = 100, ["label"] = "Bowie Knife" },
            { ["object"] = "prop_w_me_hatchet", ["price"] = 100, ["label"] = "Hatchet" },
        }
    }

}
