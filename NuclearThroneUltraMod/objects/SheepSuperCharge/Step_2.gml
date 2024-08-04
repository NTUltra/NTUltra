/// @description Hold the player hostage
if forcePlayer
{
	with Player
	{
		x = other.x;
		y = other.y;
		alarm[3] = max(alarm[3],6);
		meleeimmunity = max(meleeimmunity,6);
	}
}
speed = maxSpeed;