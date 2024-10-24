/// @description Reset
snd_play_2d(sndClick);
with GameModeUpDown
{
	scroll = 0;
	UberCont.opt_gamemode = [];
	gamemodenr = gamemodeOrder[UberCont.opt_default_gm];
	event_user(0);	
}
alarm[0]=5;
image_index=1;