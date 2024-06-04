///scrDropNearby();
// /@description
///@param
function scrDropNearby(doprate, wepdroprate){
	var xx = x;
	var yy = y;
	if collision_point(x,y,Floor,false,false)
	{
		scrDrop(doprate,wepdroprate);
		event_inherited();
	}
	else
	{
		var len = 0;
		var dir = 0;
		if instance_exists(Player) {
			dir = point_direction(x,y,Player.x,Player.y);
			len = 16;
		}
		var n = instance_nearest(x + lengthdir_x(len,dir),y + lengthdir_y(len,dir),Floor);
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			if point_distance(x,y,n.x + o,n.y + o) < 128
			{
				x = n.x+o;
				y = n.y+o;
				scrDrop(doprate,wepdroprate);
				if instance_exists(Wall)
					instance_create(x,y,WallBreak);
				event_inherited()
				x = xx;
				y = yy;			
			}
		}
		else
		{
			x += lengthdir_x(len*2,dir);
			y += lengthdir_y(len*2,dir);
			scrDrop(doprate,wepdroprate)
			if instance_exists(Wall)
				instance_create(x,y,WallBreak);
			event_inherited();
			x = xx;
			y = yy;
		}
	}
	with myCorpse
	{
		x = other.x;
		y = other.y;
	}
}