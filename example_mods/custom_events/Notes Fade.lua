-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Notes Fade' then
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
			noteTweenAlpha('NoteF5', 4, targetAlpha, 0.01, 'linear');
			noteTweenAlpha('NoteF6', 5, targetAlpha, 0.01, 'linear');
			noteTweenAlpha('NoteF7', 6, targetAlpha, 0.01, 'linear');
			noteTweenAlpha('NoteF8', 7, targetAlpha, 0.01, 'linear');
		else
			noteTweenAlpha('NoteF1', 0, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF2', 1, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF3', 2, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF4', 3, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF5', 4, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF6', 5, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF7', 6, targetAlpha, duration, 'linear');
			noteTweenAlpha('NoteF8', 7, targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end