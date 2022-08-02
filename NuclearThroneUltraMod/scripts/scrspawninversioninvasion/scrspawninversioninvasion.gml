///scrSpawnInversionInvasion();
// /@description
///@param
function scrSpawnInversionInvasion(thisMany,spawnList,thisFloorA,thisFloorB,thisFloorE){
	var mindis = 140//200//232;
	if instance_exists(Player) && instance_exists(Floor)
	{
		do {
			with Floor
			{
				var xx = x + 16;
				var yy = y + 16;
				if !instance_exists(InvaderInversionSpawnPortal) && point_distance(xx,yy,Player.x,Player.y) > mindis
				{
					with instance_create(xx,yy,InvaderInversionSpawnPortal)
					{
						whatToSpawn = spawnList;
						floorA = thisFloorA;
						floorB = thisFloorB;
						floorE = thisFloorE;
					}
				}
				else if instance_exists(InvaderInversionSpawnPortal)
				{
					if instance_number(InvaderInversionSpawnPortal) == thisMany
						continue;
					var n = instance_nearest(xx,yy,InvaderInversionSpawnPortal);
					if point_distance(xx,yy,n.x,n.y) > mindis && point_distance(xx,yy,Player.x,Player.y) > mindis
					{
						with instance_create(xx,yy,InvaderInversionSpawnPortal)
						{
							whatToSpawn = spawnList;
							floorA = thisFloorA;
							floorB = thisFloorB;
							floorE = thisFloorE;
						}
					}
				}
			}
			mindis -= 32;
		} until (instance_number(InvaderInversionSpawnPortal) == thisMany || mindis < 64)
	
		if !instance_exists(InvaderInversionSpawnPortal) || instance_number(InvaderInversionSpawnPortal) < thisMany
		{
			var d = 0;
			do 
			{
				var far = instance_furthest(Player.x,Player.y,Floor);
				var dir = point_direction(Player.x,Player.y,far.x,far.y);
				var dis = point_distance(Player.x,Player.y,far.x,far.y)*d;
				var xx = Player.x + lengthdir_x(dis,dir);
				var yy = Player.y + lengthdir_y(dis,dir);
				with instance_create(instance_nearest(xx,yy,Floor).x+16, instance_nearest(xx,yy,Floor).y+16,InvaderInversionSpawnPortal)
				{
					whatToSpawn = spawnList;
					floorA = thisFloorA;
					floorB = thisFloorB;
					floorE = thisFloorE;
				}
				d += 0.27;
			} until (instance_number(InvaderInversionSpawnPortal) == thisMany)
		}
	}
}