/// @description Lerpy
with Player
{
	lockout = true;
	alarm[3] += 130;
}
delayTime = 10;
delay = 60;
with enemy
{
	alarm[1] += 130;// 10 + 60 + 60
	walk = 0;
	existTime = 130;
}
with projectile
{
	instance_destroy(id,false);
}
with BackCont
{
	if alarm[1] > 0
		alarm[1] += 130;
	if alarm[2] > 0
		alarm[2] += 130;
}
lerpTime = 0;
goTo = true;
timeIncrease = 0.03333333333333333333333333333333;
active = true;
if instance_number(CameraLerp) > 1
{
	active = false;	
}