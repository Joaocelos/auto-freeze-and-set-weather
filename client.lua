-- Load the configuration from the config file
local config = LoadResourceFile(GetCurrentResourceName(), "config.json")
if config then
    config = json.decode(config)
else
    print("Error: Could not load configuration file")
    return
end

-- Set the initial weather type
SetWeatherTypePersist(config.weather)

-- Main loop
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
    end
end)

-- When the script stops, reset the weather to the default
AddEventHandler("onResourceStop", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        ResetWeatherTypePersist()
    end
end)
