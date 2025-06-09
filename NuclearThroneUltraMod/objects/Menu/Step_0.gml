/// @description Proper directional menu controls

if hasNoMenuOpen()
{
	if KeyCont.key_west[p] == 1
	{
		with CharSelect
		{
			selected = false;
		}
		snd_play_2d(sndHover);
		//LEFT
		do
		{
			race --;
			if race == 13
				race = racemax;
			else if race == 14
				race = 12;
			else if race == 15
				race = 13;
			else if race == 12
				race = 14
			else if race < 0
				race = 15;
		}
		until (UberCont.race_have[race])
	
		event_user(0);
	}
	else if KeyCont.key_east[p] == 1
	{
		snd_play_2d(sndHover);
		with CharSelect
		{
			selected = false;
		}
		//RIGHT
		do
		{
			race ++;
			if race == 15
				race = 13;
			else if race == 13
				race = 15;
			else if race == 14
				race = 16;
			else if race == 16
				race = 0;
			else if race > racemax
				race = 14;

		}
		until (UberCont.race_have[race])
		event_user(0);
	}
	else if KeyCont.key_nort[p] == 1
	{
		snd_play_2d(sndHover);
		with CharSelect
		{
			selected = false;
		}
		if hasNoMenuOpen()
			event_user(1);
	}
	else if KeyCont.key_sout[p] == 1
	{
		snd_play_2d(sndHover);
		with CharSelect
		{
			selected = false;
		}
		//DOWN
		if hasNoMenuOpen()
			event_user(1);	
	}
	else if !mouse_check_button_pressed(mb_left) && !mouse_check_button_pressed(mb_right) &&
	(KeyCont.key_fire[p] == 1 || KeyCont.key_pick[p] == 1)
	{
		snd_play_2d(sndClick);
		var hasOneSelected = false;
		with CharSelect
		{
			if selected
				hasOneSelected = true;
		}
		if !hasOneSelected
		{
			KeyCont.key_fire[p] = 2;
			KeyCont.key_pick[p] = 2;
		}
		with CharSelect
		{
			if image_index == other.race
				selected = true;
			else
				selected = false;
		}
	}
}