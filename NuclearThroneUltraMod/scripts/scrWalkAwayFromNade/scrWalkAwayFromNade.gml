///scrWalkAwayFromNade();
// /@description
///@param
function scrWalkAwayFromNade(){
	if instance_exists(PopoNade)
	{
		var n = instance_nearest(x,y,PopoNade);
		if n != noone
		{
			if point_distance(x,y,n.x,n.y) < 64
			{
				motion_add(
				point_direction(n.x,n.y,x,y),2);
			}
		}
	}
}