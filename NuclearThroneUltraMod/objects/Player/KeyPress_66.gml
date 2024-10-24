/// @description Venuz Shake
if race = 6|| race=12
{
BackCont.shake += 5
audio_stop_sound(sndVenuz)
snd_play(sndVenuz)

}
/*
if area < 100
{
	//TOREMOVE
	hard = 14;
	wep = 844;
	bwep = 870;
	ammo[1] = typ_ammo[1] * 4;
	ammo[4] = typ_ammo[4] * 4;
	with enemy
	{
		my_health = 0;
	}
	if keyboard_check(vk_control)
	{
		area = 121
		subarea = 3
		inverted = true;
	}
	else
	{
		area = 117;
		subarea = 0;
	}

	loops = 2;
	with instance_create(x, y, Portal) type = 1
}
//*/
//wepmod2++;

//automatic screenshot taking
//if scrn_take = 1

/*
screen_save("NTULTRA"+string(UberCont.scrn)+".png");
UberCont.scrn += 1
*/