/// @description Bolt marrow
if alarm[3] < 1
{
	if collision_line(x,y,xprev,yprev,Wall,false,false)
	{
		instance_create(xprev,yprev,Dust);
		snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76);
		x = xprev;
		y = yprev;
		speed = 0;
		alarm[2] = 0;
		alarm[1] = 0;
		alarm[3] = 50 + random(50);
	}
	scrBoltMarrow();
}
