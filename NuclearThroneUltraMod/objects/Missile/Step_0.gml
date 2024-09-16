if !instance_exists(Player)
{instance_destroy();exit;}
motion_add(direction,2);
if instance_exists(enemy)
{
	if Player.skill_got[19]//eagle eyes
	{
		if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0
			target=instance_nearest(x,y,enemy);
		else
		{
			target=noone
			if instance_exists(Wall)
				{
					var WALL;
					WALL=instance_nearest(x,y,Wall);
					if WALL != noone &&  point_distance(x,y,WALL.x,WALL.y)<32
						motion_add(point_direction(x,y,WALL.x,WALL.y)+180,point_distance(x,y,WALL.x,WALL.y)*0.02);//move away from wall
				}
		}
	}
	else if alarm[0]<1
		target=instance_nearest(x,y,enemy);

	if target!=noone &&  instance_exists(target) && target.team != 2
		motion_add(point_direction(x,y,target.x,target.y),0.7+Player.skill_got[19]);
}
if speed > maxSpeed
	speed = maxSpeed

image_angle=direction;
