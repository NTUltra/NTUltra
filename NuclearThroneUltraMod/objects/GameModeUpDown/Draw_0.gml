draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)
//draw_sprite(sprite_index,UberCont.opt_gamemode,x,y)
//draw_self();
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if gamemodenr > 0
gamemodenr -= 1
else
gamemodenr = maxgamemode

event_user(0);
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if gamemodenr < maxgamemode
gamemodenr += 1
else
gamemodenr=0;

event_user(0);
}

//draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)
if (UberCont.opt_gamemode==1&&gamemodeOrder[gamemodenr]==1)
{
	if !instance_exists(StartingWeaponUpDown)
		instance_create(x,y+24,StartingWeaponUpDown);
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
/*
if (UberCont.opt_gamemode==27&&gamemodeOrder[gamemodenr]==27)
{
	debug("leaderboard");
	if !instance_exists(GoToLeaderboard)
		instance_create(x,y+24,GoToLeaderboard);
}
else{
	with GoToLeaderboard
		instance_destroy()
}
*/

if (UberCont.opt_gamemode==19&&gamemodeOrder[gamemodenr]==19)
{
if !instance_exists(DiscDamageUpDown)
instance_create(x,y+24,DiscDamageUpDown);

if !instance_exists(DiscAmountUpDown)
instance_create(x,y+32,DiscAmountUpDown);
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

var yy = y+64;
if (UberCont.gamemode_have[gamemodeOrder[gamemodenr]]=1 && !dailyDone)
{
	UberCont.opt_gamemode=gamemodeOrder[gamemodenr];
}
else
{
draw_sprite(sprLocked,0,x,y+38);
var str;
if dailyDone && UberCont.gamemode_have[gamemodeOrder[gamemodenr]]=1
{
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
draw_set_color(c_gray)
draw_text(x-string_width(str)*0.6,yy,str)
draw_set_color(c_white)
draw_text(x-string_width(str)*0.6,yy,str)
}


/*draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
if UberCont.opt_freeze > 0
UberCont.opt_freeze -= 0.1
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
if UberCont.opt_freeze < 4
UberCont.opt_freeze += 0.1
}

if UberCont.opt_freeze != 1
draw_text(x+20,y,"TWEAK IT!")


/* */
/*  */
