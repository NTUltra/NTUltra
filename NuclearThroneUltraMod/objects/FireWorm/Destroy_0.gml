scrDrop(20,10)

event_inherited()
instance_create(x,y,BigWallBreak);
var ang = random(360);
var am = 10;
var angStep = 360/am;
var spawn = TrapFire;
if isInverted
	spawn = EnemyIceFlame;
repeat(am)
{
	with instance_create(x,y,spawn)
	{motion_add(ang,0.75+random(1.5))
	team = other.team
	}
	ang += angStep;
}
if alarm[2] > 0
{
	with myLaser
	{
		event_perform(ev_alarm,0);	
	}
}
