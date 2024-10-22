/// @description Fire gun
var canFire = false;
with Player
{
	if alarm[2]>0
		canFire = true;
	else if !ultra_got[45]
	{
		if ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep])
		{
			canFire = true;
			ammo[wep_type[wep]] -= wep_cost[wep];
			rad -= wep_rad[wep];
		}
	}
	else 
		canFire = true;
	if canFire
	{
		if other.isYungerCuz
		{
			reload += reload * 0.225;
			ammo[wep_type[wep]] += wep_cost[wep] * 0.25;
			rad += wep_rad[wep] * 0.25;
		}
		else
		{
			reload += reload * 0.3;
		}
	}
}
if instance_exists(Player)
{
	wepmod1 = Player.wepmod1;
	wepmod2 = Player.wepmod2;
	wepmod3 = Player.wepmod3;
	wepmod4 = Player.wepmod4;
}
if canFire
	scrFire();
