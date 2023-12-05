/// @description Bounce off of wall
var hitWall = false;
if collision_line(x,y,x+hspeed,y,Wall,false,false)
{
	x -= hspeed;
	hitWall = true;
	hspeed *= -1;
	image_angle = direction;
	snd_play(sndHitWall,0.05,true,true,1,false);
}
if collision_line(x,y,x,y+vspeed,Wall,false,false)
{
	y -= vspeed;
	hitWall = true;
	vspeed *= -1;
	image_angle = direction;
	snd_play(sndHitWall,0.05,true,true,1,false);
}
if (hitWall)
{
	instance_create(x,y,Dust);
	bounces --;
	if bounces < 0
		instance_destroy();
}


