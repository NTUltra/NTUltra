/// @description Fast spinny attack
rotationSpeed *= speedUp;
sprite_index = spr_fire;
alarm[4] = spinAttackDuration;
alarm[2] = spinAttackDuration;
alarm[1] += spinAttackDuration+5;
audio_play_sound_on(emitter,sndDragonLoop,true,4);
audio_play_sound_on(emitter,sndFlare,false,4);
event_user(2);
