/// @description Yaa
if instance_exists(GenCont) || instance_exists(LevCont)
{
	alarm[0] = 10;
}
else
{
	with Player
	{
		if loops == 0
		{
			instance_create(x,y,BigWeaponChest);
			instance_create(x,y,EliteWeaponChest);
			instance_create(x,y,HealthChest);
		}
	}
	alarm[1] = 30;
}