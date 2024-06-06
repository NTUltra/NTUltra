/// @description Cleanse
if venomized
	with GameRender
	{
		venomized = false;	
	}

with EnemyVenom
{
	if owner == other.owner
		instance_destroy();
}