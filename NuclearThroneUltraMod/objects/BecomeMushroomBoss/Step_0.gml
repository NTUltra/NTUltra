/// @description Wake up
scrTarget()
if target != noone && instance_exists(target)
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if UberCont.normalGameSpeed == 60
			timer += 0.5;
		else
			timer += 1
	}
	else if timer > 0//Added some form of sightloss
	{
		if UberCont.normalGameSpeed == 60
			timer -= 0.125;
		else
			timer -= 0.25
	}

	if point_distance(x,y,target.x,target.y) < 160 and !instance_exists(Portal) and timer > 300
	{
		instance_destroy()
	}
}

event_inherited()

