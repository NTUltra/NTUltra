ammo -= 1
alarm[0] = time
if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	snd_play_fire(snd)
	var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var acc = accuracyRange;
	var hacc = acc * 0.5;
	with instance_create(x + lengthdir_x(aimOffset,aim+90),y + lengthdir_y(aimOffset,aim+90),BloodRocket)
	{
		if other.ultramodded
			alarm[11] = 0;
		motion_add(aim+(random(acc)-hacc*other.accuracy),18 + (instance_number(BloodRocket) % 2))
		scrCopyWeaponMod(other);
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += shake
	creator.wkick = 4
}
if ammo <= 0
instance_destroy()