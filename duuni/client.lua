Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)

RegisterCommand("duuni", function()
    exports['mythic_notify']:DoHudText('inform', 'Työ: ' .. ESX.GetPlayerData().job.label .. " - " .. ESX.GetPlayerData().job.grade_label)
end)