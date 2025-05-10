/// @description Disappear enemies
with IDPDSpawn
{
	instance_destroy(id,false);	
}
with enemy
{
	alarm[1] = max(alarm[1],30);
}
with Player
{
	alarm[3] = max(alarm[3],2);	
}
alarm[1] = 2;