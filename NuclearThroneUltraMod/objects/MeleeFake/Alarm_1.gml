alarm[1] = 1;
scrTarget()
if target != noone
{
	if point_distance(x,y,target.x,target.y) < wakeRange and !instance_exists(Portal) and collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		instance_destroy(id,false);
		with instance_create(x,y,wakeObject)
		{
			my_health = other.my_health;
			alarm[1] = other.wakeTime;
			existTime = 30;
			if instance_exists(Player)
			{
				if Player.skill_got[29]	//Insomnia
				{
					alarm[1] += 30;
					with instance_create(x,y,Snooze)
					{
						owner = other.id;
						depth = other.depth - 1;
						yoffset = 0;
					}
				}
			}
		}
	}
}

if image_index < 1
{
	var r = random(0.02);
	if UberCont.normalGameSpeed == 60
		r *= 0.5;
	image_index += r;
}
else
{
	if !sound_isplaying(sndAssassinPretend) and random(12) < 1 and x > __view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{
		snd_play(sndAssassinPretend)
	}
	if UberCont.normalGameSpeed == 60
		image_index += 0.2
	else
		image_index += 0.4
}
if speed > 2
	speed = 2;



