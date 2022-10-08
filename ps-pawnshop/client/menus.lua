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
    exports['qb-target']:AddBoxZone("pawnshopDuty1", vector3(-304.41, 6181.76, 31.56), 0.5, 0.5,{
        name = "pawnshopDuty1",
		heading = 235,
		debugPoly = false,
        minZ=27.56,
        maxZ=31.56
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
    exports['qb-target']:AddBoxZone("pawnshopDuty2", vector3(-305.33, 6183.01, 31.56), 0.5, 0.5,{
        name = "pawnshopDuty2",
		heading = 325,
		debugPoly = false,
        minZ=27.56,
        maxZ=31.56
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
	---------Package Targets 1-----------
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
                label = "Your Items",
            },
        },
        distance = 1.5
    })   	  
    exports['qb-target']:AddBoxZone("pawnshop1", vector3(174.5, -1323.24, 29.35), 1, 6,{
        name = "pawnshop1",
        heading = 330,
        debugPoly = false,
        minZ=25.75,
        maxZ=29.75
    },{
        options = {
            {
                event = "ps-pawnshop:Package",
                icon = "far fa-clipboard",
                label = "Your Items",
            },
        },
        distance = 1.5
    })

    ---------Package Targets 2-----------
    exports['qb-target']:AddBoxZone("pawnshopone", vector3(-313.39, 6186.03, 31.56), 1, 3,{
        name = "pawnshopone",
        heading = 315,
        debugPoly = false,
        minZ=27.96,
        maxZ=31.96
    },{
        options = {
            {
                event = "ps-pawnshop:Packageone",
                icon = "far fa-clipboard",
                label = "Your Items",
            },
        },
        distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone("pawnshoptwo", vector3(-311.41, 6185.28, 31.56), 1, 1,{
        name = "pawnshoptwo",
        heading = 225,
        debugPoly = false,
        minZ=27.76,
        maxZ=31.76
    },{
        options = {
            {
                event = "ps-pawnshop:Packageone",
                icon = "far fa-clipboard",
                label = "Your Items",
            },
        },
        distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone("pawnshopthree", vector3(-307.83, 6188.96, 31.56), 1, 3,{
        name = "pawnshopthree",
        heading = 45,
        debugPoly = false,
        minZ=27.96,
        maxZ=31.96
    },{
        options = {
            {
                event = "ps-pawnshop:Packageone",
                icon = "far fa-clipboard",
                label = "Your Items",
            },
        },
        distance = 1.5
    })  
    exports['qb-target']:AddBoxZone("pawnshopfour", vector3(-308.52, 6192.37, 31.56), 1, 5,{
        name = "pawnshopfour",
        heading = 315,
        debugPoly = false,
        minZ=27.96,
        maxZ=31.96
    },{
        options = {
            {
                event = "ps-pawnshop:Packageone",
                icon = "far fa-clipboard",
                label = "Your Items",
            },
        },
        distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone("pawnshopfive", vector3(-310.32, 6186.51, 31.56), 1, 1,{
        name = "pawnshopfive",
        heading = 315,
        debugPoly = false,
        minZ=27.96,
        maxZ=31.96
    },{
        options = {
            {
                event = "ps-pawnshop:Packageone",
                icon = "far fa-clipboard",
                label = "Your Items",
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
                event = "ps-pawnshop:dutymenu",
                icon = "far fa-clipboard",
                label = "Charge Customer",
                job = "pawnshop",
            },
        },
        distance = 1.5
    
    })   
    exports['qb-target']:AddBoxZone("pawnshop_Bill1", vector3(-310.9, 6185.92, 31.56), 0.5, 0.5,{
        name = "pawnshop_Bill1",
        heading = 325,
        debugPoly = false,
        minZ=27.96,
        maxZ=31.96
    },{
        options = {
            {
                event = "ps-pawnshop:dutymenu",
                icon = "far fa-clipboard",
                label = "Charge Customer",
                job = "pawnshop",
            },
        },
        distance = 1.5
    
    })    
    -----------Shop Item Targets 1-------------
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
    exports['qb-target']:AddBoxZone("pawnshop_Storagetwo", vector3(-308.56, 6184.55, 31.56), 3, 0.4,{
        name = "pawnshop_Storagetwo",
        heading = 315,
        debugPoly = false,
        minZ=28.76,
        maxZ=32.76
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
    exports['qb-target']:AddBoxZone("pawnshop_Storagethree", vector3(-306.21, 6186.83, 31.56), 3, 0.4,{
        name = "pawnshop_Storagethree",
        heading = 135,
        debugPoly = false,
        minZ=29.36,
        maxZ=33.36
    },{
        options = {
            {
                event = "ps-pawnshop:Storagethree",
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
           header = "• Cash Register",
           txt = " Charge Customer ",
           params = {
               event = "ps-pawnshop:bill", 
               args = {
                   number = 1,
               }
           }
       },       
	   {
           header = "• Manage Business",
           txt = "Manage pawnshop",
           params = {
               event = "qb-bossmenu:client:OpenMenu", 
               args = {
                   number = 2,
               }
           }
       },
       {
           header = "• Order Items",
           txt = "Order Items",
           params = {
               event = "ps-pawnshop:shop", 
               args = {
                   number = 3,
               }
           }
       },	   
       {
           header = "• Hit Emergency Panic Alarm",
           txt = " Hit Alarm",
           params = {
               event = "ps-pawnshop:PawnsAlarm", 
               args = {
                   number = 4,
               }
           }
       },
	   {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 5,
               }
           }
       },
   })
   end)

RegisterNetEvent('ps-pawnshop:MaskOrders', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Orders Items",
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
           header = "Storage",
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
           header = "Storage",
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
           header = "Storage",
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

RegisterNetEvent('ps-pawnshop:Storagethree', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Storage",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-pawnshop:Storagethree", 
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