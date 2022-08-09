/// @description AJ
with RadChest
instance_destroy(id,false)
with WeaponChest
instance_destroy(id,false)
with AmmoChest
instance_destroy(id,false)
with BigWeaponChest
instance_destroy(id,false)
with ChestOpen
instance_destroy(id,false)
with Top
{
	if alarm[0] > 1
		alarm[0] = 1;
}
with Wall
{
	if alarm[1] > 1
		alarm[1] = 1;
	if place_meeting(x,y,Floor)
		instance_destroy();
}