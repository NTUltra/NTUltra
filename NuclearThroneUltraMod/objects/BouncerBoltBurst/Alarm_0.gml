ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndSplinterMinigun,0.02,true,false,2,false,false,0.7);
var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + (accuracy * sin(ammo*3.15));
with instance_create(x,y,BouncerBolt)//5 splinters
{
	if other.ultramodded
		alarm[11] = 0;
	motion_add(dir+random(8)-4,22)
		scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
}

BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 4
}


if ammo <= 0
instance_destroy()

