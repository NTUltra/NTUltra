if alarm[11] < 1
{
	scrBoltMarrow();
	scrBoltTrail(c_white,0.1,trailScale);
}
if speed < 3
{
	speed = 0
	if alarm[2]<1
	{
		instance_create(x,y,Dust)
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