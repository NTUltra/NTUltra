/// @description Enemy out of place
alarm[10] = 120;
if instance_exists(Player)
{
	with enemy {
		if ((!canFly && !collision_point(x,y,Floor,false,false)) || (canFly && point_distance(Player.x,Player.y,x,y) > 550))
		{
			var n = instance_nearest(x,y,Floor)
			if n != noone {
				var o = 16;
				if n.object_index = FloorExplo
					o = 8;
				x = n.x + o;
				y = n.y + o;
				scrForcePosition60fps();
			}
			isStuck = false;
		}
		else if !canFly && place_meeting(x,y,WallHitMe)
		{
			if isStuck
			{
				with instance_place(x,y,WallHitMe)
				{
					instance_destroy();
					instance_create(x,y,FloorExplo);
				}
			}
			else
			{
				isStuck = true;	
			}
		}
		else
		{
			isStuck = false;	
		}
	}
	if !instance_exists(WallRemover) && instance_exists(WallHitMe)
	{
		with Player
		{
			if place_meeting(x,y,WallHitMe) || !place_meeting(x,y,Floor)
			{
				if other.playerOutOfPlace
				{
					instance_create(x,y,SmallWallBreak);
					alarm[3] = max(10,alarm[3]);
					scrTeleportToFloor();	
				}
				other.playerOutOfPlace = true;
			}
			else
			{
				other.playerOutOfPlace = false;	
			}
		}
	}
}