ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	if Player.skill_got[17] = 1
		snd_play(sndMicroLaserUpg,0.03,true);
	else
		snd_play(sndMicroLaser,0.03,true);
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var ang = aimDirection - ((22 * creator.accuracy)*0.5);
	var angstep = (22*creator.accuracy) / 3;
	if ammo % 2 == 0
		ang -= angstep*0.5;
	else
		ang += angstep*0.5;
	repeat(3)
	{
		with instance_create(x,y,Laser)
		{
			defaultPierce -= 8;
			image_angle = ang
			team = other.team;
			sprite_index = sprMicroLaser;
			knockback = 1;
			alarm[2] = 4;
			image_yscale *= 0.5;
			dmg -= 1;
			scrCopyWeaponMod(other);
			event_perform(ev_alarm,0)
		}
		ang += angstep;
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	creator.wkick = 6
}


if ammo <= 0
instance_destroy()


