--------------------------------
--  LAVET AF SINDSYG SOMMER   --
--------------------------------

local logEnabled = false

RegisterServerEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text)
	TriggerClientEvent('3dme:triggerDisplay', -1, text, source)
	if logEnabled then
		setLog(text, source)
	end
end)

function setLog(text, source)
	local time = os.date("%d/%m/%Y %X")
	local name = GetPlayerName(source)
	local identifier = GetPlayerIdentifiers(source)
	local data = time .. ' : ' .. name .. ' - ' .. identifier[1] .. ' : ' .. text

	local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. data
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
end

if GetCurrentResourceName() ~= "gr_weaponfromcar" then
	print("                                             #")
	print("                                             ###")
	print("###### ###### ###### ###### ######  ##############")
	print("#      #    # #    # #    # #    #  ################    skift navnet '" .. GetCurrentResourceName() .. "' tilbage til 'gr_weaponfromcar'")
	print("###    ###### ###### #    # ######  ##################  ellers vil spriptet ikke virke ordentligt")
	print("#      # ##   # ##   #    # # ##    ################    Hvorfor ændrer navnet!!")
	print("###### #   ## #   ## ###### #   ##  ##############")
	print("                                             ###")
	print("                                             #")
end
