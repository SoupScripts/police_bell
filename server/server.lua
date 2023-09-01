ESX = exports["es_extended"]:getSharedObject()
local bellRinged = false

RegisterNetEvent('om_bell:ring', function(name)
	local src = source

    if bellRinged then 
        TriggerClientEvent('ox_lib:notify', src, { type = 'inform', title = 'Police Ring🔔', description = 'The bell was already ringed'})
        return 
    end

    bellRinged = true
    TriggerClientEvent('ox_lib:notify', src, {type = 'success', title = 'Police Ring🔔', description = 'Bell Ringed', duration = '500' })
    TriggerClientEvent('cd_dispatch:AddNotification', -1, {
        job_table = {'police', 'sheriff', 'sahp', },
        coords = Config.coords,
        title = 'Police Bell',
        message = 'Someone rag a bell',
        flash = 0,
        unique_id = tostring(math.random(0000000,9999999)),
        sound = 1,
        blip = {
            sprite = 47,
            scale = 1,
            colour = 5,
            flashes = false,
            text = 'Police Bell',
            time = 5,
            radius = 0,
        }
    })
    Wait(20000) -- cooldown in secs
		bellRinged = false
	end)

