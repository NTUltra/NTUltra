scrDrop(25,10)

event_inherited()

var ang = random(360);
var am = 8;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,TrapFire)
	{motion_add(ang,2)
	team = other.team}
	ang += angStep;
}