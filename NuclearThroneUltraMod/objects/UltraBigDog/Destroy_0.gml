/// @description Take longer to spawn portal

// Inherit the parent event
event_inherited();
scrDrop(0,50)
with myCorpse
{
	alarm[0] += 60;//Wait a little longer with spawning a portal	
}
if loops < 2
{
	//drop Big Dog launcher?
	if(random(500)<1){
	with instance_create(x,y,WepPickup)
	{
	scrWeapons()
	wep = 813
	scrAddNewWeaponDrop(wep);
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
	}}
}