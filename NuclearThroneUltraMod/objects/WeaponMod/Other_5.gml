/// @description You working on a mod?
if alarm[0] > 0
{
	event_perform(ev_alarm,0);
	with myWeaponPickup
	{
		persistent = true;
		if instance_exists(Player)
		{
			x = Player.x;
			y = Player.y;
		}
	}
}