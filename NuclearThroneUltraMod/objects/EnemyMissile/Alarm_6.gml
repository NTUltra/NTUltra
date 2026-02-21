/// @description xxx
alarm[6] = 1;

if instance_exists(Player)
{

if alarm[0]<1
	target=Player

if target!=0
{

	motion_add(point_direction(x,y,target.x,target.y),0.35);

	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		target = instance_nearest(x,y,Player);
		if point_distance(x,y,target.x,target.y) < 64
			speed *= 0.5;
	}
	else
	{
		target=0
		if instance_exists(Wall)
		{
		var WALL;
		WALL=instance_nearest(x,y,Wall);
		if WALL != noone &&  point_distance(x,y,WALL.x,WALL.y)<32
			motion_add(point_direction(x,y,WALL.x,WALL.y)+180,point_distance(x,y,WALL.x,WALL.y)*0.02);//move away from wall
		}
	}
	
}

}
motion_add(direction,1);

if alarm[3] < 20
	speed = 0;
else
	image_angle=direction;