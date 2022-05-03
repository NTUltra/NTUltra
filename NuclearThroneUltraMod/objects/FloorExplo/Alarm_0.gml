if place_meeting(x,y,Floor)
{
//if other.id > id
instance_destroy()
}
else
{
	if !instance_exists(GenCont)
	{
		with UberCont
		{
			wallsBroken += 1;
			if wallsBroken == 301
			{
				scrUnlockGameMode(20,"FOR BREAKING#MORE THAN 300 WALLS#IN ONE AREA")
			}
		}
		if canSpawnSwarm && instance_exists(Player) && Player.bskin == 0 && Player.ultra_got[106] && !instance_exists(SpiralCont)
		{
			//var m = instance_nearest_notme(x,y,Wall);
			//var d = point_direction(x,y,m.x,m.y)+180;
			debug("bolt please");
			with instance_create(x+8,y+8,SwarmBolt)
			{
				direction = random(360);
				image_angle = direction
				team = 2;
			}
		}
	}	
}
