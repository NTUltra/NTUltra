scrTarget()
if target != noone && alarm[0] < 1
{
	if point_distance(x,y,target.x,target.y) < 160 && collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if UberCont.normalGameSpeed == 60
			timer += 0.5
		else
			timer += 1
		if sprite_index == sprDeskIdle && !instance_exists(Portal) and timer > 35
		{
			sprite_index = sprDeskIdleTrans;
		}
	}
}