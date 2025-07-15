if type(script_key)~="string"or #script_key~=32 then
	if messagebox then
		messagebox("Copy the entire script that was provided to you by the Luarmor bot. Ensure that it consists of precisely 2 lines of code.","Moonlight",0x00000030+0x00010000);
	else
		warn("[Moonlight]: Copy the entire script that was provided to you by the Luarmor bot. Ensure that it consists of precisely 2 lines of code.");
	end;
	return;
end;
if getfflag and getfflag("DebugRunParallelLuaOnMainThread")=="true"then
	loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/219cc6b2c3578ead9cf25bac3c007dbb.lua"))();
else
	run_on_actor(game:GetService("ReplicatedFirst"):FindFirstChildOfClass("Actor"),`script_key="{script_key}";loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/219cc6b2c3578ead9cf25bac3c007dbb.lua"))();`);
end;
