event_inherited();
maxhealth = 15;
EnemyHealthAdjustments();
alarm[4] = 60;
spr_idle = sprCrown26IdleEnemy
spr_walk = sprCrown26WalkEnemy
spr_hurt = sprCrown26HurtEnemy
spr_dead = sprCrown26DeadEnemy
instance_create(x,y,WarningCircle);
/// @description INITIATE DANCE PROTOCOL
with MusCont
{
	audio_pause_sound(song);
	audio_pause_sound(amb);
	audio_sound_gain(song, max(0, UberCont.opt_musvol*2), 0);
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
alarm[3] = audio_sound_length(sndChubbyEmuSong);
sheep = ds_list_create();
alarm[2] = 20;
audio_sound_gain(sndChubbyEmuSong, max(0, UberCont.opt_musvol), 0);