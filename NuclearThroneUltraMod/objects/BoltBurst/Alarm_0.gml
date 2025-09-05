ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndSplinterMinigun,0.02,true,false,2,false,false,0.7);
var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + (accuracy * sin(ammo*3.15)) + ((random(6)-3) * percAccuracy);
with instance_create(x,y,Bolt)//5 splinters
{
	if other.ultramodded
		alarm[11] = 0;
	motion_add(dir,23)
		scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
}

BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 4
}


if ammo <= 0
instance_destroy()

