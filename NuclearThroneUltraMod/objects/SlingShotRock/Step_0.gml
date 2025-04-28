/// @description Bounce
var hitWall = false;
if collision_line(x,y,x+hspeed,y,Wall,false,false)
{
	x -= hspeed;
	hitWall = true;
	hspeed *= -1;
	image_angle = direction;
}
if collision_line(x,y,x,y+vspeed,Wall,false,false)
{
	y -= vspeed;
	hitWall = true;
	vspeed *= -1;
	image_angle = direction;
}
if (hitWall)
{
	instance_create(x,y,Dust);
	speed *= 0.9;
	if !audio_is_playing(sndDebrisHit)
		snd_play(sndDebrisHit);
}
if speed < 2
	instance_destroy();