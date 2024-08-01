/// @description Reposition
with Player
{
	mask_index = other.msk;
	if !collision_point(x,y,Floor,false,false) || place_meeting(x,y,WallHitMe)
	{
		var n = instance_nearest(x,y,Floor);
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
			{
				o = 8;
			}
			x = n.x + o;
			y = n.y + o;
			scrForcePosition60fps();
		}
	}
	alarm[3] = max(alarm[3], 4);
}
with PlayerSpawn
{
	mask_index = other.msk;	
}