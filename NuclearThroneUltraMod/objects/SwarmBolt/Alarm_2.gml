scrBoltTrail(c_white,0.05,0.8);

if !instance_exists(Player)
{instance_destroy();exit;}

motion_add(direction,2);//the force that pulls it away from the direction?
if instance_exists(enemy)
{
//if Player.skill_got[19]//eagle eyes
//{
var n = instance_nearest(x,y,enemy)
if n != noone && collision_line(x,y,n.x,n.y,Wall,0,0) < 0 && ( alarm[0]<1 || eagleEyed || boltMarrowed)
	target = n;
else
{
	target = 0;
	if instance_exists(Wall)
	{
		var WALL;
		WALL = instance_nearest(x,y,Wall);
		if WALL != noone && point_distance(x,y,WALL.x,WALL.y)<32 && (eagleEyed || boltMarrowed)//eagle eyes
		{
			var s = (100+(eagleEyed*10)+(boltMarrowed*20))/point_distance(x,y,WALL.x,WALL.y);
			motion_add(point_direction(x,y,WALL.x,WALL.y)+180,s);//move away from wall
		}
	}
}

//}
//else if alarm[0]<1
//target=instance_nearest(x,y,enemy);

if target!=0 && target != noone && target.team != team
motion_add(point_direction(x,y,target.x,target.y),1+(boltMarrowed*1.5)+eagleEyed);
}
if speed>mxSpd
speed=max(mxSpd,speed*0.54);

image_angle=direction;


//instance_destroy();
if hits<1
instance_destroy();


alarm[2] = 1;