if collision_line(xprev,yprev,x,y,Wall,false,false)
{
	event_user(0);
}
if alarm[11] < 1
{
	scrBoltMarrow();
	scrBoltTrail(trailColour);
}
if stickTarget != noone
{
	x = stickTarget.x+offx
	y = stickTarget.y+offy
}