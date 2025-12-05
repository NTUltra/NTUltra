/// @description Keep alive
if instance_exists(GenCont) || instance_exists(SpiralCont)
{
	my_health = maxhealth;
	alarm[1] = 1;
	if !place_meeting(x,y,Floor)
	{
		scrTeleportToFloor();	
	}
}