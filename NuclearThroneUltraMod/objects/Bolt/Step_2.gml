if collision_line(xprev,yprev,x,y,Wall,false,false) || place_meeting(x,y,Wall)
{
	event_user(1);
}
if alarm[11] < 1
{
	scrBoltMarrow();
	scrBoltTrail(trailColour,0.1,trailScale);
}
if speed<1&&alarm[2]<1
{
alarm[3] = 3;
alarm[2] = stickToWallTime+irandom(stickToWallTimeRandom);//delay before destroying
}

