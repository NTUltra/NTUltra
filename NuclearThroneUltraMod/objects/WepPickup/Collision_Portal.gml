if visible
{
	with other
	{
		if sprite_index == sprProtoPortalDormant || sprite_index == sprInvertedPortalDormant
			exit;
	}
	persistent = true
	var portalDepth = - 5;
	if instance_exists(Portal)
		portalDepth = other.depth - 1;
	snd_play(sndWepPortal,0.1,false,true,1,false,false);
	visible = false;
	with instance_create(x,y,ImpactFX)
	{
		sprite_index = sprWepPortal;
		image_angle=other.image_angle;
		depth = portalDepth;
	}
}