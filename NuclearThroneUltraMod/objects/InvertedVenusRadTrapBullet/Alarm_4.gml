/// @description Fires bullets
alarm[4] = fireDelay;
gunAngle += rotation;
fullCircle += abs(rotation);
snd_play(sndVenusFlyTrapBulletFire,0.1);
with instance_create(x,y,InvertedExploGuardianBullet)
{
	motion_add(other.gunAngle,other.projectileSpeed);
	image_angle = direction
	team = other.team
}
if fullCircle > 360
{
	instance_destroy();	
}