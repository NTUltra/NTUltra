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
			if (random(60) < loader)
			{
				if slapped != noone
				{
					with slapped {
						queue ++;
					}
				}
				else
				{
					var activationList = ds_list_create();
					do {
						var n = instance_nearest(x,y,enemy)
						if n != noone && n.team == 2
						{
							ds_list_add(activationList,n);
							instance_deactivate_object(n);
						}
						if n != noone && n.team != 2 && point_distance(x,y,n.x,n.y) < 164 {
							slapped = instance_create(x,y,FlexibleElbowsSlap)
							with slapped
							{
								target = n;
								owner = other.id;
							}
						}
					} until (n == noone || n.team != 2)
					var al = ds_list_size(activationList);
					for (var i = 0; i < al; i++) {
						instance_activate_object(activationList[| i]);
					}
				}
			}
			loader -= 47;
		}
	}
}