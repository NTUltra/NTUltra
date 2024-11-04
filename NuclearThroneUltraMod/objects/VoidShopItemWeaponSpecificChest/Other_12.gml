/// @description Refresh weaponry
if instance_number(WepPickup) > 30
{
	with VoidShopItemWeaponSpecificChest
	{
		event_user(1)
	}
}
else
{
	scrWeaponSpecificChest();
}