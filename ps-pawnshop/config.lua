Config = {}

Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

Config.Eye = "true" -- If you are using the QB Target then change this to true.

Config.Locations = { 
    ["stations"] = {
        [1] = {label = ('Pawn Shop'), coords = vector4(173.81, -1320.04, 29.35, 250.09)}
	}
}

Config.Locations1 = { 
    ["stations1"] = {
        [1] = {label = ('Pawn Shop'), coords = vector4(-312.36, 6190.01, 31.56, 234.8)}
	}
}

Config.Items = {
label = "Shop",
    slots = 8,
    items = {
        [1] = {
            name = "phone",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "radio",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "laptop",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "smalltv",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "mediumtv",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "bigtv",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "nightvision",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "burnerphone",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 8,
        },

	}
	
}