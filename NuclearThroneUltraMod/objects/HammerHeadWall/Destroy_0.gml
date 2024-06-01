/// @description Drop some resources
debug("HAMMERHEAD");
var n = instance_nearest(x,y,Floor);
if n != noone
{
	mask_index = mskPickupThroughWall;
	var o = 16;
	if n.object_index == FloorExplo
		o = 8;
	x = n.x + o;
	y = n.y + o;
	if topindex < 3
	{
		scrRaddrop(14);
		debug("RADDROP");
	} else if topindex < 6
	{
		scrDrop(100,0);
		debug("ITEM");
	}
	else
	{
		scrDrop(0,100);
		debug("WEAPON");
	}
	if !instance_exists(SpiralCont) && !instance_exists(GenCont) && fps_real >= fps
	{
		var xx = x + 8;
		var yy = y + 8;
		instance_create(xx,yy,Debris);
	}
}