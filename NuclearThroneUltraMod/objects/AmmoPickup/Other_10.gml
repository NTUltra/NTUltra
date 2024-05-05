/// @description Collect AMMO
if !instance_exists(Player)
	exit;
	
rerolls = 0;
//if max ammo?&&50% of time
scrCollectAmmo(ammoValue, cursed, supercursed);
if scrIsCrown(32)//Crown of misfortune
{
	if scrIsCrown(2)
		scrCollectHP(1);
	else
		scrCollectHP(2);
}
else
	instance_create(x,y,SmallChestPickup);

instance_destroy();