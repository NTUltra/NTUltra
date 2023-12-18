/// @description Ultramod add infest

// Inherit the parent event
event_inherited();

snd_play(sndMeatExplo,0.1,true);
var xx = x + lengthdir_x(40,image_angle);
var yy = y + lengthdir_y(40,image_angle);
var um = UberCont.ultramodSwap;
UberCont.ultramodSwap = false;
instance_create(xx,yy,MeatExplosion);
UberCont.ultramodSwap = um;
snd_play(sndTermite,0.3,true)
var ang = random(360);
var am = 2;
var angStep = 360/am;
repeat(am)
{
	with instance_create(xx,yy,Termite)
	{
		motion_add(ang,4+irandom(8))
		team = other.team
	}
	ang += angStep;
}

ang = random(360);

with instance_create(xx,yy,BloodStreak)
image_angle = ang

with instance_create(xx,yy,BloodStreak)
image_angle = ang+120

with instance_create(xx,yy,BloodStreak)
image_angle = ang+240