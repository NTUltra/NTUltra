
function snd_play(sndId, randompitch = 0, cancelPrev = false, usesLocation = true, priority = 2,noOverlap = false, noOverlapWhenNear = false, volume = 0.8,loop = false,owner = -1,specificPitch = 0, overlapRange = 70, falOff = 50, falOffMax = 400) {
	//SS_Init();
	if noOverlap && audio_is_playing(sndId)
		return false;
	var playSound = true;
	if cancelPrev
	{
		if audio_is_playing(sndId)
			audio_stop_sound(sndId);
	}
	else if noOverlapWhenNear && audio_is_playing(sndId)
	{
		var nearest = instance_nearest(x,y,Sound)
		if instance_exists(nearest) && point_distance(x,y,nearest.x,nearest.y) < overlapRange//64
		{
			if nearest.mySound == sndId
			{
				audio_stop_sound(sndId);
			}
		}
	}
	if playSound
	{
		var sfx = instance_create(x,y,Sound)
		with sfx {
			depth = other.depth;
			mySound = sndId;
			emitter = audio_emitter_create();
			audio_emitter_position(emitter,x,y,depth);
			audio_emitter_gain(emitter, volume);
			audio_emitter_falloff(emitter, falOff, falOffMax, 1);
			if specificPitch != 0
				audio_sound_pitch(audio_play_sound_on(emitter,sndId,loop,priority), specificPitch);
			else
				audio_sound_pitch(audio_play_sound_on(emitter,sndId,loop,priority), 1 + (random(randompitch)*2 - randompitch));
			alarm[0] = 30 * audio_sound_length(sndId);
			if owner > 0
				alarm[1] = 1;
			if instance_exists(Player) && Player.chickenFocusInUse
				event_user(0);
		}
		return sfx;
	}
}
