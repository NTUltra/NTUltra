/// @description Plasma!
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
	
if(image_xscale < destroyScale)
{
	instance_destroy();
}
speed += acc * dt;

if (speed > maxSpeed)
	speed = maxSpeed;


if(image_xscale < nomscale)
{
	image_xscale += grow * dt;
	image_yscale += grow * dt;
}
else
{
	image_xscale = nomscale;
	image_yscale = nomscale;
}



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
if speed < 1
{
	speed = 1;
	image_xscale -= wallScale*dt;
	image_yscale -= wallScale*dt;
}
if (hitWall)
{
	//speed -= acc*dt;
	image_xscale -= wallScale*dt;
	image_yscale -= wallScale*dt;
	instance_create(x,y,Dust);
	event_user(3);
}