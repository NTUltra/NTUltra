/// @description Fire laser line
sprite_index = spr_fire;
image_index = 0;
alarm[2] = (image_number/image_speed) + 1
snd_play(sndCloudShooterLaserShoot);
with instance_create(x, y, EnemyBullet1Square) {
	motion_add(other.gunangle, 4)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyLaser)
{
	image_angle = other.gunangle;
	team = other.team
	maxDistance = 3;
	laserDecrease -= 0.1;
	laserDecrease = max(laserDecrease,0.05);
	alarm[2] += 30;
	event_perform(ev_alarm,0)
}