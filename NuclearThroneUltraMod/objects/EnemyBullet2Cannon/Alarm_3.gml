/// @description Spray
snd_play(sndScorpionFire);
alarm[3] = sprayTimer;
var angle = direction;
var ps = projectileSpeed;
repeat(projectileAmount)
{
	with instance_create(x,y,EnemyBullet2)
	{
		motion_add(angle,ps);
		image_angle = direction
		team = other.team
	}

	angle += angleStep;
}