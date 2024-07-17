if (hasNoMenuOpen())
{
	//standard weapon
	if wep == 0 || bwep == 0
		UberCont.start_wep[0] = race_swep[Menu.race];

	//Set the starting weapon
	if wep == -1
	{
		UberCont.selected_start_wep[race] = -1;
	}
	else if UberCont.start_wep_have[wep,race] == 1
	{
		//UberCont.cwep[race]=UberCont.start_wep[wep];
		UberCont.selected_start_wep[race] = wep;
	}

	//Set the secondary starting weapon
	if (UberCont.secondary_start_wep[race])
	{
		if bwep == -2
		{
			UberCont.selected_start_bwep[race] = -2;
		}
		if bwep == -1
		{
			UberCont.selected_start_bwep[race] = -1;
		}
		else if race > 0 && bwep > -1 && UberCont.start_wep_have[bwep,race] == 1
		{
			//UberCont.cwep[race]=UberCont.start_wep[bwep];
			UberCont.selected_start_bwep[race] = bwep;
		}
	}
	var xo = 0;
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		xo = 108;
	var spacebar = keyboard_check_pressed(vk_space);
	if race != 0 && (spacebar || UberCont.mouse__x > __view_get( e__VW.XView, 0 )+xo+300-10 and UberCont.mouse__x < __view_get( e__VW.XView, 0 )+xo+300+12 and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+arrowOpenerY-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+arrowOpenerY+10)
	{
	    wepopenscale=1.5;
    
	    if spacebar || mouse_check_button_pressed(mb_left)
	    {
	        if (wepmenuopen) {
				snd_play_2d(sndClickBack);
	            wepmenuopen = false;
				ultraOpen = false;
				crownIcons = [];
				/*
				with CrownIcon
					instance_destroy();
				
				with CharSelect
					visible = true;
					*/
	        } else {
				snd_play_2d(sndClick);
	            wepmenuopen = true;
	        }
	    }
	} else {
	    wepopenscale=1;
	}
	/*
	if wepmenuopen
	{
		var dir = 0
			repeat(crownmax+1)
			{
			if dir<10
			{
				crownIcons[dir].x=__view_get( e__VW.XView, 0 )+18+dir*32;
				crownIcons[dir].y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-50
			}
			else
			{
				crownIcons[dir].x=__view_get( e__VW.XView, 0 )+18+(dir-9)*32;
				crownIcons[dir].y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16
			}
			dir += 1}	
	}
	*/
	//SKIN-------------------------------------------______________________

	if race != 0 && wepmenuopen && !ultraOpen && UberCont.mouse__x > sx + 32 -12 and UberCont.mouse__x < + 32 + sx + 12 and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+60-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+60+14
	{
		scale=1.4;

		if mouse_check_button_pressed(mb_left)
		{
			skin++
			if skin > 2
			{
				//Secret skins
				while (
					(!UberCont.race_dskin[race] && skin == 3) ||
					(!UberCont.race_eskin[race] && skin == 4) ||
					(!UberCont.race_fskin[race] && skin == 5) ||
					(!UberCont.race_gskin[race] && skin == 6)
				)
				{
					skin++
				}
				if skin > 6
					skin = 0
			}
			snd_play_2d(choose(sndMenuASkin,sndMenuBSkin));
			event_user(0);
		}
	}
	else
	scale=1;

	if race != 0 && wepmenuopen && UberCont.mouse__x > sx - 12 + ultraOffset and UberCont.mouse__x < sx + 12 + ultraOffset and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+60-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+60+12
	{
		ultraScale=1.4;

		if mouse_check_button_pressed(mb_left)
		{
			snd_play_2d(choose(sndMenuASkin,sndMenuBSkin));
			ultraOpen = !ultraOpen;
		}

	}
	else
		ultraScale = 1;

}
sx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sxo;
imageIndex += 0.5;
