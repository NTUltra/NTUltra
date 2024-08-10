/// @description should delete?
if instance_exists(GenCont) || instance_exists(SpiralCont)// || instance_exists(Spiral)
{
	alarm[2] = 2;	
}
else
{
	if !place_meeting(x,y,Wall)
	{
		var dis = point_distance(x,y,xstart,ystart);
		do {
			dis += 16;
			x += lengthdir_x(16,direction);
			y += lengthdir_y(16,direction);
		} until (place_meeting(x,y,Wall) || dis >= 128)
		if dis >= 128
			instance_destroy();
		scrForcePosition60fps();
	}
	alarm[2] = 5;
}