/// @description Yoo
if sprite_index = sprQuickBigPortalSpawn
{
	if scrIsInInvertedArea()
		sprite_index = sprBigPortal;
	else
		sprite_index = sprInvertedBigPortal;
	image_index = 0;
	depth = 0;
}
else if sprite_index = sprInvertedBigPortal && instance_exists(Player) && alarm[1] < 1
{
	sprite_index = sprInvertedBigPortalDisappear;
	image_index = 0;
}
else if sprite_index == sprInvertedBigPortalDisappear || sprite_index == sprBigPortalDisappear
{
	instance_destroy();
	visible = false;
}
else if sprite_index == sprBigPortal && instance_exists(Player) && alarm[1] < 1
{
	sprite_index = sprBigPortalDisappear;
	image_index = 0;
}
