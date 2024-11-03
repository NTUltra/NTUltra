/// @description End
if sprite_index == sprSheepSuperChargeEnd
{
	if forcePlayer
	{
		event_perform(ev_alarm,1);	
	}
	with Player
	{
		if !place_meeting(x,y,Floor)
		{
			var n = instance_nearest(x,y,Floor);
			if n != noone
			{
				var o = 16;
				if n.object_index == FloorExplo
					o = 8;
				x = n.x+o;
				y = n.y+o;
				scrForcePosition60fps();
			}
		}
		
	}
	instance_destroy();
}
else
{
	image_index = image_number - 1;
	image_speed = 0;
}