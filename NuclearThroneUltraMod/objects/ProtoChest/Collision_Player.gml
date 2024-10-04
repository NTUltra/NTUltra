if sprite_index != sprProtoChestOpen && wep != 0
{
sprite_index = sprProtoChestOpen
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.wep
		scrAddNewWeaponDrop(wep);
		wepmod1=other.wepmod1
		wepmod2=other.wepmod2
		wepmod3=other.wepmod3
		wepmod4=other.wepmod4
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		speed = 0;
		alarm[5] = 0;
		canBeMoved = false;
		canBeAngled = false;
	}
	wep = 0;
instance_create(x,y,FXChestOpen)

snd_play(sndWeaponChest)
}

