with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=other.speed;
}
var ee = false;
var bm = false;
if !instance_exists(Player)
{instance_destroy();exit;}
if instance_exists(enemy)
{
//if ee//eagle eyes
//{
if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0 && ( alarm[0]<1 || ee || bm )
	target=instance_nearest(x,y,enemy);
else
{
target=0
var WALL;
WALL=instance_nearest(x,y,Wall);
if point_distance(x,y,WALL.x,WALL.y)<32 && (ee || bm)
{
	debug("move from wall speed: ",(100+(ee*20)+(bm*20))/point_distance(x,y,WALL.x,WALL.y));
	motion_add(point_direction(x,y,WALL.x,WALL.y)+180,(100+(ee*20)+(bm*20))/point_distance(x,y,WALL.x,WALL.y));//move away from wall
}
}

//}
//else if alarm[0]<1
//target=instance_nearest(x,y,enemy);

if target!=0 && target.team != 2
motion_add(point_direction(x,y,target.x,target.y),1.2+bm+ee);
}
motion_add(direction,0.8);
if speed>6+bm+ee
	speed = max(6+bm+ee,speed*0.7);
	//speed=6+bm;

image_angle=direction;


if speed<2
instance_destroy();
//instance_destroy();