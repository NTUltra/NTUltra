/// @description Disappear enemies
with IDPDSpawn
{
	instance_destroy(id,false);	
}
with enemy
{
	if team != 2
		instance_destroy(id,false);	
}