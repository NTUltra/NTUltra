alarm[1] = actTime+random(actTime)
canDodge = true;
if my_health <= maxhealth * 0.5 && !run
{
	run = true;
	event_user(1);
	exit;
}
scrTarget()
if target != noone && instance_exists(target)
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if random(4)<1//shift dodgy movement
		{
			move_contact_solid(direction+choose(90,-90),shifty)
		}
		
		if alarm[2] < 1 && alarm[11] < 1 && point_distance(target.x,target.y,x,y) < 70 && point_distance(target.x,target.y,x,y) > 24 {//SMACK THAT
			gunangle = point_direction(x,y,target.x,target.y);
			alarm[2]=26-smackdelayReduction
			snd_play(sndAssassinGetUp);
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
			instance_create(x-5,y,Notice);
			alarm[1]=36-smackdelayReduction;
			speed = smackMoveSpeed;
			walk = 0;
			dodge = 0;
		}
		else
		{
			motion_add(point_direction(target.x,target.y,x,y)+random(20)-10,acc);
			walk = 30+random(10)
			speed = maxSpeed - 1;
			gunangle = point_direction(x,y,target.x,target.y)
		}

		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	else if alarm[2] < 1 && alarm[11] < 1 && point_distance(target.x,target.y,x,y) < 70 && alarm[5] < 1
	{//SMACK THAT ANYWAYS WE CAN GO THROUGH WALLS FK THAT SHIT
		gunangle = point_direction(x,y,target.x,target.y)
		alarm[2]=33-smackdelayReduction
		snd_play(sndAssassinGetUp);
		instance_create(x,y,Notice);
		instance_create(x+5,y,Notice);
		instance_create(x-5,y,Notice);
		alarm[1]=38-smackdelayReduction;
		
	}
	else if random(4) < 1
	{
		motion_add(random(360),0.4)
		walk = 5+random(10)
		alarm[1] = walk+random(7)
		//gunangle = direction

		if hspeed > 0
		right = 1
		else if hspeed < 0
		right = -1
	}
	else if random(3) < 1
	{
		event_user(0);
		alarm[1] += actTime;
	}
	else
	{
		event_user(1);
	}
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+10+random(30)
	if alarm[2] < 1
		gunangle = direction
	
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}

