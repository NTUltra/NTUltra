/// @description Fire
if ammo > 0
{
	ammo -= 1;
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