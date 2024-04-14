if image_index < 1
image_index += random(0.04)
else
image_index += 0.4

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