/// @description Spawn the shop items
if !openedShop
{
	openedShop = true
	instance_create(x,y + 16,VoidNoThingUnlockShopItem)
}