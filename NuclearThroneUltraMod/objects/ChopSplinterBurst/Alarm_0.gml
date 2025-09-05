ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
//FIRING
	snd_play(sndChopSplinterGun,0.1,true)
	with instance_create(x,y,Splinter)
	{
		motion_add(other.fireAim,max(6,24 - other.ammo))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 6
	creator.wkick = 4
}


if ammo <= 0
instance_destroy()

