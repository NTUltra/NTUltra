///scrSpawnInvaderBoss();
// /@description
///@param
function scrSpawnInvaderBoss(thisMany,whatBoss,thisFloorA,thisFloorB,thisFloorE,xOffset = 0,yOffset = 0){
	var mindis = 200//232;
	if instance_exists(Player)
	{
		do {
			with Floor
			{
				var xx = x + 16;
				var yy = y + 16;
				if !instance_exists(InvaderBossSpawnPortal) && point_distance(xx,yy,Player.x,Player.y > mindis)
				{
					with instance_create(xx,yy,InvaderBossSpawnPortal)
					{
						whatToSpawn = whatBoss;
						spawnOffsetX = xOffset;
						spawnOffsetY = yOffset;
						floorA = thisFloorA;
						floorB = thisFloorB;
						floorE = thisFloorE;
					}
				}
				else
				{
					if instance_number(InvaderBossSpawnPortal) == thisMany
						continue;
					var n = instance_nearest(xx,yy,InvaderBossSpawnPortal);
					if point_distance(xx,yy,n.x,n.y) > mindis && point_distance(xx,yy,Player.x,Player.y > mindis)
					{
						with instance_create(xx,yy,InvaderBossSpawnPortal)
						{
							whatToSpawn = whatBoss;
							spawnOffsetX = xOffset;
							spawnOffsetY = yOffset;
							floorA = thisFloorA;
							floorB = thisFloorB;
							floorE = thisFloorE;
						}
					}
				}
			}
			mindis -= 32;
		} until (instance_number(InvaderBossSpawnPortal) == thisMany || mindis < 64)
	
		if instance_number(InvaderBossSpawnPortal) < thisMany
		{
			var d = 0;
			do 
			{
				var far = instance_furthest(Player.x,Player.y,Floor);
				var dir = point_direction(Player.x,Player.y,far.x,far.y);
				var dis = point_distance(Player.x,Player.y,far.x,far.y)*d;
				var xx = Player.x + lengthdir_x(dis,dir);
				var yy = Player.y + lengthdir_y(dis,dir);
				with instance_create(instance_nearest(xx,yy,Floor).x+16, instance_nearest(xx,yy,Floor).y+16,InvaderBossSpawnPortal)
				{
					whatToSpawn = whatBoss;
					spawnOffsetX = xOffset;
					spawnOffsetY = yOffset;
					floorA = thisFloorA;
					floorB = thisFloorB;
					floorE = thisFloorE;
				}
				d += 0.27;
			} until (instance_number(InvaderBossSpawnPortal) == thisMany)
		}
	}
}