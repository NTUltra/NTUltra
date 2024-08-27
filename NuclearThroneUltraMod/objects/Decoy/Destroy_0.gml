/// @description Retarget
if instance_exists(Player)
{
	with enemy
	{
		target = instance_nearest(x,y,Player);
	}
}
else
{
	with enemy
	{
		target = -1;	
	}
}