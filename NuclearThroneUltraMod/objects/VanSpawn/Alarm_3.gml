/// @description SquareRight
if instance_exists(Player) && !RogueIDPD
{
	if vertical
	{
		if Player.y < y//Up
		{
			squareRight = 1
		}
		else//Down
		{
			squareRight = -1;
		}
	}
	else
	{
		if Player.x > x//right
		{
			squareRight = 1
		}
		else//left
		{
			squareRight =- 1;
		}
	}
}




