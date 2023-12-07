/// @description Bounce off of wall
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
	speed *= 0.34;
}