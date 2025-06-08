///@description AI
alarm[1] = actTime+random(actTime)//30 + 10
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;


scrTarget()
if target != noone
{
	if firstTime
	{
		if point_distance(x,y,target.x,target.y) < 300
		{
			alarm[3] = jellyDelay;
			firstTime = false;
			instance_create(x,y,DramaCamera);
		}
		else
		{
			exit;	
		}
	}
	if alarm[3] < 1
		alarm[3] = alarm[3] = jellyMaxAmmoDelay;
	if random(3) < 1
		direction = random(360)
	if collision_line(x,y,target.x,target.y,Wall,0,0) && alarm[4] < 1 && alarm[5] < 1
	{
		event_user(1);
	}
	else if point_distance(x,y,target.x,target.y) < 300 && alarm[2] < 1
	{
		ammo = maxAmmo
		alarm[2] = tellTime
		snd_play(sndLaserCrystalCharge)
		sprite_index = spr_fire
		alarm[1] += tellTime + actTime;
		motion_add(4,point_direction(x,y,target.x,target.y));
	}
	else
	{
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
			direction = point_direction(x,y,target.x,target.y)
		else
			direction = choose(direction,point_direction(x,y,target.x,target.y)+90+random(180))
	}
	if alarm[4] < 1 && alarm[2] < 1 && alarm[5] < 1 && random(4) < 1
	{
		event_user(1);	
	}
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	alarm[1] += actTime;
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

