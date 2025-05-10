alarm[0] = time
alarm[1] = 0;
if instance_exists(creator) && instance_exists(Player)
{
	with SpinWeapon
	{
		if wep == other.thisWep
			instance_destroy();
	}
	shouldslow = false;
	x = creator.x
	y = creator.y
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	instance_create(x,y,Smoke);
	//FIRING
	snd_play_fire(sndCarDoorSlam)
	with instance_create(
	x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,dir),
	y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,dir),
	MetalPipeSlash)
	{
		dmg = 60;
		sprite_index = sprCarDoorSlash;
		mask_index = mskCarDoorSlash;
		longarms = 0
		if instance_exists(Player)
			longarms = (Player.skill_got[13]+Player.bettermelee)*3
		motion_add(dir + (random_range(6,-6)*other.accuracy),1+longarms)
		image_angle = direction
		scrCopyWeaponMod(other);
		team = other.team
		shk = 1;
	}
	BackCont.viewx2 += lengthdir_x(30,dir)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,dir)*UberCont.opt_shake
	BackCont.shake += 15
	with creator
	{
		wkick = - 12;
		if object_index != Player || !skill_got[2]
		{
			motion_add(dir,12);
			scrMoveContactSolid(dir, 8);
		}
	}
	
}
ammo -= 1
if ammo <= 0
{
	instance_destroy();
}


