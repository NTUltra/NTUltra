/// @description Init
depth = 6;
image_speed = 0.4;
name = "TOUCH?"
text = "MEANWHILE\nSOMEWHERE ELSE...";
alarm[0] = 30;
active = false;
with MusCont
{
	audio_stop_sound(song);
	audio_stop_sound(amb);
	amb = amb0c;
	snd_loop(amb);
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
rememberArea = 108;
depth = -99999;
instance_create(x,y - 8,FakePortal);