/// @description Check if I die so disable me
if my_health <= maxhealth * 0.5 && loops > 0 && !reachedHalfHealth && !disable
{
	reachedHalfHealth = true;
	snd_play(sndNothingBeamWarn,0);
	alarm[4] = laserTellTime;
}
if my_health <= 0 && !disable
{
	my_health = 99999;
	/*
	with NuclearThrone1
	{
		my_health -= 120;
	}*/
	disable = true;
	BackCont.shake += 20;
	BackCont.viewy2 += 40*UberCont.opt_shake;
	snd_play_2d(sndNothingTaunt);
	snd_play_2d(sndExplosionXXL);
	var xx = x;
	var yy = y;
	var ang = random(360);
	var angstep = 360/6;
	var boom = GreenExplosion
	if isInverted
		boom = PurpleExplosion
	repeat(6)
	{
		xx = x + lengthdir_x(48,ang);
		yy = y - 36 + lengthdir_y(48,ang);
		ang += angstep;
		with instance_create(xx,yy,boom)
		{
			depth = other.depth - 2;
			team = other.team;
		}
	}
	var ang = random(360);
	repeat(6)
	{
		xx = x + lengthdir_x(96,ang);
		yy = y - 36 + lengthdir_y(96,ang);
		ang += angstep;
		with instance_create(xx,yy,boom)
		{
			depth = other.depth - 2;
			team = other.team;
		}
	}
	if isLeft
	{
		spr_idle = spr_left_deactivated;
		spr_hurt = spr_left_deactivated_hurt;
		with NuclearThrone1
		{
			aTime = max(aTime-1,1);
			with rightSide
			{
				firerate = max(firerate - 1, 1);
				maxAmmo = max(maxAmmo - 1, 3);
				//gunangle[array_length(gunangle)] = 360;//Add in a left
				if disable {
					other.cantrishot = false;
				}
			}
		}
	}
	else
	{
		spr_idle = spr_right_deactivated;
		spr_hurt = spr_right_deactivated_hurt;
		with NuclearThrone1
		{
			aTime = max(aTime-1,1);
			with leftSide
			{
				firerate = max(firerate - 1, 1);
				maxAmmo = max(maxAmmo - 1, 3);
				//gunangle[array_length(gunangle)] = 190;//Add in a right
				if disable {
					other.cantrishot = false;
				}
			}
		}
	}
	sprite_index = spr_idle;
	image_index = 0;
}
