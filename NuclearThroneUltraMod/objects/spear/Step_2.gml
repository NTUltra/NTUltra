with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=other.speed;
image_yscale = other.trailScale;
depth = other.depth + 1;
}

if instance_exists(enemy) and instance_exists(Player)
{

	if speed > 0 and Player.skill_got[21] = 1
	{
		dir = instance_nearest(x,y,enemy)
	    if dir.team != team && point_distance(x,y,dir.x,dir.y) < 24 +Player.betterboltmarrow
	    {
			with instance_create(x,y,BoltTrail)
			{
				image_angle=point_direction(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed)+180;
				image_xscale=point_distance(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed);
				image_yscale = other.trailScale;
				depth = other.depth + 1;
			}  
		    x = dir.x-hspeed
		    y = dir.y-vspeed
	    }
	}
}
if speed < 3
{
	speed = 0
	instance_create(x,y,Dust)
	if alarm[2]<1
	{
		alarm[2]=10+random(20);//delay before destroying
	}
}
else if speed != 0
{
	if collision_line(xprevious,yprevious,x,y,Wall,false,false) {
		x = xprevious;
		y = yprevious;
		speed = 0;
		snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
		move_contact_solid(direction,16)
		instance_create(x,y,Dust)
	}
}