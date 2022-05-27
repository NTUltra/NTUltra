    with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=other.speed;
}

if instance_exists(enemy) and instance_exists(Player)
{

	if speed > 0 and Player.skill_got[21] = 1
	{
		dir = instance_nearest(x,y,enemy)
	    if point_distance(x,y,dir.x,dir.y) < 24 +Player.betterboltmarrow && dir.team != 2
	    {
			with instance_create(x,y,BoltTrail)
			{
				image_angle=point_direction(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed)+180;
				image_xscale=point_distance(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed);
			}  
		    x = dir.x-hspeed
		    y = dir.y-vspeed
	    }
	}
}


if speed<1&&alarm[2]<1
{
alarm[3]=2;
alarm[2]=10+random(20);//delay before destroying
}

