/// @description Replace with armour
// Inherit the parent event
event_inherited();
additionalRange = 0;
isArmour = false;

ammoValue = 1;
if instance_exists(Player)
{
	if Player.skill_got[9]
	{
		sprite_index = sprHPUpg;
		mask_index = mskWepPickup;
		additionalRange += 7;
		damageBoost += 1;
	}
	if Player.race == 25 && Player.skill_got[3]//DOCTOR
		mask_index = mskBigWepPickup;
	if Player.ultra_got[62] && Player.altUltra
	{
		//LIVING ARMOUR
		isArmour = true;
		sprite_index = sprArmourPickup;
		if scrIsCrown(32)//Misfortune
		{
			sprite_index = sprArmourAmmo;
		}
	}
	else if scrIsCrown(32)//Misfortune
	{
		sprite_index = sprHPAmmo;
	}
}



