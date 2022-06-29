/// @description Fire gun
scrFire();
with Player
{
	if ultra_got[45] == 0
	{
		ammo[wep_type[wep]] -= wep_cost[wep]
		rad -= wep_rad[wep]
	}
}