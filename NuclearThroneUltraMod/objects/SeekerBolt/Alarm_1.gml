scrBoltTrail(theColour,0.1,1.5);
if !instance_exists(Player)
{instance_destroy();exit;}
motion_add(direction,constAcc);
if instance_exists(enemy)
{
//if ee//eagle eyes
//{
if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0 && ( alarm[0]<1 || ee || bm )
	target=instance_nearest(x,y,enemy);
else
{
target=0
if instance_exists(Wall)
	{
		var WALL;
		WALL=instance_nearest(x,y,Wall);
		if WALL != noone && point_distance(x,y,WALL.x,WALL.y)<32 && (ee || bm)
		{
			var s = (100+(ee*10)+(bm*20))/point_distance(x,y,WALL.x,WALL.y);
			motion_add(point_direction(x,y,WALL.x,WALL.y)+180,s);//move away from wall
		}
	}
}


if target!=0 && target.team != team
motion_add(point_direction(x,y,target.x,target.y),acc+(bm*2)+ee);
}
if speed>maxSpeed+bm+ee
	speed = max(maxSpeed+bm+ee,speed*0.7);
	//speed=6+bm;

image_angle=direction;


//instance_destroy();

alarm[1] = 1;