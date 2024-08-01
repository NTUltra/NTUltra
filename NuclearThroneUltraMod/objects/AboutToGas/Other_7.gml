/// @description Spawn gass
instance_destroy();
with instance_create(x,y,ToxicGas)
{
	speed = 0.1;
	image_xscale -= 0.1;
	image_yscale -= 0.1;
}