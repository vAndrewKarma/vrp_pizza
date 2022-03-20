function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
local hasanim = false
RegisterNUICallback("amterminatpizza", function()
    SetNuiFocus(false, false)
    DoScreenFadeOut(500)
    Wait(3000)
    SetFocusEntity(PlayerPedId())
    RenderScriptCams(0, 1, 2000, 1, 0)
    Wait(2000)
        DoScreenFadeIn(500)
        exports['mythic_progbar']:Progress({
            name = "MrNewb_poster_action",
            duration = 10500,
            label = "Prepari Pizza",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
        })
        local ped = PlayerPedId()
        TaskStartScenarioInPlace(ped, "PROP_HUMAN_PARKING_METER", 0, true)
        Wait(10500)
        ClearPedTasks(ped)
       TriggerServerEvent("suntsmecher:pizza")
end)
RegisterNUICallback("close", function()
    SetNuiFocus(false, false)
end)
--de aici schimbi locatiile 
local randomak = {
    vector3(41.2160, 6291.3403, 31.2445),
    vector3(2672.5979, 1670.1613, 24.4886),
    vector3(2734.4402, 2782.9216, 35.8469),
    vector3(3504.1655, 3678.3823, 33.8705),
    vector3(812.0580, 2361.1912, 51.0148),
    vector3(1708.8717, 4803.0303, 41.7924),
    vector3(1377.0773, 3597.6069, 34.8902),
    vector3(-2345.8738, 3245.0051, 32.8276),
    vector3(-145.2133, -1012.3617, 27.2751),
}

--de aici schimbi locatiile 
RegisterNUICallback("incepemlivrare",function()
    SetNuiFocus(false, false)
    Spawncar()  
  local   ampulamare = true
    Citizen.CreateThread(function()
    if ampulamare then 
        asdasdsadgsagdsagdg()
    while true do 
    Wait(0)
    local Coords = GetEntityCoords(PlayerPedId())
        local random = math.random(1, #randomak)
        local posr = vector3(randomak[random])
		local dist = #(Coords - posr)
        if dist < 2 and ampulamare then
        while dist < 2 and ampulamare do
            Wait(1)
            ShowFloatingHelpNotification("Apasa [E] pentru a lasa comanda", posr)
            if IsControlJustPressed(1,51) and ampulamare then
               
                final()
                ampulamare = false    
    RemoveBlip(blip2)  
            
            end
        end
    end
end
    end
end)
end)
function ShowFloatingHelpNotification(msg, pos)
    AddTextEntry('hs', msg)
    SetFloatingHelpTextWorldPosition(1, pos.x, pos.y, pos.z)
    SetFloatingHelpTextStyle(2, 1, 25, -1, 3, 0)
    BeginTextCommandDisplayHelp('hs')
    EndTextCommandDisplayHelp(2, false, false, -1)
end
function asdasdsadgsagdsagdg()
    local random = math.random(1, #randomak)
	blip2 = AddBlipForCoord(randomak[random])
    SetBlipRoute(blip2, true)
	AddTextEntry('MYBLIP', 'Place of delivery')
	BeginTextCommandSetBlipName('MYBLIP')
	EndTextCommandSetBlipName(blip2)
end
RegisterNUICallback("lasamanc",function()
    SetNuiFocus(false, false)
    vRPSpizza.dampulamare()
end)
RegisterNUICallback("schimbahainele", function(data, cb)
    local ped = "s_m_y_chef_01"
     local pedhash = GetHashKey(ped)
     RequestModel(pedhash)
     while not HasModelLoaded(pedhash)
     do RequestModel(pedhash)
         Citizen.Wait(0)
     end	  
     SetPlayerModel(PlayerId(), pedhash)
 end)
RegisterNUICallback("start23",function()
    SetNuiFocus(false, false)
    ainceputmunca2()
    print(ainceputmunca)
end)
RegisterNUICallback("close", function()
    SetNuiFocus(false, false)
end)
RegisterNetEvent("pizza:arepizza")
AddEventHandler("pizza:arepizza",function()
openalege()
end)
function openalege()
    SendNUIMessage({openalege = true})
    SetNuiFocus(true, true)
end
function final()
    SendNUIMessage({final = true})
    SetNuiFocus(true, true)
end
function angajare()
    SendNUIMessage({openmenu = true})
    SetNuiFocus(true, true)
end
function haine()
    SendNUIMessage({haineimbracat = true})
    SetNuiFocus(true, true)
end
function Spawncar()
    ClearAreaOfVehicles(598.4794921875,95.66316986084,92.905982971191, 50.0, false, false, false, false, false)
    SetEntityAsNoLongerNeeded(trailer)
    DeleteVehicle(trailer)
    SetEntityAsNoLongerNeeded(car)
    DeleteVehicle(car)
    RemoveBlip(deliveryblip)   
    local vehiclehash = GetHashKey("faggio")
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
      RequestModel(vehiclehash)
      Citizen.Wait(0)
    end
    local ped= PlayerPedId()
    car = CreateVehicle(vehiclehash, 598.4794921875,95.66316986084,92.905982971191, 0.0, true, false)
    SetEntityAsMissionEntity(car, true, true) 
    SetPedIntoVehicle(ped, car,-1)
    
end
function makepizza()
SetNuiFocus(true, true)
SendNUIMessage({ makepizza = true
})
end