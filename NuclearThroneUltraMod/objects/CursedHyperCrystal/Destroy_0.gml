/// @description Can drop a super disc gun

// Inherit the parent event
event_inherited();

//drop super disc gun??
if(random(100)<2){//2
	with instance_create(x,y,WepPickup)
	{
	scrWeapons()
	wep = 511
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = 1;
	sprite_index = wep_sprt[wep]
	}
}
