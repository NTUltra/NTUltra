/// @description Teleport weapon
if !persistent
{
	visitedPortals += 1;
	if visitedPortals > 2 && !isPermanent
	{
		snd_play(sndWeaponLost,0.1,false,true,1,false,false);
		visible = false;
		persistent = false;
		with instance_create(x,y,ImpactFX)
		{
			sprite_index = sprWepPortalLost;
			image_angle = random_range(30,-30);
			depth = -5;
		}
		direction += 180;
		speed = max(speed,4);
		alarm[8] = 5;
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