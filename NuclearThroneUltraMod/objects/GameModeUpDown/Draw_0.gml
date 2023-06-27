var gmx = x - 190;
var surfWidth = 148;
var surfHeight = 100;
var hoverOverGamemode = (UberCont.mouse__x > gmx &&
UberCont.mouse__x < gmx + surfWidth &&
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
draw_set_valign(fa_top);
repeat(3)
{
	i = 0;
	repeat(maxgamemode+1)
	{
		var h = string_height("* "+string_hash_to_newline(gamemode[gamemodeOrder[i]]));
		if hoverOverGamemode && UberCont.mouse__y-y > yy && UberCont.mouse__y-y < yy + h
		{
			draw_text_color(xx,yy,"* "+string_hash_to_newline(gamemode[gamemodeOrder[i]]),c_white,c_white,c_white,c_white,1)
			if (mouse_check_button_pressed(mb_left))
			{
				gamemodenr = i;
				snd_play_2d(sndClick);
				event_user(0);
			}
		} else if i == gamemodenr
		{
			draw_text_color(xx,yy,"* "+string_hash_to_newline(gamemode[gamemodeOrder[i]]),c_white,c_white,c_white,c_white,1);
			currentHeight = yy;
		}
		else if !UberCont.gamemode_have[gamemodeOrder[i]]
			draw_text_color(xx,yy,"* "+string_hash_to_newline(gamemode[gamemodeOrder[i]]),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
		else
			draw_text_color(xx,yy,"* "+string_hash_to_newline(gamemode[gamemodeOrder[i]]),c_gray,c_gray,c_gray,c_gray,1)
		yy += h;
		yy += 2;
		i++;
	}
}
draw_set_colour(c_white);
surface_reset_target();
draw_surface(surf,gmx,y);
var o = 48;
//draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)
if (UberCont.opt_gamemode==1&&gamemodeOrder[gamemodenr]==1)
{
	if !instance_exists(StartingWeaponUpDown)
		instance_create(x+o,y+24,StartingWeaponUpDown);
/*with(instance_create(x,y+32,WeaponDisplay))
{
scrWeapons();
sprite_index=wep_sprt[1];
}*/
}
else{
	with StartingWeaponUpDown
		instance_destroy()
}

//draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)
if (UberCont.opt_gamemode==40 && gamemodeOrder[gamemodenr]==40)
{
	if !instance_exists(SeedSetter) && !instance_exists(PlayerSpawn)
		instance_create(x-10,y+24,SeedSetter);
	UberCont.useSeed = true;
}
else{
	UberCont.useSeed = false;
	with SeedSetter
		instance_destroy()
}
if (UberCont.opt_gamemode==27&&gamemodeOrder[gamemodenr]==27) || UberCont.opt_gamemode==26&&gamemodeOrder[gamemodenr]==26  || UberCont.opt_gamemode==37&&gamemodeOrder[gamemodenr]==37
{
	if !instance_exists(GoToLeaderboard) && !instance_exists(PlayerSpawn)
		instance_create(x-10,y+24,GoToLeaderboard);
}
else{
	with GoToLeaderboard
		instance_destroy()
}

o = 64;
if (UberCont.opt_gamemode==19&&gamemodeOrder[gamemodenr]==19)
{
if !instance_exists(DiscDamageUpDown)
instance_create(x+o,y+24,DiscDamageUpDown);

if !instance_exists(DiscAmountUpDown)
instance_create(x+o,y+32,DiscAmountUpDown);
/*with(instance_create(x,y+32,WeaponDisplay))
{
scrWeapons();
sprite_index=wep_sprt[1];
}*/
}
else{
with DiscDamageUpDown
instance_destroy()
with DiscAmountUpDown
instance_destroy()
}

var yy = y+32;
if (UberCont.gamemode_have[gamemodeOrder[gamemodenr]]=1 && !dailyDone)
{
	UberCont.opt_gamemode=gamemodeOrder[gamemodenr];
}
else
{
draw_sprite(sprLocked,0,x,y+20);
var str;
if dailyDone && UberCont.gamemode_have[gamemodeOrder[gamemodenr]]=1
{
	if !instance_exists(GoToLeaderboard)
		instance_create(x-10,y+24,GoToLeaderboard);
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
draw_set_halign(fa_middle);
draw_set_color(c_gray)
draw_text_ext(x+o,yy,str,8,128)
draw_set_color(c_white)
draw_text_ext(x+o,yy,str,8,128)
draw_set_halign(fa_left);
}

draw_set_valign(fa_bottom);