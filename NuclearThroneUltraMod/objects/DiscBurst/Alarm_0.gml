ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndDiscgun)
with instance_create(x,y,Disc)
{
	if other.ultramodded
		alarm[11] = 0;
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(12)-6*other.accuracy),12)//6
	scrCopyWeaponMod(other);

	image_angle = direction
	team = other.team
}

BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 5
creator.wkick = 5}


if ammo <= 0
instance_destroy()

