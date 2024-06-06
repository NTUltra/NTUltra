/// @description Explosives
wkick = 4
var hasTarget = false;
scrTarget();
if target != noone && instance_exists(target)
{
	hasTarget = true;
	var ran = random(3) < 1
	if ran
	{
		snd_play(sndRocket);
		with instance_create(x,y,EnemyMissile)
		{
			motion_add(other.gunangle+random(30)-15,4)
			image_angle = direction
			team = other.team;
			alarm[8] = 10;
			maxSpeed = 3;
		}
	}
	else
	{
		snd_play(sndRocket);
		with instance_create(x,y,JockRocket)
		{
			maxSpeed = 8;
			motion_add(other.gunangle+random(20)-10,5)
			image_angle = direction
			team = other.team
		}
	}
}
	

if hasTarget
{
	gunangle = point_direction(x, y, target.x, target.y);
}

alarm[1] = actTime * 2 + random(actTime * 2);