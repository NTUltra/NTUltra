/// @description Bolt
BackCont.shake += 3;
wkick = 5
scrTarget();
if instance_exists(target) && target != noone
{
	if point_distance(x,y,target.x,target.y) > 150
	{
		snd_play_fire(sndCrossbow)
		with instance_create(x,y,Bolt)
		{
			motion_add(other.gunangle,24)
			image_angle = direction
			team = other.team
		}
		alarm[1] = actTime + random(actTime * 2);
	}
	else if point_distance(x,y,target.x,target.y) > 96
	{
		snd_play_fire(sndCrossbow)
		with instance_create(x,y,Bolt)
		{
			motion_add(other.gunangle,18)
			image_angle = direction
			team = other.team
		}
		alarm[1] = actTime * 2 + random(actTime);
	}
	else
	{
		with instance_create(x,y,EnemySplinterBurst)
		{
			totalAccuracy = 14;
			creator = other.id
			ammo = 5
			time = 1
			team = other.team
			event_perform(ev_alarm,0) 
			alarm[1] = 3;
		}
		alarm[1] = actTime * 2 + random(actTime);
	}
	gunangle = point_direction(x, y, target.x, target.y);
}
	