/// @description Revert scale
snd_play_2d(sndClick);
UberCont.opt_resolution_scale = 1;
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
{
	scrEnableBigScreen();
}
else {
	scrDisableBigScreen();	
}