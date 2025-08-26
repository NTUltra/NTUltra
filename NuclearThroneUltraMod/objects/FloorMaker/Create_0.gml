/// @description Init
firstTry = true;
myFloors = 0;
turnsTaken = 0;
endPieceSpawned = false;
spiral = 3;
instance_create(x,y,MarkFloorMaker);
if instance_number(FloorMaker) > 1 && instance_exists(Player) && (Player.area == 149 || Player.area == 150)
{
	with FloorMaker
	{
		if id != other.id
		{
			other.turnsTaken = turnsTaken;
			other.myFloors = myFloors;
			other.direction = direction;
			other.spiral = spiral;
		}
	}
}