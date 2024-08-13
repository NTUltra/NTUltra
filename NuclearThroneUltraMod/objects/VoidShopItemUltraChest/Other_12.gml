/// @description Refresh weaponry
if instance_number(WepPickup) > 30
{
	event_user(1)	
}
else
{
	SetSeedWeapon();
	wep[0] = scrDecideUltraWep();
	do {
		wep[1] = scrDecideUltraWep()
	}
	until (wep[1] != wep[0]);
	SetSeed();
	
	if instance_exists(Player)
	{
		if Player.skill_got[0]
		{
			do {
				wep[2] = scrDecideUltraWep()
			}
			until (wep[2] != wep[1] && wep[2] != wep[0]);
		}
	}
}