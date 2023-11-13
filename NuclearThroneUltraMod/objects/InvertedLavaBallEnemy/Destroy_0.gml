scrDrop(25,1)
event_inherited()
var ang = random(360);
var am = 12;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,TrapFire)
	{
		motion_add(random(360),3)
		team = other.team
	}
	ang += angStep;
}
instance_create(x,y,WallBreak);