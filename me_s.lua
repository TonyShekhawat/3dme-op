RegisterCommand('do', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end

	args = table.concat(args, ' ')
	TriggerClientEvent('me_do:client:triggerDisplay', -1, source, args, "me")
end, false)

RegisterCommand('me', function(source, args, rawCommand)
	if source == 0 then return end

	args = table.concat(args, ' ')
	TriggerClientEvent('me_do:client:triggerDisplay', -1, source, args, "do")
end, false)