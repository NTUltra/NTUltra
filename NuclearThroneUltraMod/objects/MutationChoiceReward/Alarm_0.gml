/// @description Take over the screen
if instance_exists(Player)
{
	instance_create(x,y,RadiationCrystalCollectionTutorial);
	with projectile
	{
		instance_destroy(id,false);	
	}
	with Player
	{
		lockout = true;	
	}
}
else
{
	alarm[0] = 2;	
}
