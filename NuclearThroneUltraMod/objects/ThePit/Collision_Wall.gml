spr/// @description Replace walls
with other
{
	instance_destroy(id,false);
	instance_create(x,y,WallHitMe);
}