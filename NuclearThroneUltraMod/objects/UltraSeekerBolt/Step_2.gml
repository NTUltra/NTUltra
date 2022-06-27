    with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=other.speed;
theColour=c_lime;
}
//Inherit or something?!TODO
if !instance_exists(Player)
{instance_destroy();exit;}

if instance_exists(enemy)
{
//if Player.skill_got[19]//eagle eyes
//{
if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0//is there a wall inbetween?
target=instance_nearest(x,y,enemy);
else
{
target=0
var WALL;
WALL=instance_nearest(x,y,Wall);
if point_distance(x,y,WALL.x,WALL.y)<40
motion_add(point_direction(x,y,WALL.x,WALL.y)+180,point_distance(x,y,WALL.x,WALL.y)*0.05+Player.skill_got[19]*0.01);//move away from wall
}
if target.team != team
	target = 0;
//}
//else if alarm[0]<1
//target=instance_nearest(x,y,enemy);

if target!=0
motion_add(point_direction(x,y,target.x,target.y),2.8+Player.skill_got[21]+(Player.skill_got[19]*0.5) );//homing strength normal 0.8
}
motion_add(direction,1);
if speed>7+Player.skill_got[21]
speed=7+Player.skill_got[21];

image_angle=direction;


if speed<2
instance_destroy();
//instance_destroy();
if hits<1
instance_destroy();


