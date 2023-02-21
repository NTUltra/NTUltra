/// @description Can be an armour chest I guess

// Inherit the parent event
event_inherited();

isArmour = false;

if instance_exists(Player)
{
	if Player.ultra_got[62] && Player.altUltra
	{
		//LIVING ARMOUR
		isArmour = true;
		sprite_index = sprArmourChest;
	}
}