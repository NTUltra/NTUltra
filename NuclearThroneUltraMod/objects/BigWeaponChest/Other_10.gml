/// @description Open Chest
if !instance_exists(GenCont) && instance_exists(Player)
{
	with Player {
		nochest = 0;
		if (scrIsCrown(20))
		{
			if (canCrownOfProtection > 3)
			{
				canCrownOfProtection = 0;
				scrArmourPickup(1);
			}
			else
			{
				canCrownOfProtection += 1;	
			}
		}
	}
	
	var ang = random(360);
	repeat(1+Player.ultra_got[25]){//ROIDS ULTRA A DOUBLE WEPS
	with instance_create(x-8,y,WepPickup)
	{
	scrWeapons()
	wep=other.wep1;
	scrAddNewWeaponDrop(wep);
	name = wep_name[wep]
	ammo = 50
	curse = 0
	type = wep_type[wep]
	sprite_index = wep_sprt[wep]
	direction = ang;
	speed = 1.5;
	}
	ang += 120;
	with instance_create(x,y + 2,WepPickup)//WE INCLUDE THE SECOND WEAPON TO DUPLICATE
	{
	scrWeapons()
	wep=other.wep2;
	scrAddNewWeaponDrop(wep);
	name = wep_name[wep]
	ammo = 50
	curse = 0
	type = wep_type[wep]
	sprite_index = wep_sprt[wep]
	direction = ang;
	speed = 1.5;
	}
	ang += 120;
	}
	with instance_create(x+8,y,WepPickup)//THIS ONE IS SADLY NOT DUPLICATED CUS THAT BE OP
	{
	scrWeapons()
	wep=other.wep3;
	scrAddNewWeaponDrop(wep);
	name = wep_name[wep]
	ammo = 50
	curse = 0
	type = wep_type[wep]
	sprite_index = wep_sprt[wep]
	direction = ang;
	speed = 1.5;
	}
	if heavyHeart
	{
		with instance_create(x,y - 4,WepPickup)//THIS ONE IS SADLY NOT DUPLICATED CUS THAT BE OP
		{
		scrWeapons()
		wep=other.wep4;
		scrAddNewWeaponDrop(wep);
		name = wep_name[wep]
		ammo = 50
		curse = 0
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
		direction = ang;
		speed = 1.5;
		}
	}

	snd_play(sndBigWeaponChest)
	if !audio_is_playing(Player.snd_chst)
		snd_play(Player.snd_chst)
	instance_destroy()
}