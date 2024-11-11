/// @description Drop inversion magnet

// Inherit the parent event
event_inherited();

if spr_idle == sprBigVultureSkullOpen
{
	//Drop the inversion magnet
	with instance_create(x,y,WepPickup)
	{
	scrWeapons()
	wep = 375
	scrAddNewWeaponDrop(wep);
	name = wep_name[375]
	ammo = 0
	type = wep_type[375]
	curse = 0
	sprite_index = wep_sprt[375]
	}
}
with PitEnterance
{
	disable = true;
	name = "";
}