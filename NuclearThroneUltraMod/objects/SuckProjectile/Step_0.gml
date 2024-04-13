/// @description Suck in
if owner != noone && instance_exists(owner)
{
	x = lerp(xstart,owner.x,time);
	y = lerp(ystart,owner.y,time);
	image_xscale = lerp(1,0.25,time);
	image_yscale = image_xscale;
	image_angle = point_direction(x,y,owner.x,owner.y);
	if UberCont.normalGameSpeed == 60
		time += rate * 0.5;
	else
		time += rate;
	if time > 1
	{
		instance_destroy();	
	}
}
else
{
	instance_destroy();	
}