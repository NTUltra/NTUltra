/// @description Teleport weapon
if !persistent
{
	visitedPortals += 1;
	if visitedPortals > 2 && !isPermanent
	{
		if visible && alarm[9] < 1
		{
			alarm[9] = 30;
			snd_play(sndWeaponLost,0.1,false,true,1,false,false);
			with instance_create(x,y,ImpactFX)
			{
				sprite_index = sprWepPortalLost;
				image_angle = random_range(30,-30);
				depth = -5;
			}
		}
		visible = false;
		persistent = false;
		direction += 180;
		if instance_exists(Portal)
		{
			var n = instance_nearest(x,y,Portal)
			motion_add(point_direction(x,y,n.x,n.y) + 180,2);
		}
		speed = max(speed,4);
		alarm[8] = 10;
	}
	else
	{
		persistent = true
		if isPermanent
			snd_play(sndWepPortalUpg,0.1,false,true,1,false,false);
		else
			snd_play(sndWepPortal,0.1,false,true,1,false,false);
		visible = false;
		with instance_create(x,y,ImpactFX)
		{
			if other.isPermanent
				sprite_index = sprWepPortalUpg;
			else
				sprite_index = sprWepPortal;
			image_angle=other.image_angle;
			depth = -5;
		}
	}
}