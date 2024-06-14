/// @description Stop
sprite_index = spr_disappear
image_speed = 0.4;
image_index = 0
maxSpeed *= 0.5;
if audio_is_playing(sndCrystalTorpedo)
	audio_stop_sound(sndCrystalTorpedo);
snd_play(sndCrystalTorpedoExit);