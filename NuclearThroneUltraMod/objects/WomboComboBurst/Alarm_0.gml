ammo -= 1
alarm[0] = time

if instance_exists(creator)
{
	var a = aimOffset * ammo;
	with creator
	{
		snd_play_fire(sndSlugger)
		var leftHook = altFire ? 1 : -1;
		var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		with instance_create(x,y,SmallSuckerPunch)
		{
			motion_add(aimDirection,16)
			hook = leftHook;
			direction += a * -hook * other.accuracy;
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,SuckerPunchBurst)
		{
			hook = leftHook*-1;
			creator = other.id
			ammo = 1
			time = 2
			team = other.team;
			aimOffset = a;
			alarm[0] = 5;
		}
		altFire = !altFire;
		BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 12
		wkick = 8
	}
}


if ammo <= 0
instance_destroy()

