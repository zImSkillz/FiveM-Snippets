local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
     {title="Gefängniss", colour=6, id=188, x = 712.10070800781, y = 142.2848815918, z = 80.754180908203},
     {title="Hotel", colour=46, id=96, x = -1216.0233154297, y = -203.67399597168, z = 39.325145721436}
  }


Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
