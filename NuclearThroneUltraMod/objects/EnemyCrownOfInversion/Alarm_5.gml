/// @description Spawn a ghost
alarm[5] = 200;
var ang = random(360);
var angStep = 60;
repeat(6)
{
	with instance_create(x,y,Smoke)
	{
		motion_add(ang, 2);
	}
	ang += angStep;
}
with instance_create(x,y,FrightningCrownGhost)
{
	ghostType = 0;
	dmg = 4;
	alarm[0] += 40;
	alarm[1] += 40;
}