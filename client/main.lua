
local UserGroup
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('sendMessageAdmin')
AddEventHandler('sendMessageAdmin', function(id, name, message)
    local myId = PlayerId()
    local pid = GetPlayerFromServerId(id)
	ESX.TriggerServerCallback('dbgd-teamchat:getGroup', function(Group)
		UserGroup = Group
		if pid == myId then
			-- Your Notify | example TriggerEvent("notification", "color", "title", "ID: " .. id .. " | " .. name .. " | " .. message)
		elseif UserGroup ~= 'user' and pid ~= myId then
			-- Your Notify | example TriggerEvent("notification", "color", "title", "ID: " .. id .. " | " .. name .. " | " .. message)
		end
  end)
end)


