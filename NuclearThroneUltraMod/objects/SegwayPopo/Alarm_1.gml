alarm[1] = actTime+random(actTime)//20 20
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if team=2
	scrRogueTarget()
else
	scrTarget();



if target != noone
{

	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		gunangle = point_direction(x,y,target.x,target.y)
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
		lastx = target.x
		lasty = target.y
		with Player
		{
			if place_meeting(x,y,PopoTangle)
				other.stuck=true;
			else
				other.stuck=false;
		}
		if wasBehindWall && !stuck
		{
			wasBehindWall = false;
			alarm[1] += 10;
			exit;
		}
		//SEE PLAYER AND FAR ENOUGH AND NOT SHOUTING "FREEZE MOTHERFUCKER"
		if freeze > 10 and point_distance(x,y,target.x,target.y)<120
		{
			//FIRE
			instance_create(x-5,y,Notice);
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
			snd_play(sndWarning);
			alarm[2] = tellTime;
			alarm[1] += alarm[2] + actTime;
		}
		else if stuck
		{
			//hes stuck go to him and kill em!
			motion_add(point_direction(x,y,target.x,target.y),1);
			gunangle = point_direction(x,y,target.x,target.y);
			alarm[1]=8+random(10);
			walk=alarm[1]+random(8);
		}
		else if random(2)<1
		{
		//DONT FIRE

		if point_distance(x,y,target.x,target.y) > 100 && random(2)<1&&!instance_exists(PopoTangle)&&!instance_exists(PopoSeed)
		{
			with PopoTangle
				instance_destroy()
			with PopoSeed
				instance_destroy()
			gunangle = point_direction(x,y,target.x,target.y)
			snd_play(sndIDPDSnare);
			with instance_create(x + lengthdir_x(6,gunangle),y + lengthdir_y(6,gunangle),PopoSeed)
			{
				motion_add(point_direction(x,y,other.target.x,other.target.y),9)
				image_angle = direction
				team = other.team
			}

			}
			else if point_distance(x,y,target.x,target.y) > 100&&random(4)<1
			{
				direction = point_direction(x,y,target.x,target.y)+random(50)-25
				alarm[1]=10+random(30)
				walk=alarm[1]-random(20);
				gunangle = point_direction(x,y,target.x,target.y)
			}
			else if random(3)<1
			{
				gunangle = point_direction(x,y,target.x,target.y)
				direction = point_direction(x,y,target.x,target.y)+180+random(50)-25
				speed = 1;
				walk = 8+random(8)
				if freeze < 40
					alarm[1] += random(25)
			}
		}
		else if random(2)<1
		{//move to the player
			motion_add(point_direction(x,y,target.x,target.y),0.8);
			gunangle = point_direction(x,y,target.x,target.y);
			mp_potential_step(target.x,target.y,1,false);
			walk = 20+random(10)
		}

	}
	else 
	{
		wasBehindWall = true;
		//DONT SEE PLAYER
		if random(6) < 1
		{
			//WALK
			motion_add(random(360),0.4)
			walk = 20+random(10)
			gunangle = direction
				if hspeed > 0
					right = 1
				else if hspeed < 0
					right = -1
		}
		else if random(3) < 1
		{
			mp_potential_step(target.x,target.y,2,false);
		}
		/*
		else if random(20+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 and ((point_distance(lastx,lasty,target.x,target.y) < 96 and point_distance(x,y,lastx,lasty) > 64)or random(12) < 1)
		{
			grenades -= 1
			//GRENADE
			gunangle = point_direction(x,y,lastx,lasty)
			if male
			snd_play(sndGruntThrowNadeM)
			else
			snd_play(sndGruntThrowNadeF)
			wkick = 8
			
			with instance_create(x,y,PopoNade)
			{
				motion_add(other.gunangle+random(20)-10,10)
				image_angle = direction
				team = other.team
			}
		}*/
	}


}
else if random(14) < 1
{
	//NO TARGET
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+10+random(30)
	gunangle = direction
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

