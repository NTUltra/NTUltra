/// @description Actual re-brainwash
if instance_exists(enemy) && instance_number(enemy) > 3
with enemy
{
	if
	(
		x > __view_get( e__VW.XView, 0 ) &&
		x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) &&
		y > __view_get( e__VW.YView, 0 ) &&
		y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	)
	{//eyes ultra c brainwash
		target = -1;
		if (my_health < 200 && random(100) < 50)
		{
			var nearest = instance_nearest_notme(x,y,enemy);
			if instance_exists(nearest) && nearest != noone && nearest.team != 0
			{
				target = nearest;
				team = 5 + irandom(1000);
				if team == nearest.team
					team ++;
			}
		} else
		{
			scrTarget();	
		}
	}
}