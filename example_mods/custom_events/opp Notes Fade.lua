-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'opp Notes Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			noteTweenAlpha('NoteF1', 0, targetAlpha, 0.01, 'linear');
			noteTweenAlpha('NoteF2', 1, targetAlpha, 0.01, 'linear');
			noteTweenAlpha('NoteF3', 2, targetAlpha, 0.01, 'linear');
			noteTweenAlpha('NoteF4', 3, targetAlpha, 0.01, 'linear');
		else
			noteTweenAlpha('NoteF1', 0, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF2', 1, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF3', 2, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF4', 3, targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end