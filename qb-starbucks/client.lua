local QBCore = exports['qb-core']:GetCoreObject()

--- Cenas e coisas para o Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "starbucks" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent("qb-starbucks:client:Servico", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

----------------------------------------------
------------------ Menus ---------------------

RegisterNetEvent('qb-starbucks:client:MenuBolos', function()
    exports['qb-menu']:openMenu({
        {
            header = "Cakes Bean Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "🥐​ Chocolate Croissant",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCroasantChocolate",
            }
        },
        {
            header = "🥐 Egg Croissant",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCroasantOvo",
            }
        },
        {
            header = "🧁​ Chocolate Muffin",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarMuffinChocolate",
            }
        },
        {
            header = "🧁​ Vanilla Cupcake",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCupcakeBaunilha",
            }
        },
        {
            header = "🧁​ Straberry Cupcake",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCupcakeMorango",
            }
        },
        {
            header = "🥞​ Nutela Pancake",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarNutelaPancake",
            }
        },
        {
            header = "🥞​ Honey Pancake",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarPanquecaMel",
            }
        },
    })
end)

RegisterNetEvent('qb-starbucks:client:MenuCafes', function()
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "​☕​ Coffee",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCafe",
            }
        },
        {
            header = "​☕​ Latte",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarLatte",
            }
        },
        {
            header = "​☕​ Cappuccino",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCappuccino",
            }
        },
        {
            header = "​☕​ Mocha",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarMocha",
            }
        },
        {
            header = "​🍵​​ Tea",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCha",
            }
        },
    })
end)

RegisterNetEvent('qb-starbucks:client:MenuBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "🥤 Coke",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarCola",
            }
        },
        {
            header = "🥛​ Water",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarAgua",
            }
        },
        {
            header = "🥤 Lemon Ice Tea",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarIceTeaLimao",
            }
        },
        {
            header = "🥤 Peach Ice Tea",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarIceTeaPessego",
            }
        },
        {
            header = "🥤 Sprunk",
            txt = "",
            params = {
                event = "qb-starbucks:client:PegarSprunk",
            }
        },
    })
end)

------------- Pegar comidas/bebidas ----------

RegisterNetEvent('qb-starbucks:client:PegarCroasantChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CROISSANT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "croasant-chocolate", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCroasantOvo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CROISSANT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "croasant-ovo", 5)
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarMuffinChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MUFFIN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "muffin-chocolate", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCupcakeBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "cupcake-baunilha", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCupcakeMorango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "cupcake-morango", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarNutelaPancake', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "panqueca-nutela", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarPanquecaMel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "panqueca-mel", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A COFFEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-cafe", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarLatte', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A LATTE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-latte", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCappuccino', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CAPPUCCINO...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-cappuccino", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarMocha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MOCHA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-mocha", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-cha", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarCola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING COKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-cola", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarAgua', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING WATER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-agua", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarIceTeaLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A ICE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "ice-tea-limao", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarIceTeaPessego', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A ICE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "ice-tea-pessego", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('qb-starbucks:client:PegarSprunk', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING SPRUNK...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('qb-starbucks:server:AddItem', "bean-sprunk", 5)
	TriggerServerEvent('qb-starbucks:server:Tirar10dolars')
    end)
end)

----------------------------------------------
----------- Comer cenas e coisas -------------

RegisterNetEvent('qb-starbucks:client:BeberCafe', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'DRINKING COFFEE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        --TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(5, 15))
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 25))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('qb-starbucks:client:ComerBolo', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING CAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 15))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('qb-starbucks:client:ComerPanquecas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 15))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('qb-starbucks:client:BeberRefrigerantes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
                TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(40, 60))
        --TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        --TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
----------- Lavar Mãos -------------------------

RegisterNetEvent('qb-starbucks:client:LavarMaos', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    QBCore.Functions.Progressbar('name_here', 'WASHING HANDS...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
------------ Blip no mapa ----------------------

Citizen.CreateThread(function()
    bean = AddBlipForCoord(-632.21, 235.11, 81.88)
    SetBlipSprite (bean, 120)
    SetBlipDisplay(bean, 2)
    SetBlipScale  (bean, 1.2)
    SetBlipAsShortRange(bean, true)
    SetBlipColour(bean, 0)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Starbucks")
    EndTextCommandSetBlipName(bean)
end) 

-----------------------------------------------
------------- Tabuleiros ----------------------

RegisterNetEvent('qb-starbucks:client:Tabuleiro1', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean1", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro2', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean2", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro3', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean3", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro4', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean4", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro5', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean5", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro6', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean6")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean6", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro7', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean7")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean7", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro8', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean8")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean8", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro9', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean9")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean9", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro10', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean10")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean10", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro11', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean11")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean11", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('qb-starbucks:client:Tabuleiro12', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean12")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean11", {
        maxweight = Config.StashWeight,
        slots = Config.StashSlots,
    })
end)

----------------------------------------------
-------- Passar Faturas ----------------------

RegisterNetEvent("qb-starbucks:client:FaturarPlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("qb-starbucks:server:FaturarPlayer", dialog.id, dialog.amount)
    end
end)
