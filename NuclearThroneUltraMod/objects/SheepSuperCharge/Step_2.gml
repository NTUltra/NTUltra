/// @description Hold the player hostage
if forcePlayer
{
	with Player
	{
		x = other.x;
		y = other.y;
		alarm[3] = max(alarm[3],8);
		meleeimmunity = max(meleeimmunity,8);
	}
}
speed = maxSpeed;