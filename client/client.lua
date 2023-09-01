for _, v in pairs(Config.Locations) do 
    exports.ox_target:addSphereZone({
        coords = Config.coords,
        radius = Config.radius,
        debug = false,
        options = {
            {
                icon = 'fa-solid fa-bell',
                label = Config.Targetlabel,
                onSelect = function()
                    TriggerServerEvent('om_bell:ring', v.label)
                end,
                distance = 2,
            }
        }
    })
end
