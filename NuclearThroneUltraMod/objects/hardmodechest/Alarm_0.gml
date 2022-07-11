/// @description Yaa
if instance_exists(GenCont)
{
	alarm[0] = 10;
}
else
{
	with Player
	{
		if area == 1 && subarea == 1 && loops == 0
		{
			instance_create(x,y,BigWeaponChest);
			instance_create(x,y,EliteWeaponChest);
			instance_create(x,y,HealthChest);
		}
	}
	alarm[1] = 30;
}