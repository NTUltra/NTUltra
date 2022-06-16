event_inherited()
instance_create(x,y,WallBreak);
var ang = direction;
var angStep = 360/4;
repeat(4)
{
	with instance_create(x,y,ElectroBallBig)
	{
		motion_add(ang,2.5)
		image_angle = direction
		originalDirection = direction;
		team=other.team;
	}
	ang += angStep;
}
with instance_create(x,y,ElectroBallSpawn)
{motion_add(direction + 180,1)
image_angle = direction}
BackCont.shake += 10;