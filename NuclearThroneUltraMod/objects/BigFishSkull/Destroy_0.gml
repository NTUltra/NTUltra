event_inherited()

ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(other.ang,3)
ang += 36}

with Player
oasisskip=-1;

//with BanditBoss
//oasis=false;
if spr_idle == sprBigFishSkullOpen
{
	//Drop the inversion magnet
	with instance_create(x,y,WepPickup)
	{
	scrWeapons()
	wep = 375
	name = wep_name[375]
	ammo = 0
	type = wep_type[375]
	curse = 0
	sprite_index = wep_sprt[375]
	}
}

with WantBoss
{
	if oasis
		instance_destroy();
}
