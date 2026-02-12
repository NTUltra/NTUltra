/// @description Collect AMMO
event_inherited();
if !instance_exists(Player) || !canCollect
	exit;
	
rerolls = 0;
//if max ammo?&&50% of time
if instance_exists(Player) && Player.skill_got[3]
{
	with instance_create(x,y,SmallChestPickup)
	{
		sprite_index = sprSmallChestPickupUpg;
		image_angle = other.image_angle;
		motion_add(image_angle - 90,2);
	}
}
else
	with instance_create(x,y,SmallChestPickup){
		image_angle = other.image_angle;
		motion_add(image_angle - 90,0.5);
	}
if scrIsCrown(32)//Crown of misfortune
{
	if scrIsCrown(5)//Crown of guns
	{
		scrCollectAmmo(ammoValue * 0.5, cursed, supercursed);
	}
	else
	{
		scrCollectAmmo(ammoValue * 1.25, cursed, supercursed);
	}
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
			if !scrIsCrown(2) || random(2) < 1
				scrCollectHP(1,0.25);
		}
	}
	else
	{
		if !scrIsCrown(2) || random(2) < 1
			scrCollectHP(1,0.25);
	}
}
else
{
	scrCollectAmmo(ammoValue, cursed, supercursed);
}
if isBeingVoided != 1
		instance_destroy()