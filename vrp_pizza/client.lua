local ainceputmunca = false 
vRPCpizza = {}
Tunnel.bindInterface("cevanou",vRPCpizza) 
Proxy.addInterface("cevanou",vRPCpizza)
vRPSpizza = Tunnel.getInterface("cevanou","cevanou")
vRP = Proxy.getInterface("vRP")
local angajare = function()
while not ainceputmunca == true do 
cas = 1000
local p = GetEntityCoords(PlayerPedId())
local i = (vector3(545.02984619141,110.64935302734,96.570297241211))
local q = PlayerPedId();
local dist= #(p-i)
if dist < 1.5 then 
        cas= 5
     DrawText3D(545.02984619141,110.64935302734,96.570297241211,"Apasa [E] pt a te angaja")
if IsControlJustPressed(1,51)   then 
angajare()

end
end
Citizen.Wait(cas)
end
end
local preiacomenzi = function()
while true do cas = 1000 local p = GetEntityCoords(PlayerPedId())
    local i = (vector3(543.34094238281,113.4211730957,96.570411682129))
    local q = PlayerPedId();
    local dist= #(p-i)
    if dist <1.5  and ainceputmunca == true then 
cas = 5
DrawText3D(543.25939941406,113.29320526123,96.570381164551,"Apasa [E] pt a incepe livrarile")
if IsControlJustPressed(1,51) then
    vRPSpizza.dampulamare25()
end
end
Citizen.Wait(cas)
end
end
function ainceputmunca2()
    ainceputmunca = true
end
local cloackroom = function()
    while true do cas=1000 local p = GetEntityCoords(PlayerPedId())
        local i = (vector3(548.841796875,115.30123901367,96.570388793945))
        local q = PlayerPedId()
        local dist =#(p-i)
        if dist<1.5 and  ainceputmunca == true then 
            cas= 5
            DrawText3D(548.841796875,115.30123901367,96.570388793945,"Apasa [E] pt a te imbraca")   
            if IsControlPressed(1,51) then 
                haine()
            end
        end
        Citizen.Wait(cas)
end
end
local pizzamaker = function()
while true do
    cas = 1000
    local p = GetEntityCoords(PlayerPedId())
    local q = PlayerId()
    local i = (vector3(546.52075195312,120.8208694458,96.5703125))
    local dist =#(p-i)
    if dist<1.5  and ainceputmunca == true then 
       
        cas= 5
        DrawText3D(546.52075195312,120.8208694458,96.5703125,"Apasa [E] pt a prepara pizza")   
        if IsControlJustPressed(1,51) then
            makepizza()
            
        end
    end
Citizen.Wait(cas)
end
end
Citizen.CreateThread(pizzamaker)
Citizen.CreateThread(angajare)
Citizen.CreateThread(preiacomenzi)
Citizen.CreateThread(cloackroom)


