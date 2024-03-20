/// @description Trail
alarm[2] = 1;
if speed > 1
{
	var bt = instance_create_depth(x,y,depth + 1,BoltTrailDrone)
	with bt {
		depth = other.depth + 1;
		image_angle = point_direction(other.x,other.y,other.xprev,other.yprev);
		var dis = point_distance(other.x,other.y,other.xprev,other.yprev)
		/*
		if dis  < 1
		{
			image_xscale = max(abs(y - other.yprev), abs(x - other.xprev))//other.speed;
			image_angle = other.direction+180;
		}
		else
		{*/
			image_xscale = dis;

		//}
		image_yscale = 1.5;
		theColour = other.theColour;
		shrinkRate = 0.1;
	}
	xprev = x;
	yprev = y;
}
