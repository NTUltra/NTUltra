/// @description Hold the player hostage
if forcePlayer
{
	with Player
	{
		x = other.x;
		y = other.y;
		alarm[3] = max(alarm[3],2);
		meleeimmunity = max(meleeimmunity,2);
	}
}
speed = maxSpeed;