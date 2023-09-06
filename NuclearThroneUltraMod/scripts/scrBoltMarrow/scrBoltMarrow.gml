///scrBoltMarrow();
// /@description
///@param
function scrBoltMarrow(reduc = 1, rangeChange = 0){
	if instance_exists(enemy) and instance_exists(Player)
	{

		if speed > 0 and Player.skill_got[21]
		{
			dir = instance_nearest(x,y,enemy)
		    if dir.team != team && point_distance(x,y,dir.x,dir.y) < 24 + rangeChange + Player.betterboltmarrow
		    {
				if array_length(hitEntities) < 1 || !array_contains(hitEntities,dir)
				{
				    x = dir.x-hspeed*reduc
				    y = dir.y-vspeed*reduc
					scrForcePosition60fps();
				}
		    }
		}
	}
	
}