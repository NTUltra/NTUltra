/// @description Start the scene
debug("START SCENE");
with MusCont
{
	audio_stop_sound(amb);
	amb = amb106;
	if !audio_is_playing(amb)
		snd_loop(amb)
	audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
}
alarm[0] = 120;
alarm[1] = 20;