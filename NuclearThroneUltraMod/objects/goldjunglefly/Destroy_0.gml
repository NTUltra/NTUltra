/// @description Gassbomb

// Inherit the parent event
event_inherited();
scrDrop(50,0);
instance_create(x,y,BigWallBreak);
var ang = random(360);
var am = 10;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,ToxicGas)
	{motion_add(ang,2+random(2))
	team = other.team
	}
	ang += angStep;
}