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
		persistent = true
		alarm[2] = 0;
		var portalDepth = - 5;
		if instance_exists(Portal)
			portalDepth = n.depth - 1;
		visitedPortals += 1;
		if visitedPortals > 2
		{
			snd_play(sndWeaponLost,0.1,false,true,1,false,false);
			visible = false;
			with instance_create(x,y,ImpactFX)
			{
				sprite_index = sprWepPortalLost;
				image_angle = random_range(30,-30);
				depth = portalDepth;
			}
			direction += 180;
			speed = max(speed,4);
			alarm[8] = 5;
		}
		else
		{
			snd_play(sndWepPortal,0.1,false,true,1,false,false);
			visible = false;
			with instance_create(x,y,ImpactFX)
			{
				sprite_index = sprWepPortal;
				image_angle=other.image_angle;
				depth = portalDepth;
			}
		}
	}
}