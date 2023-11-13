
function snd_play(sndId, randompitch = 0, cancelPrev = false, usesLocation = true, priority = 2,noOverlap = false, noOverlapWhenNear = true,volume = 0.8,loop = false,owner = -1,specificPitch = 0, overlapRange = 70) {
	//SS_Init();
	if noOverlap && audio_is_playing(sndId)
		return false;
	if UberCont.opt_3d_audio == 0
	{
		snd_play_2d(sndId,randompitch,cancelPrev,usesLocation,priority);
		/*
		if sndId==sndHitWall||sndId==sndShotgunHitWall{
			if !sound_isplaying(sndId){
			audio_sound_pitch(sndId,random_range(0.8,1.2))
			audio_play_sound(sndId,100,0)}
		}

		if UberCont.win8 = 1 || cancelPrev
		audio_stop_sound(sndId);
		//audio_falloff_set_model(audio_falloff_linear_distance);

		if instance_exists(Player) && usesLocation {
			audio_sound_pitch(audio_play_sound_at(sndId,Player.x - x,Player.y - y,0,0,360,1,false,2), 1 + (random(randompitch)*2 - randompitch));
		} else {
			audio_sound_pitch(audio_play_sound(sndId,2,false), 1 + (random(randompitch)*2 - randompitch));
		}*/
	}
	else
	{
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
					/*
					if nearest.alarm[0] < 2
					{
						playSound = false;
					}
					else
					{*/
						audio_stop_sound(sndId);
					//}
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
				audio_emitter_falloff(emitter, 50, 400, 1);
				if specificPitch != 0
					audio_sound_pitch(audio_play_sound_on(emitter,sndId,loop,priority), specificPitch);
				else
					audio_sound_pitch(audio_play_sound_on(emitter,sndId,loop,priority), 1 + (random(randompitch)*2 - randompitch));
				alarm[0] = 30 * audio_sound_length(sndId);
				if owner > 0
					alarm[1] = 1;
			}
			return sfx;
		}
	}
}
