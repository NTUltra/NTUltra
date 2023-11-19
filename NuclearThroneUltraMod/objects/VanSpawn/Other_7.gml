if sprite_index = sprVanPortalStart
{
	sprite_index = sprVanPortalCharge
	arrowSprite = sprVanPortalDirection;
}
if sprite_index = sprRogueVanPortalStart
{
	sprite_index = sprRogueVanPortalCharge
}

if sprite_index = sprVanPortalClose
instance_destroy()
if sprite_index = sprRogueVanPortalClose
instance_destroy()
