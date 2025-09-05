ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
//FIRING
	snd_play(sndChopGun,0.1,true)
	with instance_create(x,y,Shell)
		motion_add(other.fireAim+180+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{
		motion_add(other.fireAim,max(6,24 - other.ammo))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	/*
	with instance_create(x,y,Bullet1)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),24 - other.ammo)
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	with instance_create(x,y,Bullet1)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),24 - other.ammo*2)
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}*/

	BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 5
	creator.wkick = 3
}


if ammo <= 0
instance_destroy()

