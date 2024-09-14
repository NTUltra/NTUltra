ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	snd_play_fire(sndPaperGun)
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var ang = aimDirection - ((16 * creator.accuracy)*0.5);
	var angstep = (16*creator.accuracy) * 0.5;
	if ammo % 2 == 0
		ang -= angstep*0.5;
	else
		ang += angstep*0.5;
	repeat(2)
	{
		with instance_create(x,y,PaperCraft)
		{
			motion_add(ang,other.projectileSpeed + (other.ammo))
			image_angle = direction
			team = other.team
			if hspeed > 0
				right = 1;
			else
				right = -1;
			scrCopyWeaponMod(other);
		}
		ang += angstep;
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	creator.wkick = 6
}


if ammo <= 0
instance_destroy()


