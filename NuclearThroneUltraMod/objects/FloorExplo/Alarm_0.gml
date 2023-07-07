var ground = instance_place(x,y,Floor);
if ground != noone && ground.id > id
{
	instance_destroy();
}
else
{
	
	var wall = instance_place(x,y-8,Wall);
	if wall != noone
	{
		wall.visible = true;
	}
	wall = instance_place(x,y-16,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
	wall = instance_place(x,y+16,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
	wall = instance_place(x+16,y,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
	wall = instance_place(x-16,y,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
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
			var m = instance_nearest(x,y,Wall);
			if m != noone
			{
			var d = point_direction(x,y,m.x,m.y)+180;
			}
			else
			{
				var d = random(360);	
			}
			with instance_create(x+8,y+8,SwarmBolt)
			{
				direction = d//random(360);
				image_angle = direction
				team = 2;
			}
		}
	}	
}
