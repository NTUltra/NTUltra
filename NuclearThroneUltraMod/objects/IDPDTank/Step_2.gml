/// @description Vspeed 0







// Inherit the parent event
event_inherited();

vspeed = 0;
var replaced = false;
if y != ystart
{
	y = ystart;
	replaced = true;
}
if x > middleX + moveRange + 32
{
	x = middleX + moveRange + 32;
	replaced = true;
}
else if (x < middleX - moveRange - 32)
{
	x = middleX - moveRange - 32;
	replaced = true;
}
if replaced
{
	scrForcePosition60fps();	
}