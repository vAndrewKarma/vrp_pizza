

    local Tunnel = module("vrp", "lib/Tunnel")
    local Proxy = module("vrp", "lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    vRPclient = Tunnel.getInterface("vRP","cevanou")
    vRPSpizza = {}
    Tunnel.bindInterface("cevanou",vRPSpizza)
    Proxy.addInterface("cevanou",vRPSpizza)
    vRPCpizza = Tunnel.getInterface("cevanou","cevanou",{})  
function vRPSpizza.dampulamare()
local player= vRP.getUserId({source})
local bani = math.random(1,5)
if player then 
local pizza = vRP.getInventoryItemAmount({player, "water"})
if pizza >0 then 
   vRP.giveMoney({player,bani}) 
vRP.tryGetInventoryItem({player,"water",1})   
end
end
end
 function vRPSpizza.dampulamare25()
    local player= vRP.getUserId({source})
    if player then 
    local pizza = vRP.getInventoryItemAmount({player, "water"})
    if pizza >0 then 
   TriggerClientEvent("pizza:arepizza",source)
    end
    end
 end
RegisterServerEvent("suntsmecher:pizza")
AddEventHandler("suntsmecher:pizza",function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local new_weight = vRP.getInventoryWeight({user_id})+vRP.getItemWeight({"water"})
    if new_weight <= vRP.getInventoryMaxWeight({user_id}) then
    local pula = 1
        vRP.giveInventoryItem({user_id,"water",pula/pula,true})
    else
        vRPclient.notify(player,{"~r~Inventory: ~w~Nu ai spatiu in inventar",2500,2})
    end
end)