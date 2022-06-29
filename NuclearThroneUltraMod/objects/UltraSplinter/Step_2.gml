    with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=other.speed;
theColour=c_lime;
}

if instance_exists(enemy) and instance_exists(Player)
{

if speed > 0 and Player.skill_got[21] = 1
{
dir = instance_nearest(x,y,enemy)
    if dir.team != team && point_distance(x,y,dir.x,dir.y) < 30 +Player.betterboltmarrow//24
    {
		with instance_create(x,y,BoltTrail)
		{
			theColour=c_lime;
			image_angle=point_direction(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed)+180;
			image_xscale=point_distance(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed);
		}  
	    x = dir.x-hspeed
	    y = dir.y-vspeed
    }
}}


if speed<1
    instance_destroy();

