/// @description INITIATE DANCE PROTOCOL
with MusCont
{
	audio_pause_sound(song);
	audio_pause_sound(amb);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)*2), 0);
}
snd_loop(sndChubbyEmuSong);
alphaOrigin = 0.25;
alpha = alphaOrigin;
wave = 0;
hue = random_range(0,360);
theColour = make_color_hsv(hue,250,250);
ogspd = 5;
spd = ogspd;
with Player
{
	snd_play_2d(snd_wrld);	
}
with instance_create(x,y,Flash)
{
	alpha = 0.5;
	alarm[0] = 4;
}
alarm[0] = audio_sound_length(sndChubbyEmuSong);
sheep = ds_list_create();
alarm[1] = 20;
audio_sound_gain(sndChubbyEmuSong, max(0, sqrt(UberCont.opt_musvol)), 0);