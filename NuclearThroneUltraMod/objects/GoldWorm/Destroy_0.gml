/// @description End second laser aswell & more fire

// Inherit the parent event
event_inherited();
if alarm[2] > 0
{
	with mySecondLaser
	{
		event_perform(ev_alarm,0);	
	}
}

var ang = random(360);
var am = 30;
var angStep = 360/am;
var spawn = TrapFire;
if isInverted
	spawn = EnemyIceFlame;
repeat(am)
{
	with instance_create(x,y,spawn)
	{motion_add(ang,1.75+random(1))
	team = other.team
	}
	ang += angStep;
}
