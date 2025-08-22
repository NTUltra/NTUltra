/// @description scrExcessResource
function scrExcessResource(resourceType, excessAmount){
	/*resourceType
	0 = health;
	1 = ammo 0; melee
	2 = ammo 1; bullet
	3 = ammo 2; shotgun
	4 = ammo 3; crossbow
	5 = ammo 4; explosive
	6 = ammo 5; energy
	7 = rad
	8 = cash
	9 = voidbeam
	*/
	//Bullet is 0.001%;
	// 1 bullet is equal to 4,636363636363636‬ shotgun ammo
	//Shotgun is ammovalue * 4.636363636363636 <= this number is gathered by dividing both max ammos 255/55 = 4.636363636363636
	//So if i want bullet to be 0.001% I want for shotgun 0.001%*4,636363636363636‬

	with Player
	{
		if skill_got[48] || true
		{
			switch (resourceType)
			{
				case 0://Health
					excessHealth += excessAmount;
					//1 health = 1%
					excessResourceDamageBoost += excessAmount * 0.01;
				break;
				case 1://Melee Ammo
					excessAmmo[0] += excessAmount;
					//1 Melee ammo = 0.07% * 2
					excessResourceDamageBoost += excessAmount * 0.0015454545454544;
				break;
				case 2://Bullet Ammo
					excessAmmo[1] += excessAmount;
					//1 Bullet ammo = 0.02%
					excessResourceDamageBoost += excessAmount * 0.0002;
				break;
				case 3://Shotgun Ammo
					excessAmmo[2] += excessAmount;
					//1 Shotgun ammo = 0.046%*2
					excessResourceDamageBoost += excessAmount * 0.000927272727272;
				break;
				case 4://Bolt Ammo
					excessAmmo[3] += excessAmount;
					//1 Bolt ammo = 0.046%*2
					excessResourceDamageBoost += excessAmount * 0.000927272727272;
				break;
				case 5://Explosive Ammo
					excessAmmo[4] += excessAmount;
					//1 Explosive ammo = 0.046%*2
					excessResourceDamageBoost += excessAmount * 0.000927272727272;
				break;
				case 6://Energy Ammo
					excessAmmo[4] += excessAmount;
					//1 Energy ammo = 0.046%*2
					excessResourceDamageBoost += excessAmount * 0.000927272727272;
				break;
				case 7://Rad
					excessRad += excessAmount;
					//1 Rad = 0.025%
					excessResourceDamageBoost += excessAmount * 0.00025;
				break;
				case 8://Cash
					excessCash += excessAmount;
					//1 Cash = 0.5%
					excessResourceDamageBoost += excessAmount * 0.005;
				break;
				case 9://VoidBeam
					excessVoidBeam += excessAmount;
					//1 VoidBeam = 1%
					excessResourceDamageBoost += excessAmount * 0.01;
				break;
			}
			debug(excessResourceDamageBoost * 100);
			excessResourceDamageBoost = min(excessResourceDamageBoost, excessResourceDamageBoostMax);
		}
	}
}