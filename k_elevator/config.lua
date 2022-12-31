Config = {}

Config.checkForUpdates = true -- Check for Updates?

Config.Elevators = {
    PoliceElevator = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(604.791015625,5.4566602706909,97.87239074707), -- Coords, if you're new; last number is heading
            heading = 70.65, -- Heading of how will spawn on floor
            title = 'Prova', -- Title 
            description = 'Prova', -- Description
            target = {
                width = 5,
                length = 4
            },
            groups = {-- Job locks
                'police',
            },
        },
        [2] = {
            coords = vec3(566.10424804688,4.7738885879517,103.23313140869), -- Coords, if you're new; last number is heading
            heading = 252.84,
            title = 'Eliporto',
            description = '',
            target = {
            width = 5,
            length = 4
            },
            groups = {
                'police',
            },
        },
    },
}
       --[[ EmsElevator = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(-1846.1505126953,-342.55709838867,41.248359680176), -- Coords, if you're new; last number is heading
            heading = 70.65, -- Heading of how will spawn on floor
            title = 'Piano -2', -- Title 
            description = '', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
            groups = {-- Job locks
                'ambulance',
            },
        },
        [2] = {
            coords = vec3(-1843.0905761719,-341.73645019531,49.452831268311), -- Coords, if you're new; last number is heading
            heading = 252.84,
            title = 'Piano 0',
            description = '',
            target = {
            width = 5,
            length = 4
            },
            groups = {
                'ambulance',
            },
        },
        [3] = {
            coords = vec3(-1835.4781494141,-338.7802734375,58.157905578613), -- Coords, if you're new; last number is heading
            heading = 252.84,
            title = 'Piano 1',
            description = '',
            target = {
            width = 5,
            length = 4
            },
            groups = {
                'ambulance',
            },
        },
    },
} --]]