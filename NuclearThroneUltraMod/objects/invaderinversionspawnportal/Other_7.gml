/// @description Yoo
if sprite_index = sprQuickBigPortalSpawn
{
	sprite_index = sprInvertedBigPortal;
	image_index = 0;
	depth = 0;
}
else if sprite_index = sprInvertedBigPortal && instance_exists(Player)
{
	sprite_index = sprInvertedBigPortalDisappear;
	image_index = 0;
}
else if sprite_index = sprInvertedBigPortalDisappear
{
	//instance_destroy();
	visible = false;
}