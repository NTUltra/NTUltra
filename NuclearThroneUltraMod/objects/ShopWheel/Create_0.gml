image_speed=0;
discount = 1;
if instance_exists(Player)
{
	if Player.skill_got[5]
	{
	discount = 0.8;
	}
}

instance_create(x,y,ShopAmmo);
instance_create(x,y,ShopHP);
instance_create(x,y,ShopWepChest);
instance_create(x,y,ShopBigWepChest);
instance_create(x,y,ShopMenuBuff);
instance_create(x,y,ShopEliteWepChest);
instance_create(x,y,ShopWepMod);
instance_create(x,y,ShopAmmoChest);

if instance_exists(Player)
{
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
depth = -25;
