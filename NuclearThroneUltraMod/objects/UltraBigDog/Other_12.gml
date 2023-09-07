/// @description Reach half health

maxSpinSpeed += 0.4;
Sleep(20);
BackCont.shake += 20;

instance_create(x,y,Flicker);
turnSpeed += 1;
var am = 6;
var ang = 0;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,JockRocket)
	{
		motion_add(ang,2);
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}