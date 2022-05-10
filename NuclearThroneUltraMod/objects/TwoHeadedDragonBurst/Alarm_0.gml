ammo -= 1

alarm[0] = time
var offset = 1;
var holdTime = 0;
if instance_exists(TwoHeadedDragonSound)
	holdTime = TwoHeadedDragonSound.holdTime;
offset= cos(holdTime);

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING

/*
repeat(2)
{
with instance_create(x,y,IceFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,10+random(3))
team = other.team
move_contact_solid(direction,14)}
}*/
if holdTime > 6
{
	BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 1
	repeat(2)
	{
	with instance_create(x,y,IceFlame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)-(40*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}

	repeat(2)
	{
	with instance_create(x,y,Flame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)+(40*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}
	
}
if holdTime > 14
{
	BackCont.viewx2 += lengthdir_x(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 0.5
	repeat(2)
	{
	with instance_create(x,y,IceFlame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)+(60*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}

	repeat(2)
	{
	with instance_create(x,y,Flame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)-(60*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}
	
}
if holdTime > 30
{
	BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 1.5
	repeat(2)
	{
	with instance_create(x,y,IceFlame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)-(90*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}

	repeat(2)
	{
	with instance_create(x,y,Flame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)+(90*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}
	
	repeat(2)
	{
	with instance_create(x,y,IceFlame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)+(120*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}

	repeat(2)
	{
	with instance_create(x,y,Flame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)-(120*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	}
	
	with instance_create(x,y,IceFlame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)-(4*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}

	with instance_create(x,y,Flame)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)+(4*offset),9+random(3))
	team = other.team
	move_contact_solid(direction,14)}
	
}
repeat(2)
{
with instance_create(x,y,IceFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)+(20*offset),9+random(3))
team = other.team
move_contact_solid(direction,14)}
}

repeat(2)
{
with instance_create(x,y,Flame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)-(20*offset),9+random(3))
team = other.team
move_contact_solid(direction,14)}
}


BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1
wkick = 4}


if ammo <= 0
instance_destroy()


