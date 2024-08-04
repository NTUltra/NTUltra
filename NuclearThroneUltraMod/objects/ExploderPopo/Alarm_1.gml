///@description AI
alarm[1] = actTime+random(actTime)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;

if team == 2
scrRogueTarget()
else
scrTarget();

if target != noone
{
	var tdis = point_distance(x,y,target.x,target.y);
	var tdir = point_direction(x,y,target.x,target.y);
	if tdis < 350
	{
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
		{
			gunangle = tdir;
			if target.x < x
				right = -1
			else if target.x > x
				right = 1
			lastx = target.x
			lasty = target.y
			//SEE PLAYER AND FAR ENOUGH AND NOT SHOUTING "FREEZE MOTHERFUCKER"
			var ran = random(3);
			if ran < 1 and freeze > 40
			{
				//FIRE
				snd_play(sndFlakCannon);
				snd_play(sndGruntFire)
				wkick = 4
				with instance_create(x,y,IDPDHandCannonBullet) {
					motion_add(other.gunangle+random(6)-3,7)
					image_angle = direction
					team = other.team;
					if team == 2
						sprite_index = sprHandCannonBulletRogueIDPD;
				}

				alarm[1] += actTime*4;
				alarm[2] = actTime;
			}
			else if ran < 2
			{
				//DONT FIRE
				if tdis > 48
					direction = tdir+random(50)-25
				else
					direction = tdir+180+random(50)-25
				speed = 0.4
				walk = actTime*2;
				if freeze < 40
					alarm[1] += random(30)
			}
			else
			{
				//SPLODE A CORPSE
				event_user(0);
			}
		}
		else 
		{
			//DONT SEE target
			if random(8) < 1
			{
				//WALK
				motion_add(random(360),0.4)
				walk = actTime*2;
				gunangle = direction
				if hspeed > 0
					right = 1
				else if hspeed < 0
					right = -1
			}
			else if freeze > 40 && tdis < 250 && tdis > 32
			{
				//SPLODE A CORPSE
				event_user(0);
			}
		}
	}
	else if random(10) < 1
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
}
else if random(10) < 1
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

