/// @description Collect AMMO
if !instance_exists(Player)
	exit;
	
rerolls = 0;
//if max ammo?&&50% of time

instance_create(x,y,SmallChestPickup);
if scrIsCrown(32)//Crown of misfortune
{
	scrCollectAmmo(ammoValue * 1.25, cursed, supercursed);
	var stoppedVenom = false;
	with EnemyVenom
	{
		if venomized
		{
			stoppedVenom = true;
			instance_destroy();	
		}
	}
	if stoppedVenom
	{
		if instance_exists(Player) && Player.skill_got[9]
		{
			scrCollectHP(1);
		}
	}
	else
	{
		if scrIsCrown(2)
			scrCollectHP(1);
		else
			scrCollectHP(2);
	}
}
else
{
	scrCollectAmmo(ammoValue, cursed, supercursed);
}

instance_destroy();