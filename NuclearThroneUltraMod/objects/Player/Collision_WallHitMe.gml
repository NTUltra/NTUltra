/// @description Collision with wall
if UberCont.opt_gamemode=4
my_health=0;

if race!=18
{
	if /*(roll = 0)||(roll==1&&skill_got[5] == 1)&&*/other.object_index!=VikingWall{

	move_contact_solid(direction,max(1,min(maxspeed,speed)))
	if !place_free(x+hspeed,y){hspeed *= 0.5
	if !place_free(x+hspeed,y) hspeed = 0}
	if !place_free(x,y+vspeed){vspeed *= 0.5
	if !place_free(x,y+vspeed)vspeed = 0}

	}
	//else {move_bounce_solid(false);}
}


if !instance_exists(GenCont)&&race!=18{
if collision_point(x+random(4)-2,y+random(4)-2,WallHitMe,false,true)//this may be a little intense
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

