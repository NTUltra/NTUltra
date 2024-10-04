/// @description Shoot
var ang = gunangle - 100;
var am = 5;
var ps = 2.6;
var angStep = 200/am;
snd_play(sndCloudShooterShoot,0.1);
repeat(am)
{
	with instance_create(x,y,EnemyBullet1Square)
	{
		onlyHitPlayerTeam = true;
		motion_add(ang,ps);
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}