/// @description Nasty splosion

// Inherit the parent event
event_inherited();

/// @description Nasty splosion
snd_play(sndMeatExplo,0.1,true);
instance_create(x,y,MeatExplosion);
snd_play(sndTermite,0.3,true)
var ang = random(360);
var am = 3;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Termite)
	{
		motion_add(ang,4+irandom(8))
		team = other.team
	}
	ang += angStep;
}

ang = random(360);

with instance_create(x,y,BloodStreak)
image_angle = ang

with instance_create(x,y,BloodStreak)
image_angle = ang+120

with instance_create(x,y,BloodStreak)
image_angle = ang+240

