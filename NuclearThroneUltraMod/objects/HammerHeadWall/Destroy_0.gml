/// @description Drop some resources
snd_play(sndHammerHeadProc);
with instance_create(x + 8,y + 8,AnimDestroyTop)
{
	sprite_index = sprHammerHead;
}
var n = instance_nearest(x,y,Floor);
if n != noone
{
	instance_create(x, y, WallBreak);
	mask_index = mskPickupThroughWall;
	var o = 16;
	if n.object_index == FloorExplo
		o = 8;
	x = n.x + o;
	y = n.y + o;
	instance_create(x, y, WallBreak);
	with instance_create(x,y,HammerHeadResource) {
		topindex = other.topindex;	
	}
	
	if !instance_exists(SpiralCont) && !instance_exists(GenCont)
	{
		var xx = x + 8;
		var yy = y + 8;
		instance_create(xx,yy,Debris);
	}
}