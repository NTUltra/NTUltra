if !place_meeting(x,y,Wall)
	image_angle += rotspeed*speed

if visible
{
	var n = instance_nearest(x,y,Portal);
	if n != noone && point_distance(x,y,n.x,n.y) < 24
	{
		with n
		{
			if sprite_index == sprProtoPortalDormant || sprite_index == sprInvertedPortalDormant
				exit;
		}
		alarm[2] = 0;
		event_user(0);
	}
}