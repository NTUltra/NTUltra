///scrBoltMarrow();
// /@description
///@param
function scrBoltMarrow(reduc = 1, rangeChange = 0){
	if instance_exists(enemy) and instance_exists(Player)
	{

		if speed > 0 and Player.skill_got[21]
		{
			dir = instance_nearest(x,y,enemy)
		    if dir.team != team && point_distance(x,y,dir.x,dir.y) < 26 + rangeChange + Player.betterboltmarrow && dir.mask_index != mskPickupThroughWall
		    {
				if array_length(hitEntities) < 1 || !array_contains(hitEntities,dir)
				{
					var xx = dir.x - hspeed * reduc;
					var yy = dir.y - vspeed * reduc
					if !collision_line(xx,yy,dir.x,dir.y,Wall,false,false)
					{
					    x = xx
					    y = yy
						scrForcePosition60fps();
					}
				}
		    }
		}
	}
	
}