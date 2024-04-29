/// @description Spawn the challenges
with instance_create(x - 32,y + 64,VoidShopItem)
{
	image_index = 2;
	image_speed = 0.5;
}
with instance_create(x,y + 64,VoidShopItem)
{
	image_index = 1;
	image_speed = 0.4;
}
with instance_create(x + 32,y + 64,VoidShopItem)
{
	image_index = 0;
	image_speed = 0.3;
}
