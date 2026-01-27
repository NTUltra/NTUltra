/// @description scrExcessResource
function scrExcessResource(resourceType, excessAmount, excessHealReduction = 1){
	return;
	/*resourceType
	0 = health;
	1 = ammo 0; melee
	2 = ammo 1; bullet
	3 = ammo 2; shotgun
	4 = ammo 3; crossbow
	5 = ammo 4; explosive
	6 = ammo 5; energy
	7 = rad
	8 = armour
	9 = cash
	10 = voidbeam
	11 = portal strike ammo
	12 = rage
	*/
	//Bullet is 0.001%;
	// 1 bullet is equal to 4,636363636363636‬ shotgun ammo
	//Shotgun is ammovalue * 4.636363636363636 <= this number is gathered by dividing both max ammos 255/55 = 4.636363636363636
	//So if i want bullet to be 0.001% I want for shotgun 0.001%*4,636363636363636‬
	var theExcess = max(0,excessAmount);
	with Player
	{
		if skill_got[488]
		{
			if instance_exists(PlayerAlarms3) && PlayerAlarms3.alarm[7] > 0
			{
				with PlayerAlarms3
				{
					if !forceEarlyInit
					{
						forceEarlyInit = true;
						event_perform(ev_alarm,7);
						alarm[7] = 0;
					}
				}
			}
			snd_play_2d(sndExcessResource,0.1);
			var resourceConversionMultiplier = 1;
			var equippedTypeAddition = 0.75;
			var addDmgBoost = 0;
			var am = 0;
			if race == 25
				resourceConversionMultiplier = 1.15;
			if excessResourceDamageBoost < 0.1
				resourceConversionMultiplier += 0.1;
			else if excessResourceDamageBoost > 0.35
				resourceConversionMultiplier -= 0.12;
			resourceConversionMultiplier *= excessHealReduction;
			switch (resourceType)
			{
				case 0://Health
					excessHealth += theExcess;
					//1 health = 4%
					addDmgBoost += theExcess * 0.04 * resourceConversionMultiplier;
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 1;
						colour[1] = 0;
						colour[2] = 0;
						owner = other.id;
						sprite_index = other.sprite_index;
					}
				break;
				case 1://Melee Ammo
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessAmmo[0] += theExcess;
					am = theExcess * 0.0023181818181816 * resourceConversionMultiplier
					//1 Melee ammo = 0.07% * 3
					addDmgBoost += am;
					if scrMeleeWeapons(wep)
						addDmgBoost += am * equippedTypeAddition;
					if scrMeleeWeapons(bwep)
						addDmgBoost += am * equippedTypeAddition;
					if scrMeleeWeapons(cwep)//Is an equipped weapoon type?
						addDmgBoost += am * equippedTypeAddition;
				break;
				case 2://Bullet Ammo
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessAmmo[1] += theExcess;
					//1 Bullet ammo = 0.01% * 3
					am = theExcess * 0.0003 * resourceConversionMultiplier
					addDmgBoost += am
					if wep_type[wep] == 1
						addDmgBoost += am * equippedTypeAddition
					if wep_type[bwep] == 1 
						addDmgBoost += am * equippedTypeAddition
					if wep_type[cwep] == 1//Is an equipped weapoon type?
						addDmgBoost += am * equippedTypeAddition
				break;
				case 3://Shotgun Ammo
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessAmmo[2] += theExcess;
					//1 Shotgun ammo = 0.046%*3
					am = theExcess * 0.001390909090908 * resourceConversionMultiplier
					addDmgBoost += am
					if wep_type[wep] == 2
						addDmgBoost += am * equippedTypeAddition
					if wep_type[bwep] == 2 
						addDmgBoost += am * equippedTypeAddition
					if wep_type[cwep] == 2//Is an equipped weapoon type?
						addDmgBoost += am * equippedTypeAddition
				break;
				case 4://Bolt Ammo
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessAmmo[3] += theExcess;
					//1 Bolt ammo = 0.046%*2
					am = theExcess * 0.001390909090908 * resourceConversionMultiplier
					addDmgBoost += am
					if wep_type[wep] == 3
						addDmgBoost += am * equippedTypeAddition
					if wep_type[bwep] == 3 
						addDmgBoost += am * equippedTypeAddition
					if wep_type[cwep] == 3//Is an equipped weapoon type?
						addDmgBoost += am * equippedTypeAddition
				break;
				case 5://Explosive Ammo
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessAmmo[4] += theExcess;
					//1 Explosive ammo = 0.046%*2
					am = theExcess * 0.001390909090908 * resourceConversionMultiplier
					addDmgBoost += am
					if wep_type[wep] == 4
						addDmgBoost += am * equippedTypeAddition
					if wep_type[bwep] == 4 
						addDmgBoost += am * equippedTypeAddition
					if wep_type[cwep] == 4//Is an equipped weapoon type?
						addDmgBoost += am * equippedTypeAddition
				break;
				case 6://Energy Ammo
				with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessAmmo[5] += theExcess;
					//1 Energy ammo = 0.046%*2
					am = theExcess * 0.001390909090908 * resourceConversionMultiplier
					addDmgBoost += am
					if wep_type[wep] == 5
						addDmgBoost += am * equippedTypeAddition
					if wep_type[bwep] == 5 
						addDmgBoost += am * equippedTypeAddition
					if wep_type[cwep] == 5//Is an equipped weapoon type?
						addDmgBoost += am * equippedTypeAddition
				break;
				case 7://Rad
					excessRad += theExcess;
					
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 0;
						colour[1] = 1;
						colour[2] = 0;
						owner = other.id;
						alphaIncrease += 0.2;
						alpha += 0.1;
						scale += 0.2;
						scaleIncrease += 0.04;
						fullTimeDelay = 2;
						sprite_index = other.sprite_index;
					}
					//Before max level 0.1%
					if level < maxlevel
						addDmgBoost += theExcess * 0.001 * resourceConversionMultiplier;
					else//1 Rad = 0.0007%
						addDmgBoost += theExcess * 0.000007 * resourceConversionMultiplier;
				break;
				case 8://Armour
					excessArmour += theExcess;
					//1 armour = 5.5%
					addDmgBoost += theExcess * 0.055;
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 0.61;
						colour[1] = 0.64;
						colour[2] = 0.8;
						owner = other.id;
						sprite_index = other.sprite_index;
					}
				break;
				case 9://Cash
					excessCash += theExcess;
					//1 Cash = 0.005%
					addDmgBoost += theExcess * 0.00005 * resourceConversionMultiplier;
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 0.80;
						colour[1] = 0.65;
						colour[2] = 0.11;
						owner = other.id;
						alphaIncrease += 0.2;
						alpha += 0.1;
						scale += 0.25;
						scaleIncrease += 0.04;
						fullTimeDelay = 2;
						sprite_index = other.sprite_index;
					}
				break;
				case 10://VoidBeam
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 0.125;
						colour[1] = 0.2;
						colour[2] = 0.25;
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessVoidBeam += theExcess;
					//1 VoidBeam = 0.005%
					addDmgBoost += theExcess * 0.00005 * resourceConversionMultiplier;
				break;
				case 11://Portal strike ammo
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 0.09;
						colour[1] = 0.40;
						colour[2] = 0.88;
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessPortalStrikeAmmo += theExcess;
					//1 Portal strike = 3.5%
					addDmgBoost += theExcess * 0.035 * resourceConversionMultiplier;
				break;
				case 12://Rage
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 1;
						colour[1] = 0.4;
						colour[2] = 0.078;
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					excessRage += theExcess;
					//1 Rage = 0.15% thats 10 kills at max rage gives 1.5% damage boost
					addDmgBoost += theExcess * 0.0015 * resourceConversionMultiplier;
				break;
				case 13://Hammerhead charges
					with instance_create_depth(x,y,depth + 1, GainExcessResource)
					{
						colour[0] = 0.68;
						colour[1] = 0.31;
						colour[2] = 0.725;
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					//1 Hammerhead = 0.33% hammerheadcounterMax = 27
					addDmgBoost += theExcess * 0.0033 * resourceConversionMultiplier;
				break;
			}
			if !instance_exists(GluttonousAdding)
			{
				instance_create(x,y,GluttonousAdding)
			}
			with GluttonousAdding
			{
				alarm[0] = clamp(alarm[0] + addDmgBoost * 150,minTime, 40);
			}
			if BackCont.shake < 10 * UberCont.opt_shake
				BackCont.shake += 1 + ceil(addDmgBoost * 20);
			excessResourceDamageBoost = min(excessResourceDamageBoost + addDmgBoost, excessResourceDamageBoostMax);
		}
	}
}