/// @description And replace with ultra weapon chest

// Inherit the parent event
event_inherited();

with instance_create(x,y,VoidShopItemUltraChest)
{
	image_index = 0;
	image_speed = 0.4;
}