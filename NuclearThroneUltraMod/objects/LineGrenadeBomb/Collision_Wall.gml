/// @description Change angle
if speed > 1
{
	snd_play(sndGrenadeHitWall,0,true)
	move_bounce_solid(false)
	speed *= 0.6
	instance_create(x,y,Dust)
	image_angle = direction;
}




