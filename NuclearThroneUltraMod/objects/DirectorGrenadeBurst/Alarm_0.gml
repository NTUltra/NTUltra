ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndGrenade)
with instance_create(x,y,DirectorGrenade)
{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+(random(6)-3*other.accuracy),5)
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}

BackCont.viewx2 += lengthdir_x(9,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(9,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3.5
creator.wkick = 5}


if ammo <= 0
instance_destroy()

