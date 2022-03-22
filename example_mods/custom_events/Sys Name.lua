-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Sys Name' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			LuaDebugMode = true;
			home = player;
		else
			LuaDebugMode = true;
			home = player;
		end
		debugPrint('Event triggered: ', name, duration, home);
	end
end