/// @description In the portal we go
//instance_destroy();
if visible && other.visible && other.alarm[1] < 1
{
	if other.sprite_index == sprProtoPortalDormant || other.sprite_index == sprInvertedPortalDormant
		exit;
	var portalDepth = other.depth;
	with instance_create(x,y,ImpactFX)
	{
		sprite_index = sprWepPortal;
		image_angle=other.image_angle;
		depth = portalDepth - 1;
	}
	image_angle = 0;
	visible = false;
	persistent = true;
}