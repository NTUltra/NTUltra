/// @description End at sprite
if sprite_index == sprVoidShopItemDisappear
{
	instance_destroy();
}
else
{
	image_speed = 0;
	mask_index = mskWepPickup;
	image_index = image_number - 1;	
}