/// @description Drop some resources
snd_play(sndHammerHeadProc);
with instance_create(x + 8,y + 8,AnimDestroyTop)
{
	sprite_index = sprHammerHead;
}
var n = instance_nearest(x,y,Floor);
if n != noone
{
	mask_index = mskPickupThroughWall;
	var o = 16;
	if n.object_index == FloorExplo
		o = 8;
	x = n.x + o;
	y = n.y + o;
	instance_create(n.x + o, n.y + o, WallBreak);
	if topindex < 4
	{
		scrRaddrop(14);
	} else if topindex < 7
	{
		scrDrop(100,0);
	}
	else
	{
		scrDrop(0,100);
	}
	if !instance_exists(SpiralCont) && !instance_exists(GenCont) && fps_real >= fps
	{
		var xx = x + 8;
		var yy = y + 8;
		instance_create(xx,yy,Debris);
	}
}