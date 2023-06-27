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
if speed < 2
	instance_destroy();


var hitWall = false;
if place_meeting(x+hspeed,y,Wall)
{
	x -= hspeed;
	hitWall = true;
	event_user(0);
}
if place_meeting(x,y+vspeed,Wall)
{
	y -= vspeed;
	hitWall = true;
	event_user(1);
}
if (hitWall)
{
	image_xscale -= wallScale*dt;
	image_yscale -= wallScale*dt;
	instance_create(x,y,Dust);
	event_user(3);
}