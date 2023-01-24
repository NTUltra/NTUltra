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
			UberCont.chestRan = 0;
			with instance_create(x,y,BigWeaponChest)
			{
				event_perform(ev_collision,Player)
			}
			with instance_create(x,y,EliteWeaponChest)
			{
				event_perform(ev_collision,Player)
			}
			with instance_create(x,y,HealthChest)
			{
				event_perform(ev_collision,Player)
			}
		}
	}
	alarm[1] = 30;
}