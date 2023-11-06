///scrFlexibleElbowReload();
// /@description
///@param weapon
function scrFlexibleElbowReload(wp){
	if skill_got[34]
	{
		var loader = wep_load[wep];
		var slapped = noone;
		while (loader > 0)
		{
			if (random(47) < loader)
			{
				if slapped != noone
				{
					with slapped {
						queue ++;
					}
				}
				else
				{
					var n = instance_nearest(x,y,enemy)
					if n != noone && point_distance(x,y,n.x,n.y) < 164 {
						slapped = instance_create(x,y,FlexibleElbowsSlap)
						with slapped
						{
							target = n;
							owner = other.id;
						}
					}
				}
			}
			loader -= 47;
		}
	}
}