///@description AI
alarm[1] = actTime;
if firstEntry
{
	alarm[2] = fireDelay;	
}
var ran = random(10);
if ran < 5
{
	direction = random(360);
	walk = clamp(irandom(actTime*5),walk,actTime*3);
}
else if ran < 7
{
	direction = random(360);	
}

if hspeed < 0
	right = -1;
else if hspeed > 0
	right = 1;