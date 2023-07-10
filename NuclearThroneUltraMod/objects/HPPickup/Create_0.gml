/// @description Replace with armour
// Inherit the parent event
event_inherited();

isArmour = false;

if instance_exists(Player)
{
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



