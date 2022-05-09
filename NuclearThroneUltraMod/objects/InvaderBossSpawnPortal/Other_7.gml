/// @description Yoo
if sprite_index = sprQuickBigPortalSpawn
{
	sprite_index = sprBigPortal;
	image_index = 0;
	depth = 0;
}
else if sprite_index = sprBigPortal && instance_exists(Player)
{
	sprite_index = sprBigPortalDisappear;
	image_index = 0;
}
else if sprite_index = sprBigPortalDisappear
{
	//instance_destroy();
	visible = false;
}