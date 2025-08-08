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
			scrSpendingAmmo(wep_type[wep],wep_cost[wep]);
		}
	}
	else 
		canFire = true;
	if canFire
	{
		/*
			20 * 1.3 = 26;
			26 * 1.25 = 32.5;
			32.5 * 1.2 = 39;
			39 * 1.15 = 44.85;
			44.85 * 1.1 = 49.335
			If it was based purely on weapon reload time (no potential nerves of steel like buffs)
			6 is first shot reload addition so based on base weapon reload time
			20 + (6*5) = 44
			20 + (6*5) = 50
			
		*/
		var reloadStacking = min(0.2,(instance_number(YungCuzDupe) - 1 * 0.05));
		if other.isYungerCuz
		{
			if ultra_got[47] && !altUltra
				reload += reload * (0.16 - reloadStacking);//kinda inbetween multiplicative and additive
			else
				reload += reload * (0.225 - reloadStacking);
			ammo[wep_type[wep]] += wep_cost[wep] * 0.25;
			rad += wep_rad[wep] * (0.25 - reloadStacking);
		}
		else
		{
			if ultra_got[47] && !altUltra
				reload += reload * (0.23 - reloadStacking);//Rounded up
			else
				reload += reload * (0.3 - reloadStacking);
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
