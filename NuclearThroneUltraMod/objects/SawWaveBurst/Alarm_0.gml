maxAmmo = max(maxAmmo,ammo);
alarm[0] = time
if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	//FIRING
	snd_play(sndAutoSaw,0.05)
	var disto = abs(maxAmmo * 0.5 - ammo);
	var diro = dir + (random_range(10,-10)*other.accuracy);
	with instance_create(
	x + lengthdir_x(step * disto - 1,diro),
	y + lengthdir_y(step * disto - 1,diro),
	Shank)
	{
		dmg = 8;
		longarms = 0
		if instance_exists(Player)
			longarms = (Player.skill_got[13]+Player.bettermelee)*3
		motion_add(dir + (random_range(30,-30)*other.accuracy),1+longarms)
		image_angle = direction
		image_speed = max(0.1,image_speed-0.05);
		sprite_index = sprSawSlash;
		mask_index = mskSawSlash;
		scrCopyWeaponMod(other);
		team = other.team
		shk = 1;
	}
	BackCont.viewx2 += lengthdir_x(2 + disto,dir)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2 + disto,dir)*UberCont.opt_shake
	if BackCont.shake < 2
		BackCont.shake = 2
	creator.wkick = - 1 - (disto*2);
}
ammo -= 1
if ammo <= 0
{
	instance_destroy();
}


