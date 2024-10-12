/// @description TP ENEMS
with enemy
{
	if id != other.id
	{
		if team != 2
		{
			alarm[1] += 30;
			speed = 0;
			walk = 0;
			var d = point_direction(x,y,other.x,other.y);
			x += lengthdir_x(160,d);
			y += lengthdir_y(160,d);
		}
		scrTeleportToFloor();
	}
}