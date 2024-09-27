/// @description Multi crown
if instance_exists(Player)
{
	instance_create(x,y,MultiCrownTutorial);
	with projectile
	{
		instance_destroy(id,false);	
	}
}
else
{
	alarm[2] = 2;	
}