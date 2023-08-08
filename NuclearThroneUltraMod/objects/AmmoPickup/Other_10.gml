/// @description Collect AMMO
if !instance_exists(Player)
	exit;
//if max ammo?&&50% of time
scrCollectAmmo(1, cursed, supercursed);
if scrIsCrown(32)//Crown of misfortune
	scrCollectHP(2);
else
	instance_create(x,y,SmallChestPickup);

instance_destroy();