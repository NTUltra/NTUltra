/// @description BULLET SPAM
if speed > 3
{
	alarm[2] = spamRate;
	snd_play(sndGruntFire,0.1);
	with instance_create(x,y,EnemyBullet1Square)
	{
		sprite_index = sprIDPDSquareBullet;
		onlyHitPlayerTeam = true;
		image_index = 0;
		motion_add(other.direction + 110,2);
		image_angle = direction
		team = other.team
		alarm[4] = 5;
		addSpeed = other.spamProjectileVelocity;
		if other.dropFreaks
			isVenomized = true;
	}
	with instance_create(x,y,EnemyBullet1Square)
	{
		sprite_index = sprIDPDSquareBullet;
		onlyHitPlayerTeam = true;
		image_index = 0;
		motion_add(other.direction - 110,2);
		image_angle = direction
		team = other.team
		alarm[4] = 5;
		addSpeed = other.spamProjectileVelocity;
		if other.dropFreaks
			isVenomized = true;
	}
}