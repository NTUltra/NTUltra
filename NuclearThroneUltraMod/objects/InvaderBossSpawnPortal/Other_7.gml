/// @description Yoo
if sprite_index = sprQuickBigPortalSpawn
{
	var loops = GetPlayerLoops();
	if (loops % 2 == 1)
		sprite_index = sprBigPortal;
	else
		sprite_index = sprInvertedBigPortal;
	image_index = 0;
	depth = 0;
}
else if sprite_index == sprBigPortal && instance_exists(Player)
{
	sprite_index = sprBigPortalDisappear;
	image_index = 0;
}
else if sprite_index == sprBigPortalDisappear || sprite_index == sprInvertedBigPortalDisappear
{
	//instance_destroy();
	visible = false;
}
else if sprite_index == sprInvertedBigPortal && instance_exists(Player)
{
	sprite_index = sprInvertedBigPortalDisappear;
	image_index = 0;
}