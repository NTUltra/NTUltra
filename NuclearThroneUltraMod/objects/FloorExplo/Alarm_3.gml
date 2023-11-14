/// @description Spawn debris
if !instance_exists(SpiralCont) && !instance_exists(GenCont) && fps_real >= fps
{
	var xx = x + 8;
	var yy = y + 8;
	instance_create(xx,yy,Debris);
}