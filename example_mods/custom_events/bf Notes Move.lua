-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'bf Notes Move' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetX = tonumber(value2);
		tX1 = defaultPlayerStrumX0 + targetX;
		tX2 = defaultPlayerStrumX1 + targetX;
		tX3 = defaultPlayerStrumX2 + targetX;
		tX4 = defaultPlayerStrumX3 + targetX;
		if duration == 0 then
			noteTweenX('NoteF5', 4, tX1, 0.01, 'linear');
			noteTweenX('NoteF6', 5, tX2, 0.01, 'linear');
			noteTweenX('NoteF7', 6, tX3, 0.01, 'linear');
			noteTweenX('NoteF8', 7, tX4, 0.01, 'linear');
		else
			noteTweenX('NoteF5', 4, tX1, duration, 'linear');
			noteTweenX('NoteF6', 5, tX2, duration, 'linear');
			noteTweenX('NoteF7', 6, tX3, duration, 'linear');
			noteTweenX('NoteF8', 7, tX4, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetX);
	end
end