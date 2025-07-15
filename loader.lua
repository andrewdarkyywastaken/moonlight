if not game:IsLoaded()then
	game.Loaded:Wait();
end;
if getfflag and getfflag("DebugRunParallelLuaOnMainThread")=="true"then
	loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/219cc6b2c3578ead9cf25bac3c007dbb.lua"))();
else
	run_on_actor(game:GetService("ReplicatedFirst"):FindFirstChildOfClass("Actor"),`script_key="{script_key}";loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/219cc6b2c3578ead9cf25bac3c007dbb.lua"))();`);
end;
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(teleportState,placeId)
	if teleportState==Enum.TeleportState.InProgress and placeId==game.PlaceId then
		queue_on_teleport(`script_key="{script_key}"loadstring(game:HttpGet("https://raw.githubusercontent.com/andrewdarkyywastaken/moonlight/main/loader.lua"))();`);
	end;
end);
