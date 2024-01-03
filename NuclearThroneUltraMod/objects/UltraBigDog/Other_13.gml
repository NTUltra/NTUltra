/// @description Stop spin Fire a rocket towards player if behind wall
scrTarget();
if target != noone && instance_exists(target)
{
	if collision_line(x,y,target.x,target.y,Wall,false,false)
	{
		snd_play(sndRocket)
		var rocketDir = point_direction(x,y,target.x,target.y);
		with instance_create(x,y,UltraBigDogRocket)
		{
			motion_add(rocketDir,2);
			image_angle = direction
			team = other.team
		}
	}
}
