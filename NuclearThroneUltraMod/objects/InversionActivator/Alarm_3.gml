/// @description Ending spiral
depth = 7;
audio_stop_sound(amb0c);
snd_play_2d(sndPortalOpen);
snd_play_2d(sndPortalClose);
with ThroneIISpiral
{
	with latestSpiral
	{
		image_index = 1;
	}
	with Spiral
	{
		speedUp = true;	
	}
	instance_destroy();	
}
with MusCont
{
	scrStopAmbience();
	amb = amb100;
	scrPlayAmbience();
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);	
}
with Player
{
	visible = true;
	lockout = false;
}