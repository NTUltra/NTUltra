/// @description Spawn the shop items
if !openedShop
{
	openedShop = true
	var yy = y - 4;
	with instance_create(x - 32,yy - 32,VoidShopItemGoldenWeaponChest)
	{
		image_index = 3;
		image_speed = 0.5;
		onTheTable = true;
	}
	with instance_create(x -64,yy + 52,VoidShopItemAmmoChest)
	{
		image_index = 2;
		image_speed = 0.4;
	}
	with instance_create(x - 32,yy + 52,VoidShopItemBigHealthChest)
	{
		image_index = 1;
		image_speed = 0.4;
	}
	with instance_create(x,yy + 52,VoidShopItemMaxHealthUpgrade)
	{
		image_index = 0;
		image_speed = 0.4;
	}
	with instance_create(x + 32,yy + 52,VoidShopItemMutationUpgrade)
	{
		image_index = 0;
		image_speed = 0.3;
	}
	if UberCont.gotRegalThisRun && instance_exists(Player) && !Player.skill_got[Player.maxskill + 1]
		with instance_create(x - 32,yy + 94,VoidShopItemRegalRefund)
		{
			image_index = 0;
			image_speed = 0.4;
		}
	else if UberCont.extraVan > -2
		with instance_create(x - 32,yy + 94,VoidShopItemReduceIdpdVans)
		{
			image_index = 2;
			image_speed = 0.5;
		}
	if UberCont.canMultiCrown
	{
		with instance_create(x - 96,yy + 94,VoidShopItemCrownPoints)
		{
			image_index = 0;
			image_speed = 0.4;
		}
	}
	if (isValidGamemodeToUnlock())
	{
		if scrHasAnySecretUltraUnlockRequirementsLeft()
		{
			with instance_create(x - 64,yy + 94,VoidShopItemUnlockSecretUltraRequirement)
			{
				image_index = 2;
				image_speed = 0.45;
			}
		}
		else
		{
			with instance_create(x - 64,yy + 94,VoidShopWeaponShifter)
			{
				image_index = 2;
				image_speed = 0.45;
			}
		}
		if instance_exists(Player) && !UberCont.secondary_start_wep[Player.race]
		{
			with instance_create(x,yy + 94,VoidShopItemSecondaryStartingWeapon)
			{
				image_index = 0;
				image_speed = 0.4;
			}
		}
		else
		{
			with instance_create(x,yy + 94,VoidShopItemUltraChest)
			{
				image_index = 0;
				image_speed = 0.4;
			}
		}
		if UberCont.total_run_slots > 0 && UberCont.total_run_slots < UberCont.max_run_slots
		{
			with instance_create(x + 32,yy + 94,VoidShopItemSaveSlotIncrease)
			{
				image_index = 0;
				image_speed = 0.3;
			}
		}
		else
		{
			with instance_create(x + 32,yy + 94,VoidShopItemEliteWeaponChest)
			{
				image_index = 0;
				image_speed = 0.3;
			}
		}
	}
	else
	{
		with instance_create(x - 64,yy + 94,VoidShopWeaponShifter)
		{
			image_index = 2;
			image_speed = 0.45;
		}
		with instance_create(x,yy + 94,VoidShopItemUltraChest)
		{
			image_index = 0;
			image_speed = 0.4;
		}
		with instance_create(x + 32,yy + 94,VoidShopItemEliteWeaponChest)
		{
			image_index = 0;
			image_speed = 0.3;
		}
	}

	//Weapon type specific chests
	with instance_create(x - 128,yy + 128,VoidShopItemMeleeChest)
	{
		image_index = 3;
		image_speed = 0.4;
	}
	with instance_create(x - 96,yy + 128,VoidShopItemBulletChest)
	{
		image_index = 2;
		image_speed = 0.4;
	}
	with instance_create(x - 64,yy + 128,VoidShopItemShotgunChest)
	{
		image_index = 1;
		image_speed = 0.4;
	}
	with instance_create(x - 32,yy + 128,VoidShopItemBoltChest)
	{
		image_index = 1;
		image_speed = 0.5;
	}
	with instance_create(x,yy + 128,VoidShopItemExplosiveChest)
	{
		image_index = 2;
		image_speed = 0.5;
	}
	with instance_create(x + 32,yy + 128,VoidShopItemEnergyChest)
	{
		image_index = 3;
		image_speed = 0.5;
	}
	
	with instance_create(x - 32,yy + 160,VoidShopItemCurseToggle)
	{
		image_index = 1;
		image_speed = 0.5;
	}
	with instance_create(x,yy + 160,VoidShopItemWeaponMod)
	{
		image_index = 1;
		image_speed = 0.5;
	}
}