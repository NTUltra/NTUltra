/// @description Spawn FrostFlame instead
ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//snd_play(sndJackHammer)
	//FIRING
	var dir = point_direction(hit[1],hit[2],x,y);
	var xx = hit[1] + lengthdir_x(8,dir);
	var yy = hit[2] + lengthdir_y(8,dir);
	with instance_create(xx,yy,IceFlame)
	{
		motion_add(random(360),0.2);
		team = other.team;
	}
	with instance_create(xx,yy,IceFlame)
	{
		motion_add(random(360),0.7);
	}
	BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 1
	creator.wkick = 3
}
if ammo <= 0
instance_destroy()

