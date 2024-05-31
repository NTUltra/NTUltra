/// @description AI
alarm[1] = actTime+random(actTime)//20 20
sleeping = false;
if team=2
	scrRogueTarget()
else
	scrTarget();

if target != noone
{
	if !collision_line(x,y,target.x,target.y,Wall,0,0)
	{
		lastx = target.x;
		lasty = target.y;
		gunangle = point_direction(x,y,target.x,target.y)
		var dis = point_distance(x,y,target.x,target.y);
		if dis < goForSmackRange || stuck
		{
			//goForSmackRange
			with Player
			{
				if place_meeting(x,y,PopoTangle)
					other.stuck=true;
				else
					other.stuck=false;
			}
			//SEE PLAYER AND FAR ENOUGH AND NOT SHOUTING "FREEZE MOTHERFUCKER"
			if freeze > 10 and dis < smackDetectionRange
			{
				//SMACK
				instance_create(x-5,y,Notice);
				instance_create(x,y,Notice);
				instance_create(x+5,y,Notice);
				snd_play(sndWarning);
				speed = 0;
				walk = floor(smackTell * 0.5);
				motion_add(random(360),acc);
				alarm[3] = smackTell;
				alarm[1] = alarm[3] + actTime * 4;
				alarm[4] = actTime * 2;
			}
			else if stuck
			{
				//hes stuck go to him and kill em!
				motion_add(point_direction(x,y,target.x,target.y),2);
				mp_potential_step(target.x,target.y,1,false);
				walk = alarm[1];
			}
			else if random(2) < 1 && !instance_exists(PopoTangle) && !instance_exists(PopoSeed)
			{
				motion_add(random(360),acc);
				with PopoTangle
					instance_destroy()
				with PopoSeed
					instance_destroy()
				snd_play(sndIDPDSnare);
				with instance_create(x + lengthdir_x(6,gunangle),y + lengthdir_y(6,gunangle),ElitePopoSeed)
				{
					motion_add(other.gunangle,10)
					image_angle = direction
					team = other.team
				}
			}
			else
			{
				//move to the player
				motion_add(gunangle,acc);
				mp_potential_step(target.x,target.y,1,false);
				walk = actTime;
			}
		}
		else if random(2) < 1
		{
			//SHOOT
			walk = actTime * 2;
			direction = gunangle + choose(30,-30);
			alarm[2] = tellTime;
			alarm[1] = alarm[2] + actTime * 5;
		}
		else
		{
			//move to the player
			motion_add(gunangle,acc);
			mp_potential_step(target.x,target.y,1,false);
			walk = actTime * 3;
		}
	}
	else 
	{
		alarm[1] += actTime;
		motion_add(random(360),acc*0.75);
		//DONT SEE PLAYER
		if random(6) < 1
		{
			//WALK
			motion_add(random(360),2)
			vspeed *= 0.5;
			walk = actTime*2+random(actTime*2)
		}
		else if random(3) < 1
		{
			mp_potential_step(lastx,lasty,2,false);
		}
		else
		{
			motion_add(point_direction(x,y,lastx,lasty),acc);
		}
		if hspeed > 0
			gunangle = 0 + random_range(30,-30);
		else
			gunangle = 180 + random_range(30,-30);
	}
}
else if random(14) < 1
{
	//NO TARGET
	motion_add(random(360),2)
	vspeed *= 0.5;
	walk = actTime*2+random(actTime*2)
	if hspeed > 0
		gunangle = 0 + random_range(30,-30);
	else
		gunangle = 180 + random_range(30,-30);
}

