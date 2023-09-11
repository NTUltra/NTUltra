ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	var acc = instance_exists(Player) ? Player.accuracy : 1;
	//FIRING
	snd_play_fire(sndHeavySlugger);
	repeat(2)
		with instance_create(x,y,Shell)
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

	with instance_create(x,y,SuckerPunch)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),18);
		hook = other.hook
		direction += 20*-hook*acc;
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}

	BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 14
	creator.wkick = 8
}


if ammo <= 0
instance_destroy()


