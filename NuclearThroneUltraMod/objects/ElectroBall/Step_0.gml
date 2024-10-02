/// @description Wall collision
var hitWall = false;
if collision_line(x,y,x+hspeed,y,Wall,false,false)
{
	if hasWallCollision
		x -= hspeed;
	hitWall = true;
	event_user(0);
}
if collision_line(x,y,x,y+vspeed,Wall,false,false)
{
	if hasWallCollision
		y -= vspeed;
	hitWall = true;
	event_user(1);
}

if (hitWall)
{
	instance_create(x,y,Dust);
	event_user(3);
}