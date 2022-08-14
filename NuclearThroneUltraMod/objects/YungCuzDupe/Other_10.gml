/// @description Fire gun
var canFire = false;
with Player
{
	if ultra_got[45] == 0 && alarm[3] < 1
	{
		if ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)
		{
			canFire = true;
			ammo[wep_type[wep]] -= wep_cost[wep];
			rad -= wep_rad[wep];
		}
	}
	else 
		canFire = true;
}
scrFire();
