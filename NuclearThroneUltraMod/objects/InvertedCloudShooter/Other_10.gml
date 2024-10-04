/// @description Shoot
var ang = gunangle - 120;
var am = 4;
var ps = 4;
var angStep = 240/am;
snd_play(sndCloudShooterLaserShoot,0.1);
repeat(am)
{
	with instance_create(x,y,EnemyBullet1Square)
	{
		onlyHitPlayerTeam = true;
		motion_add(ang,ps);
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = ang;
		team = other.team
		maxDistance = 3;
		laserDecrease -= 0.1;
		laserDecrease = max(laserDecrease,0.05);
		alarm[2] += 30;
		event_perform(ev_alarm,0)
	}
	ang += angStep;
}