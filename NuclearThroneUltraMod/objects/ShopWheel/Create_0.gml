image_speed=0;
discount = 1;
if instance_exists(Player)
{
	if Player.skill_got[5]
	{
		discount = 0.8;
	}
	if Player.ultra_got[77] && Player.altUltra
	{
		instance_create(x,y,ShopWep1);
		instance_create(x,y,ShopWep2);
		instance_create(x,y,ShopWep3);
		instance_create(x,y,ShopWep4);
		instance_create(x,y,ShopWep5);
		instance_create(x,y,ShopWep6);
		instance_create(x,y,ShopWep7);
		instance_create(x,y,ShopWep8);
	}
	else
	{

		instance_create(x,y,ShopAmmo);
		instance_create(x,y,ShopHP);
		instance_create(x,y,ShopWepChest);
		instance_create(x,y,ShopBigWepChest);
		instance_create(x,y,ShopMenuBuff);
		instance_create(x,y,ShopEliteWepChest);
		instance_create(x,y,ShopWepMod);
		instance_create(x,y,ShopAmmoChest);


	    if Player.ultra_got[78]
	    {
    
	    instance_create(x,y,UltraShopMenuArmour);
	    instance_create(x,y,UltraShopMenuBigHPChest);
	    instance_create(x,y,UltraShopMenuInstantReload);
	    instance_create(x,y,UltraShopMenuInfiniteAmmo);
	    instance_create(x,y,UltraShopMenuDamage);
	    instance_create(x,y,UltraShopMenuInvulnerability);
	    instance_create(x,y,UltraShopMenuInverted);
	    instance_create(x,y,UltraShopBigGoldChest);
    
	    }
	}
}
depth = -25;
