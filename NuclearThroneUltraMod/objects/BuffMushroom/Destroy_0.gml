
event_inherited()
if object_index == BuffMushroom
{
scrDrop(30,5)

var ang = random(360);
var am = 6;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Dust)
	{
		motion_add(ang,1);	
	}
	ang+=angStep;
}
instance_create(x,y,WallBreak);
}

