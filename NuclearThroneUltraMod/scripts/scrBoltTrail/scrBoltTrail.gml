///scrBoltTrail();
// /@description
///@param
function scrBoltTrail(col = c_white,shrinkrate = 0.1, trailscale = 1){
	if speed > 1
	{
		var bt = instance_create_depth(x,y,depth + 1,BoltTrail)
		with bt {
			depth = other.depth + 1;
			image_angle = point_direction(other.x,other.y,other.xprevious,other.yprevious);
			var dis = point_distance(other.x,other.y,other.xprevious,other.yprevious)
			if dis  < 1
			{
				image_xscale = other.speed;
				image_angle = other.direction+180;
			}
			else
			{
				image_xscale = dis;

			}
			image_yscale = trailscale;
			theColour = col;
			shrinkRate = shrinkrate;
		}
		return bt;
	}
}