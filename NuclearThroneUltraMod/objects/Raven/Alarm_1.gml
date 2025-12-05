alarm[1] = actTime + random(actTime);

scrTarget()
if target != noone && instance_exists(target)
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if wasBehindWall
		{
			alarm[1] += 10;
			wasBehindWall = false;
			exit;
		}
		if point_distance(target.x,target.y,x,y) > minRange
		{
			if random(4) < 1 && point_distance(target.x,target.y,x,y) < maxRange
			{
				//FIRE
				alarm[2] = 1;
				ammo = maxAmmo
				gunangle = point_direction(x,y,target.x,target.y)
			}
			else
			{
				if random(5) < 1
					snd_play(sndRavenScreech)
				direction = point_direction(x,y,target.x,target.y)+random(90)-45
				speed = 0.4
				walk = 20+random(10)
				gunangle = point_direction(x,y,target.x,target.y)

				scrTarget()
				if random(5) < 1 and target != noone && instance_exists(target) && instance_exists(Wall)
				{
					with Raven
					{
						if id != other.id && target != noone && instance_exists(target) and point_distance(x,y,other.x,other.y) < 120
						{
							if collision_line(other.target.x,other.target.y,x,y,Wall,false,false) < 0 and random(3) < 1
								scrRavenLift()
						}
					}
				}
			}
		}
		else
		{
		direction = point_direction(target.x,target.y,x,y)+180+random(20)-10
		speed = 0.4
		walk = 40+random(10)
		gunangle = point_direction(x,y,target.x,target.y)
		}

		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	else if instance_number(enemy) < 10
	{
		wasBehindWall = true;
		var t = target;
		if instance_exists(Player)
		{
			target = Player;
			targetx = Player.x;
			targety = Player.y;
			image_index = 0;
		    nofly = 50;
			alarm[2] = 0;
		
			scrChangeRaven(ravenFly)
		}
		target = t;
	} 
	else if random(3) < 1
	{
		wasBehindWall = true;
		motion_add(random(360),0.4)
		walk = 20+random(10)
		alarm[1] = walk+10+random(30)
		gunangle = direction
		if hspeed > 0
			right = 1
		else if hspeed < 0
			right = -1
	}
	else if instance_number(enemy)<5 && random(4)<1
	{
		wasBehindWall = true;
		scrRavenLift()
		with instance_furthest(x,y,Raven)
			scrRavenLift()
	}
	else if (my_health < maxhealth or random(50) < 1) and random(4) < 1
	{
		wasBehindWall = true;
		scrRavenLift()
		with instance_furthest(x,y,Raven)
			scrRavenLift()
	}
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+10+random(30)
	gunangle = direction
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

