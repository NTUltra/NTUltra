with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=other.speed;
}


if !instance_exists(Player)
{instance_destroy();exit;}

if instance_exists(enemy)
{
//if Player.skill_got[19]//eagle eyes
//{
if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0 && ( alarm[0]<1 || Player.skill_got[19] )
target=instance_nearest(x,y,enemy);
else
{
target=0
var WALL;
WALL=instance_nearest(x,y,Wall);
if point_distance(x,y,WALL.x,WALL.y)<32 && Player.skill_got[19]//eagle eyes
motion_add(point_direction(x,y,WALL.x,WALL.y)+180,point_distance(x,y,WALL.x,WALL.y)*0.02);//move away from wall
}

//}
//else if alarm[0]<1
//target=instance_nearest(x,y,enemy);

if target!=0 && target.team != team
motion_add(point_direction(x,y,target.x,target.y),2+Player.skill_got[21]+Player.skill_got[19]);
}
motion_add(direction,3);//the force that pulls it away from the direction?
if speed>mxSpd
speed=max(mxSpd,speed*0.54);

image_angle=direction;


if speed<2
instance_destroy();
//instance_destroy();
if hits<1
instance_destroy();


