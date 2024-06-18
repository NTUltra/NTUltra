/// @description Spawn the shop items
if !openedShop
{
	openedShop = true
	with instance_create(x - 32,y - 32,VoidShopItemGoldenWeaponChest)
	{
		image_index = 3;
		image_speed = 0.5;
		onTheTable = true;
	}
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
	if instance_exists(Player) && !UberCont.secondary_start_wep[Player.race]
		with instance_create(x,y + 96,VoidShopItem)
		{
			image_index = 0;
			image_speed = 0.4;
		}	
	if UberCont.total_run_slots > 0
		with instance_create(x + 32,y + 96,VoidShopItemSaveSlotIncrease)
		{
			image_index = 0;
			image_speed = 0.3;
		}
	
}