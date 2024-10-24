/// @description Fire a maggot aswell
if ammo > 0
{
	ammo -= 1;
	if ammo < 1
	{
		snd_play(sndFlyFire);
		with instance_create(x,y,MaggotInverted)
		{
			raddrop = 0;
			countKill = false;
			motion_add(other.gunangle,other.pspeed)
			image_angle = direction
			team = other.team
			charge = true;
			alarm[1] = 0;
		}	
	}
	alarm[2] = 2;
	snd_play(sndScorpionFire)
	sprite_index = spr_fire
	with instance_create(x,y,EnemyBullet2)
	{
		motion_add(other.gunangle,other.pspeed);
		image_angle = direction
		team = other.team
		infiniteRange = true;
	}
}
else
	sprite_index = spr_idle;