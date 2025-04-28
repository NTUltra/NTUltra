ammo -= 1

image_xscale *= 0.5
image_xscale = max(image_xscale,0.4);
image_yscale = image_xscale;

if instance_exists(creator)
{
	x = creator.x+lengthdir_x(16,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
	y = creator.y+lengthdir_y(16,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
	//FIRING
	if instance_exists(Player) && Player.skill_got[17] = 1
	{
		if ammo > 0
			snd_play(sndEnergyBlasterBurstUpg,0.1);
		else
			snd_play_fire(sndEnergyBlasterBurstEndUpg)
	}
	else
	{
		if ammo > 0
			snd_play(sndEnergyBlasterBurst,0.1);
		else
			snd_play_fire(sndEnergyBlasterBurstEnd)
	}
	with instance_create(x,y,EnergyBullet)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + (random(12)-6)*other.accuracy, 17 + other.ammo);
		scrCopyWeaponMod(other);
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 2
	creator.wkick = 5
}


if ammo > 0
	alarm[0] = time