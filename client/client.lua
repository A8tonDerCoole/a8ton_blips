CreateThread(function()
    for _, location in pairs(Config.BlipLocations) do
        local blip = AddBlipForCoord(location.x, location.y, location.z)
        SetBlipSprite(blip, location.Sprite)
        SetBlipDisplay(blip, location.Display)
        SetBlipScale(blip, location.Scale)
        SetBlipColour(blip, location.Colour)
        SetBlipAsShortRange(blip, location.BlipAsShortRange)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(location.Name)
        EndTextCommandSetBlipName(blip)
    end
end)
