holdUpArrow = max(0, holdUpArrow - 1);
holdDownArrow = max(0, holdDownArrow - 1);

var gmx = x - 190;
var surfWidth = 180;
var surfHeight = 159//167//175;
var newClick = false;
prevgamemodenr = gamemodenr;
draw_set_valign(fa_top);
var hoverOverGamemode = (UberCont.mouse__x > gmx &&
UberCont.mouse__x < gmx + surfWidth - 32 &&
UberCont.mouse__y > y &&
UberCont.mouse__y < y + surfHeight);
var i = 0;
if !surface_exists(surf)
{
	surf = surface_create(surfWidth,surfHeight);
}
surface_set_target(surf);
draw_clear_alpha(c_black,0);
var xx = 1
var yy = scroll - totalHeight;
var selectedModeCol = make_colour_rgb(100,42,140);
repeat(3)
{
	i = 1;//Normal mode does not matter
	repeat(maxgamemode)
	{
		var pre = "";
		if i < 10
			var pre = "0"+string(i); 
		else
			pre = string(i);
		var strin = pre + ". "+string_hash_to_newline(gamemode[gamemodeOrder[i]]);
		if i == gamemodenr
			strin += " *";
		var h = string_height(strin);
		if ((hoverOverGamemode && UberCont.mouse__y-y > yy && UberCont.mouse__y-y < yy + h) || (gamemodenr == i
		&& (instance_exists(HoldToAddRemoveGamemode) || instance_exists(HoldToReplaceGamemode))))
		{
			draw_text_color(xx,yy,strin,c_white,c_white,c_white,c_white,1);
			if (mouse_check_button_pressed(mb_left))
			{
				newClick = true;
				gamemodenr = i;
				snd_play_2d(sndClick);
				event_user(0);
			}
		} else if /*i == gamemodenr || */scrIsGamemode(gamemodeOrder[i])
		{
			if i == gamemodenr
				draw_text_color(xx,yy,strin,selectedModeCol,c_ltgray,c_ltgray,selectedModeCol,1);
			else
				draw_text_color(xx,yy,strin,selectedModeCol,selectedModeCol,selectedModeCol,selectedModeCol,1);
		}
		else if !UberCont.gamemode_have[gamemodeOrder[i]]
		{
			if i == gamemodenr
				draw_text_color(xx,yy,strin,c_dkgray,c_ltgray,c_ltgray,c_dkgray,1);
			else
				draw_text_color(xx,yy,strin,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
		}
		else if (!scrCanComboGamemode(gamemodeOrder[i]))
		{
			if i == gamemodenr
				draw_text_color(xx,yy,strin,c_red,c_ltgray,c_ltgray,c_red,1);
			else
				draw_text_color(xx,yy,strin,c_red,c_red,c_red,c_red,1)
		}
		else
		{
			if i == gamemodenr
				draw_text_color(xx,yy,strin,c_gray,c_ltgray,c_ltgray,c_gray,1);
			else
				draw_text_color(xx,yy,strin,c_gray,c_gray,c_gray,c_gray,1)
		}
		yy += h;
		yy += 2;
		i++;
	}
}
draw_set_colour(c_white);
surface_reset_target();
draw_surface(surf,gmx,y);
var o = 48;
if (gamemodeOrder[gamemodenr]==1 && UberCont.gamemode_have[1])
{
	if !instance_exists(StartingWeaponUpDown)
		instance_create(x+o,y+24,StartingWeaponUpDown);
}
else{
	with StartingWeaponUpDown
		instance_destroy()
}
if (gamemodeOrder[gamemodenr]==42 && UberCont.gamemode_have[42])
{
	if !instance_exists(CustomSurvivalWave) && !instance_exists(PlayerSpawn)
		instance_create(x-10,y+72,CustomSurvivalWave);
}
else
{
	with CustomSurvivalWave
		instance_destroy();
}
if (gamemodeOrder[gamemodenr]==38 && UberCont.gamemode_have[38])
{
	if !instance_exists(SeedSetter) && !instance_exists(PlayerSpawn)
		instance_create(x-10,y+56,SeedSetter);
	UberCont.useSeed = true;
}
else{
	UberCont.useSeed = false;
	with SeedSetter
		instance_destroy()
}
if (/*scrIsGamemode(27)&&*/gamemodeOrder[gamemodenr]==27) || /*scrIsGamemode(26)&&*/gamemodeOrder[gamemodenr]==26  || /*scrIsGamemode(37)&&*/gamemodeOrder[gamemodenr]==37
{
	if !instance_exists(GoToLeaderboard) && !instance_exists(PlayerSpawn)
		instance_create(x-10,y+96,GoToLeaderboard);
}
else{
	with GoToLeaderboard
		instance_destroy()
}

o = 72;
if (gamemodeOrder[gamemodenr]==19 && UberCont.gamemode_have[19])
{
	if !instance_exists(DiscDamageUpDown)
		instance_create(x+o,y+96,DiscDamageUpDown);

	if !instance_exists(DiscAmountUpDown)
		instance_create(x+o,y+104,DiscAmountUpDown);

}
else{
with DiscDamageUpDown
instance_destroy()
with DiscAmountUpDown
instance_destroy()
}

var yy = y + 32;
if (UberCont.gamemode_have[gamemodeOrder[gamemodenr]] && !dailyDone)
{
	if newClick// && (prevgamemodenr == gamemodenr)
	{
		event_user(1);
	}
	draw_text_ext_colour(x-16,y+24,gamemode_description[gamemodeOrder[gamemodenr]],8,132,c_gray,c_gray,c_gray,c_gray,1);
}
else
{
	draw_sprite(sprLocked,0,x,y+40);
	var str;
	if dailyDone && UberCont.gamemode_have[gamemodeOrder[gamemodenr]]
	{
		if !instance_exists(GoToLeaderboard)
			instance_create(x-10,y+96,GoToLeaderboard);
		/*
		if ((gamemodeOrder[gamemodenr] == 26 && array_length(UberCont.encrypted_data.ctot_dailies_race_seed) == 1)
		|| (gamemodeOrder[gamemodenr] == 27 && array_length(UberCont.encrypted_data.ctot_dailies_score_seed) == 1))
		{
			str = "YOU NEED TO WAIT A DAY BEFORE\nYOU CAN START YOUR FIRST DAILY";//In case we cant verify through network.
			yy += 4;
		}
		else
		{*/
			str = "DAILY ALREADY DONE";
		//}
	}
	else
	{
		str = string_hash_to_newline(gamemode_unlock[gamemodeOrder[gamemodenr]]);
	}
	var o = 32
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_gray)
	draw_text_ext(x+o,yy,str,8,128)
	draw_set_color(c_white)
	draw_text_ext(x+o,yy,str,8,128)
	//draw_set_halign(fa_left);
}

draw_set_valign(fa_bottom);