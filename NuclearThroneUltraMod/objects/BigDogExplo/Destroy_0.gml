/// @description Spawn Corpse
var img = 0
if spr_dead != mskPickupThroughWall
repeat(6)
{
	with instance_create(x,y,ScrapBossCorpse)
	{
	size = 2;
	motion_add(random(360),5)
	motion_add(other.direction,other.speed)
	speed += max(0,-other.my_health/5)
	sprite_index = other.spr_dead
	image_index = img
	image_xscale = other.image_xscale
	if speed > 16
	speed = 16
	}
img += 1
}