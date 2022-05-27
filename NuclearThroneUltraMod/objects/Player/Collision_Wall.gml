/// @description Collision with wall
if UberCont.opt_gamemode=4
my_health=0;

//if race!=18
//{
if /*(roll = 0)||(roll==1&&skill_got[5] == 1)&&*/other.object_index!=VikingWall&&race!=23{

move_contact_solid(direction,max(1,min(maxspeed,speed)))
if !place_free(x+hspeed,y){hspeed *= 0.5
if !place_free(x+hspeed,y) hspeed = 0}
if !place_free(x,y+vspeed){vspeed *= 0.5
if !place_free(x,y+vspeed)vspeed = 0}

//}
//else {move_bounce_solid(false);}

}


if !instance_exists(GenCont)&&race!=18{
if collision_point(x+random(4)-2,y+random(4)-2,Wall,false,true)//this may be a little intense
{
with other
{instance_destroy();
instance_create(x,y,FloorExplo);}
}}
else if race=18
{
flying=2;//4
mask_index=mskPickupThroughWall;
}

/*
var olddir oldspeed;
olddir = direction
oldspeed = speed
move_bounce_solid(true)

if roll = 0
{
motion_add(olddir,speed)
speed = oldspeed

if hspeed > 0 and !place_free(x+hspeed,y)
{do hspeed -= friction until place_free(x+hspeed,y) or hspeed <= 0}
else
if hspeed < 0 and !place_free(x+hspeed,y)
{do hspeed += friction until place_free(x+hspeed,y) or hspeed >= 0}

if vspeed > 0 and !place_free(x,y+vspeed)
{do vspeed -= friction until place_free(x,y+vspeed) or vspeed <= 0}
else
if vspeed < 0 and !place_free(x,y+vspeed)
{do vspeed += friction until place_free(x,y+vspeed) or vspeed >= 0}

}

/* */
/*  */
