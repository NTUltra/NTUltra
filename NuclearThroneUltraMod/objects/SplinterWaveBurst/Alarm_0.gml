maxAmmo = max(ammo,maxAmmo);
alarm[0] = time
if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	snd_play(sndSplinterMinigun,0.1);
	//FIRING
	var sino = (((sin((ammo/maxAmmo) * cycles * pi) + 1) * 0.5) - 0.5) * 32 * creator.accuracy;
	with Splinter
	{
		if team == other.team
		{
			speed = max(10,speed - other.projectileSpeedReduction);
		}
	}
	if ammo != maxAmmo && ammo != 0
		with instance_create(x,y,Splinter)
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+sino,other.projectileSpeed)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
	with instance_create(x,y,Splinter)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)-sino,other.projectileSpeed)
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 2
	creator.wkick = 7
}
if ammo <= 0
	instance_destroy()
ammo -= 1