///scrCreateMissingChest();
// /@description
///@param
function scrCreateMissingChest(typeOfChest, chestGoal){
	if !instance_exists(Player) || !instance_exists(Floor)
		return;
	var px = Player.x;
	var py = Player.y;
	var furthest = instance_furthest(px,py,Floor);
	var dis = point_distance(px,py,furthest.x,furthest.y);
	var dir = point_direction(px,py,furthest.x,furthest.y);
		while instance_number(typeOfChest) < chestGoal
		{
			var ran = choose(0.3,0.98)
			var useDis = dis * ran;
			with instance_nearest(px+lengthdir_x(useDis,dir),py+lengthdir_y(useDis,dir),Floor)
			{
				var o = 16;
				if object_index == FloorExplo
					 o = 8;
				instance_create(x+o,y+o,typeOfChest);
			}
		}
}