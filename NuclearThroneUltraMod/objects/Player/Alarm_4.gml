/// @description boiling veins indication
if boilingAmount > 0
{
	boilingAmount -= 1;
	
	if boilingAmount > 10
	{
		if boilingAmount == 28
			snd_play(sndVeinsPop);
		var n = instance_nearest(x,y,enemy);
		with instance_create(x,y,Flame)
		{
			motion_add(random(360),1+random(2));
			team = 2;
			if n != noone
				motion_add(point_direction(x,y,n.x,n.y),3);
		}
		if boilingAmount > 20
			with instance_create(x,y,Flame)
			{
				motion_add(random(360),1+random(2));
				team = 2;
				if n != noone
					motion_add(point_direction(x,y,n.x,n.y),4);
			}
	}
	else
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(random(360),1+random(2))
			team = 2;
		}	
	}
	alarm[4] = 1;
}