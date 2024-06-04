/// @description Fall off the map
alarm[9] = 1;
if !collision_point(x,y,Floor,false,false)
{
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	speed *= 0.99;
	if image_xscale < 0.1
	{
		instance_destroy(id,false);
	}
}
else
{
	image_xscale = 1;
	image_yscale = 1;
}