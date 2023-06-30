/// @description Collision with wall
if scrIsGamemode(4) && !instance_exists(GenCont) && !instance_exists(LevCont)
my_health=0;

if race!=18
{
	move_contact_solid(direction,max(1,min(maxSpeed,speed)))
	var m = 0.5;
	if !place_free(x+hspeed,y){hspeed *= m
	if !place_free(x+hspeed,y) hspeed = 0}
	if !place_free(x,y+vspeed){vspeed *= m
	if !place_free(x,y+vspeed)vspeed = 0}
}


if !instance_exists(GenCont)&&race!=18{
if collision_point(x,y,WallHitMe,false,true)//this may be a little intense
{
with other
{instance_destroy();
instance_create(x,y,FloorExplo);}
}}
else if race == 18
{
	flying=2;//4
	mask_index=mskPickupThroughWall;
}

