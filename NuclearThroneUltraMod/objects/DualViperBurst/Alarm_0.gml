ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	snd_play_fire(snd)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+180+random(50)-25,2+random(2))

	var len = 3 * accuracy;
	var offset = 90;
	if altFire
		offset = -90;
	altFire = !altFire;
	var xx = x + lengthdir_x(len, aimDirection + offset);
	var yy = y + lengthdir_y(len, aimDirection + offset);
	with instance_create(xx,yy,HeavyMicroBullet)
	{
		if other.ultramodded
			alarm[11] = 0;
		direction = aimDirection+(random(4)-2)*other.accuracy
		image_angle = direction;
		team = other.team
		scrGiveProjectileStats();
		with instance_create(x,y,AnimDestroyBloom)
		{
			motion_add(other.direction,2);
			sprite_index = sprMicroBulletBloom;
		}
		event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += shake
	creator.wkick = 4
}


if ammo <= 0
instance_destroy()

