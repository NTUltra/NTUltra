/// @description Yaa
if instance_exists(GenCont)
{
	alarm[0] = 10;
}
else
{
	with Player
	{
		instance_create(x,y,BigWeaponChest);
		instance_create(x,y,EliteWeaponChest);
		instance_create(x,y,HealthChest);
	}
	alarm[1] = 30;
}