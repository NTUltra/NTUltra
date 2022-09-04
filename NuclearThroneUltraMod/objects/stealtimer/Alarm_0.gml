/// @description Thats enough now boy Get out of my house
if instance_exists(Player) && instance_exists(Floor)
{
	var n = instance_furthest(x,y,Floor)
	if n != noone
	{
		with n
		{
			var o = 16;
			if object_index == FloorExplo
				o = 8;
			instance_create(x+o,y+o,SmallWallBreak);
			instance_create(x+o,y+o,YVThiefStopper);
		}
	}
}