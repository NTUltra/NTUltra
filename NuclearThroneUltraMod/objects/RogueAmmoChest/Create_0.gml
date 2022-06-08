/// @description xxx

// Inherit the parent event
event_inherited();

if instance_exists(Player) && Player.ultra_got[88]
{
	if instance_number(RadChest) < 1
		instance_create(x,y,RadChest)
		
	instance_destroy(id,false);
}