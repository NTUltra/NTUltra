/// @description Wall collision
var hitWall = false;
if collision_line(x,y,x+hspeed,y,Wall,false,false)
{
	hitWall = true;
	hspeed *= -1;
}
if collision_line(x,y,x,y+vspeed,Wall,false,false)
{
	hitWall = true;
	vspeed *= -1;
}
if (hitWall)
{
	event_user(2);
}