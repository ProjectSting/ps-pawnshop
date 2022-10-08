local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
PlayerJob = {}

local onDuty = false

function DrawText3Ds(x, y, z, text)
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


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function ()
    QBCore.Functions.GetPlayerData(function (PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "pawnshop" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore.Client:OnJobUpdate', function (JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

CreateThread(function()
    for k, station in pairs(Config.Locations["stations"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 431)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.70)
        SetBlipColour(blip, 5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    for k, station in pairs(Config.Locations1["stations1"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 431)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.70)
        SetBlipColour(blip, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

RegisterNetEvent("ps-pawnshop:DutyB")
AddEventHandler("ps-pawnshop:DutyB", function ()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("ps-pawnshop:Package")
AddEventHandler("ps-pawnshop:Package", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "pawnshoppackage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pawnshoppackage", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("ps-pawnshop:Packageone")
AddEventHandler("ps-pawnshop:Packageone", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "pawnshoppackageone")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pawnshoppackageone", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("ps-pawnshop:Storage")
AddEventHandler("ps-pawnshop:Storage", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "pawnshopstorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pawnshopstorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-pawnshop:Storage0ne")
AddEventHandler("ps-pawnshop:Storage0ne", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "pawnshopstorage0ne")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pawnshopstorage0ne", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-pawnshop:Storagetwo")
AddEventHandler("ps-pawnshop:Storagetwo", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "pawnshopstoragetwo")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pawnshopstoragetwo", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-pawnshop:Storagethree")
AddEventHandler("ps-pawnshop:Storagethree", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "pawnshopstoragethree")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pawnshopstoragethree", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-pawnshop:shop")
AddEventHandler("ps-pawnshop:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "pawnshop", Config.Items)
end)