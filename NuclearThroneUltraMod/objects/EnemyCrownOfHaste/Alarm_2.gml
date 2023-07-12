/// @description Pickups fade faster
alarm[2] = 5;
with AmmoHPPickup
{
	alarm[0] = min(70,alarm[0]);
}