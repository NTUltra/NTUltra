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
		if canSpawnSwarm && instance_exists(Player)
		{
			if (Player.bskin == 0 || Player.altUltra) && Player.ultra_got[106] && !instance_exists(SpiralCont)
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
			if instance_exists(Player) && Player.ultra_got[94] {
				snd_play(choose(sndFrost1,sndFrost2),0.3);
				var xx = x + 8;
				var yy = y + 8;
				with instance_create(xx,yy,IceFlame)
					team = 2;
				with instance_create(xx,yy,FreezeBullet)
				{
					motion_add(0,16)
					image_angle = direction
					team = 2
				}
				with instance_create(xx,yy,FreezeBullet)
				{
					motion_add(90,16)
					image_angle = direction
					team = 2
				}
				with instance_create(xx,yy,FreezeBullet)
				{
					motion_add(180,16)
					image_angle = direction
					team = 2
				}
				with instance_create(xx,yy,FreezeBullet)
				{
					motion_add(270,16)
					image_angle = direction
					team = 2
				}
			}
		}
	}	
}