/// @description Bounce but when active destroy
if alarm[2] < 1
{
	instance_destroy();
}
else if speed > 1 
{
	snd_play(sndGrenadeHitWall,0,true)
	move_bounce_solid(false)
	speed *= 0.6
	instance_create(x,y,Dust)
}