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

if speed < 1
{
	speed = 1;
	image_xscale -= wallScale*dt;
	image_yscale -= wallScale*dt;
}