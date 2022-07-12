function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', '~c~[~r~GERMAN~c~] ~b~ModernLifeRP   ~c~|   ~b~https://discord.gg/FeHevW67BD')
end)