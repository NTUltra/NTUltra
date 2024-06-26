/// @description STOP THE MUSIC, doesnt count as a kill yet...
scrEndBossMusic();
instance_create(x,y,PortalOpenWallBreak);
with instance_create(x,y,IDPDCaptainDeathBed) {
	right = other.right;
	image_xscale = other.right;
	if !collision_point(x,y,Floor,false,false)
	{
		var n = instance_nearest(x,y,Floor);
		if n != noone
		{
			var o = 16;
			if object_index == FloorExplo
			{
				o = 8;
			}
			x = n.x + o;
			y = n.y + o;
			scrForcePosition60fps();
		}
	}
}