if (visible)
{
	if other.sprite_index == sprProtoPortalDormant ||  other.sprite_index == sprInvertedPortalDormant
		exit;
	snd_play(sndWepPortal,0.1,false,true,1,false,false);
	visible = false;
	speed = 0;
	var portalDepth = other.depth;
	with instance_create(x,y,ImpactFX)
	{
		sprite_index = sprWepPortal;
		image_angle=other.image_angle;
		depth = portalDepth - 1;
	}
}
persistent = true
dontteleport=true;