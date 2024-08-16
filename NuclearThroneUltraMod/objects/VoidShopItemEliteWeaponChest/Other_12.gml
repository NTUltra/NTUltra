/// @description Refresh weaponry
if instance_number(WepPickup) > 30
{
	event_user(1)	
}
else
{
	SetSeedWeapon();
	wep[0] = scrDecideWep(2, 4000, 0);
	if instance_exists(Player) && Player.skill_got[0]
	{
		wep[1] = scrDecideWep(2, 4000, 0);
	}
}