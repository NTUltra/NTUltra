if ammo % 6 == 0
{
	snd_play_fire(sndSuperDiscGun)
}
ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	with instance_create(x,y,Yoyo)
	{
		motion_add(other.angle+(random(10)-5)*other.accuracy,6.5)
		image_angle = direction
		scrCopyWeaponMod(other);
		team = other.team
	}
	angle += 60;
	BackCont.viewx2 += lengthdir_x(5,angle+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,angle+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = cos(angle)*6;
}


if ammo <= 0
instance_destroy()

