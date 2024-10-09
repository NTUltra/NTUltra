/// @description should delete?
if instance_exists(GenCont) || instance_exists(SpiralCont)// || instance_exists(Spiral)
{
	alarm[2] = 2;
}
else
{
	var msk = mask_index;
	mask_index = sprGhostTeleport;
	if !place_meeting(x,y,Wall)
	{
		var dis = point_distance(x,y,xstart,ystart);
		do {
			dis += 16;
			x += lengthdir_x(16,direction);
			y += lengthdir_y(16,direction);
		} until (place_meeting(x,y,Wall) || dis >= 640)
		if dis >= 640
			instance_destroy();
			
		alarm[0] = 2;
		scrForcePosition60fps();
	}
	mask_index = msk;
	alarm[2] = 5;
}