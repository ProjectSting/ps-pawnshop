local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = true
PlayerJob = {}

local onDuty = false
------------Duty Targets----------
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("pawnshopDuty", vector3(165.68, -1317.54, 29.34), 0.5, 0.5,{
        name = "pawnshopDuty",
		heading = 335,
		debugPoly = false,
        minZ=25.54,
        maxZ=29.54
    }, {
        options = {
            {
                event = "ps-pawnshop:dutymenu",
                icon = "far fa-clipboard",
                label = "Options",
                job = "pawnshop",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("pawnshopDuty1", vector3(-1220.85, -1428.53, 4.37), 0.5, 0.5,{
        name = "pawnshopDuty1",
		heading = 305,
		debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    }, {
        options = {
            {
                event = "ps-pawnshop:dutymenu",
                icon = "far fa-clipboard",
                label = "Options",
                job = "pawnshop",
            },
        },
        distance = 1.5
    })    
    exports['qb-target']:AddBoxZone("pawnshopDuty2", vector3(-1260.45, -1422.68, 4.37), 0.6, 0.6,{
        name = "pawnshopDuty2",
		heading = 305,
		debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    }, {
        options = {
            {
                event = "ps-pawnshop:dutymenu",
                icon = "far fa-clipboard",
                label = "Options",
                job = "pawnshop",
            },
        },
        distance = 1.5
    }) 
	---------Package Targets-----------
    exports['qb-target']:AddBoxZone("pawnshop", vector3(172.68, -1319.95, 29.35), 1, 4,{
        name = "pawnshop",
        heading = 245,
        debugPoly = false,
        minZ=25.55,
        maxZ=29.55
    },{
        options = {
            {
                event = "ps-pawnshop:Package",
                icon = "far fa-clipboard",
                label = "Your Order",
            },
        },
        distance = 1.5
    })   	
    exports['qb-target']:AddBoxZone("pawnshop1", vector3(-1218.8, -1431.29, 4.37), 0.5, 0.2,{
        name = "pawnshop1",
        heading = 200,
        debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    },{
        options = {
            {
                event = "ps-pawnshop:Package",
                icon = "far fa-clipboard",
                label = "Your Order",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("pawnshop2", vector3(-1263.17, -1424.83, 4.37), 0.5, 0.2,{
        name = "pawnshop2",
        heading = 295,
        debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    },{
        options = {
            {
                event = "ps-pawnshop:Package",
                icon = "far fa-clipboard",
                label = "Your Order",
            },
        },
        distance = 1.5
    })   
    ------------Customermenu Targets--------------
    exports['qb-target']:AddBoxZone("pawnshop_Customermenu", vector3(-1198.7, -1519.82, 4.37), 2, 1,{
        name = "pawnshop_Customermenu",
        heading = 305,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:pawnshopMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
	exports['qb-target']:AddBoxZone("pawnshop_Customermenu1", vector3(-1201.71, -1515.92, 4.37), 2, 1,{
        name = "pawnshop_Customermenu1",
        heading = 125,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:pawnshopMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
	exports['qb-target']:AddBoxZone("pawnshop_Customermenu2", vector3(-1218.57, -1433.54, 4.37), 1, 2,{
        name = "pawnshop_Customermenu2",
        heading = 305,
        debugPoly = false,
        minZ=2.17,
        maxZ=6.17
    },{
        options = {
            {
                event = "qb-menu:pawnshopMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
	exports['qb-target']:AddBoxZone("pawnshop_Customermenu3", vector3(-1214.74, -1430.36, 4.37), 1, 2,{
        name = "pawnshop_Customermenu3",
        heading = 305,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:pawnshopMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("pawnshop_Customermenu4", vector3(-1265.51, -1424.98, 4.37), 1, 2,{
        name = "pawnshop_Customermenu4",
        heading = 215,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:pawnshopMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("pawnshop_Customermenu5", vector3(-1262.34, -1428.87, 4.37), 1, 2,{
        name = "pawnshop_Customermenu5",
        heading = 215,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:pawnshopMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })	
	---------Charge Customer Targets---------
    exports['qb-target']:AddBoxZone("pawnshop_Bill", vector3(173.69, -1317.65, 29.35), 0.5, 0.5,{
        name = "pawnshop_Bill",
        heading = 345,
        debugPoly = false,
        minZ=25.75,
        maxZ=29.75
    },{
        options = {
            {
                event = "ps-pawnshop:bill",
                icon = "far fa-clipboard",
                label = "Charge Customer",
                job = "pawnshop",
            },
        },
        distance = 1.5
    
    })   
    -----------Shop Items Target-------------
    exports['qb-target']:AddBoxZone("pawnshop_Orders", vector3(-1199.88, -1515.12, 4.38), 1, 0.5,{
        name = "pawnshop_Orders",
        heading = 125,
        debugPoly = false,
        minZ=0.97,
        maxZ=4.97
    },{
        options = {
            {
                event = "ps-pawnshop:MaskOrders",
                icon = "far fa-clipboard",
                label = "Order Items",
                job = "pawnshop",
            },
        },
        distance = 1.5
    
    })   
    -------------Storage-------------
    exports['qb-target']:AddBoxZone("pawnshop_Storage", vector3(170.94, -1319.19, 29.35), 3, 0.4,{
        name = "pawnshop_Storage",
        heading = 330,
        debugPoly = false,
        minZ=26.95,
        maxZ=30.95
    },{
        options = {
            {
                event = "ps-pawnshop:Storage",
                icon = "far fa-clipboard",
                label = "Storage",
                job = "pawnshop",
            
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("pawnshop_Storageone", vector3(172.44, -1316.27, 29.35), 3, 0.4,{
        name = "pawnshop_Storage0ne",
        heading = 335,
        debugPoly = false,
        minZ=26.35,
        maxZ=30.35
    },{
        options = {
            {
                event = "ps-pawnshop:Storage0ne",
                icon = "far fa-clipboard",
                label = "Storage",
                job = "pawnshop",

            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("pawnshop_Storagetwo", vector3(-1261.35, -1424.27, 4.37), 1, 2,{
        name = "pawnshop_Storagetwo",
        heading = 310,
        debugPoly = false,
        minZ=1.77,
        maxZ=5.77
    },{
        options = {
            {
                event = "ps-pawnshop:Storagetwo",
                icon = "far fa-clipboard",
                label = "Storage",
                job = "pawnshop",
            },
        },
        distance = 1.5
    
    })

end)

-- MENU - CONTCT ---

RegisterNetEvent('ps-pawnshop:dutymenu', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Manage Options",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "Clock On or Off",
           txt = "Duty On/Off",
           params = {
               event = "ps-pawnshop:DutyB", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "• Manage Business",
           txt = "Manage pawnshop",
           params = {
               event = "qb-bossmenu:client:OpenMenu", 
               args = {
                   number = 1,
               }
           }
       },
       {
           header = "• Order Items",
           txt = "Order Items",
           params = {
               event = "ps-pawnshop:shop", 
               args = {
                   number = 2,
               }
           }
       },	   
       {
           header = "• Hit Emergency Panic Alarm",
           txt = " Hit Alarm",
           params = {
               event = "ps-pawnshop:PawnsAlarm", 
               args = {
                   number = 2,
               }
           }
       },
	   {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 3,
               }
           }
       },
   })
   end)

RegisterNetEvent('ps-pawnshop:MaskOrders', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Orders",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Order Items",
           txt = "Order Items",
           params = {
               event = "ps-pawnshop:shop", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   })
   end)

RegisterNetEvent('ps-pawnshop:Storage', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Mask Menu",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-pawnshop:Storage", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   
   })
   end)

RegisterNetEvent('ps-pawnshop:Storage0ne', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Mask Menu",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-pawnshop:Storage0ne", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   
   })
   end)

RegisterNetEvent('ps-pawnshop:Storagetwo', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Mask Menu",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-pawnshop:Storagetwo", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   
   })
   end)

RegisterNetEvent('qb-menu:pawnshopMenu', function(data)
    
	exports['qb-menu']:openMenu({
        {
            
            header = "| Masks Menu |",
            isMenuHeader = true, 
        },
        {
            
            header = "•1 Skull Mask",
            txt = "",
            isMenuHeader = true,
        },
        {
            
            header = "•2 Monkey Mask",
            txt = "",
            isMenuHeader = true,
        },  
        {
            
            header = "•3 Balaclava",
            txt = "",
            isMenuHeader = true,
        },
        {
            
            header = "•4 Scarecrow Mask",
            txt = "",
           isMenuHeader = true,
        },
        {
            
            header = "•5 Pig Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•6 Hockey Mask",
            txt = "",
            isMenuHeader = true,
        },
        {
            
            header = "•7 Red Sock Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•8 Clown Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•9 Long Nose",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•10 Tshirtmask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•11 Bag Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•12 Gorilla Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
            
            header = "•12 Horse Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
            
            header = "•13 Uinicorn Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
            
            header = "•14 No Skin Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 10,
               }
           }
       },
    })
    end)

RegisterNetEvent("ps-pawnshop:PawnsAlarm", function()
        TriggerServerEvent('police:server:policeAlert', 'Emergency Button went off at Limeys!')
        QBCore.Functions.Notify("Police will be there soon!", "success")
        print "police alert successful"
end)

-- Till Stuff --
RegisterNetEvent("ps-pawnshop:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Cash Register",
        submitText = "Charge Customer",
        inputs = {
            {
                type = 'number',
                name = 'id',
                text = 'Citizen Id',
                isRequired = true

            },
            {
                type = 'number',
                name = 'amount',
                text = '$0.00',
                isRequired = true

            }
        }
    })
    if bill then
        if not bill.id or not bill.amount then return end
        TriggerServerEvent("ps-pawnshop:bill:player", bill.id, bill.amount)
    end
end)

-- Drawtext -
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


Citizen.CreateThread(function()
    if Config.Eye == "false" then
    local PlayerData = QBCore.Functions.GetPlayerData()
    while true do
        local sleep = 100
        if isLoggedIn then
            local pos = GetEntityCoords(PlayerPedId())
            if PlayerJob.name == 'pawnshop' then
                for k, v in pairs(Config.Locations["duty"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            if onDuty then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Get off duty")
                            else
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~r~E~w~ - Get on duty")
                            end
                            if IsControlJustReleased(0, 38) then
                                onDuty = not onDuty
                                TriggerServerEvent("QBCore:ToggleDuty")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "on/off duty")
                        end
                    end
                end

                for k, v in pairs(Config.Locations["mask"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Make Mask")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-pawnshop:Storage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Make mask")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["Orders"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Open Orders")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-pawnshop:shop")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Open Orders")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["storage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Open Storage")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-pawnshop:Storage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Open Storage")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["cashregister"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Cash Register")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-pawnshop:bill")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Cash Register")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["garage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Garage")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("garage:pawnshopGarage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Garage")
                            end  
                        end
                    end
                end
            else
                Citizen.Wait(2000)
            end
            
            for k, v in pairs(Config.Locations["package"]) do
                if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Package")
                            if IsControlJustReleased(0, 38) then
                                TriggerEvent("ps-pawnshop:package")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "Package")
                        end  
                end
            end

        end
        Citizen.Wait(sleep)
    end
end
end)