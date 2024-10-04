/// @description Drop a golden screwdriver

// Inherit the parent event
event_inherited();

if isOneWeaponOnlyModes()
{
	instance_create(x,y,AmmoPickup);
}
else
{
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = 230;
		scrAddNewWeaponDrop(wep);
		name = wep_name[wep]
		ammo = 50
		type = wep_type[wep]
		curse = 1;
		sprite_index = wep_sprt[wep]
	}
}