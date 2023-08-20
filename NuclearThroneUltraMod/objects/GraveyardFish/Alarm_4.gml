/// @description Fire
sprite_index = spr_fire;
snd_play(sndScorpionFireStart);
 with instance_create(x, y, EnemyBullet2Cannon) {
	projectileSpeed -= 1;
	projectileAmount *= 0.5;
	angleStep = 360/projectileAmount;
	if projectileAmount == 2
		sprayTimer = 10;
	else
		sprayTimer = 15;
    motion_add(other.gunangle, other.projectileSpeed);
	alarm[4] = 0;
    image_angle = direction
    team = other.team
}
projectileSpeed += projectileSpeedIncrease;
if ammo > 0
{
	alarm[4] = fireRate;
	alarm[1] += alarm[4];
	if ((ammo + 2) % 3 == 0)
	{
		gunangle -= 60;
	}
	else
	{
		gunangle += 30;	
	}
	ammo --;
}
else
{
	alarm[1] += actTime;
	sprite_index = spr_idle;	
}