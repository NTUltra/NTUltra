/// @description Reset
snd_play_2d(sndClick);
with GameModeUpDown
{
	scroll = 0;
	UberCont.opt_gamemode = [];
	gamemodenr = 0;
	event_user(0);	
}
alarm[0]=5;
image_index=1;