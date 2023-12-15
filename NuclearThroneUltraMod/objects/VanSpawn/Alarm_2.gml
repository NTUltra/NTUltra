/// @description Decide dir
if instance_exists(Player)
{
	if vertical
	{
		if Player.y < y//Up
		{
			right = 1
		}
		else//Down
		{
			right = -1;
		}
	}
	else
	{
		if Player.x > x//right
		{
			right = 1
		}
		else//left
		{
			right =- 1;
		}
	}
}