/// @description Start the scene
with MusCont
{
	scrStopAmbience();
	amb = amb106;
	if !audio_is_playing(amb)
		scrPlayAmbience()
	audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
}
alarm[0] = 120;
alarm[1] = 20;