/// @description In the portal we go
//instance_destroy();
if visible
{
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