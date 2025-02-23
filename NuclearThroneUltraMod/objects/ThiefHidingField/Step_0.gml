/// @description Scale
if UberCont.normalGameSpeed == 60
{
	image_xscale += 0.005;
	image_speed -= 0.0025;
}
else
{
	image_xscale += 0.01;
	image_speed -= 0.00125;
}
image_speed = max(image_speed,0.2);
image_yscale = image_xscale;