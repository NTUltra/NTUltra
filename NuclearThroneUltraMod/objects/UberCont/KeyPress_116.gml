/// @description Fullscreen toggle
snd_play_2d(sndClick);
	if UberCont.opt_fulscrn = 0
		UberCont.opt_fulscrn = 1
	else
		UberCont.opt_fulscrn = 0

	window_set_fullscreen(UberCont.opt_fulscrn)
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrEnableBigScreen();
	}
	else {
		scrDisableBigScreen();	
	}

scrSaveGamePreferenceOptions();
