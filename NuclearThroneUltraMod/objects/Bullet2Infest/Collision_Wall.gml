/// @description xxx

var xx = x-(sign(hspeed)*8);
var yy = y-(sign(vspeed)*8);
snd_play(sndMeatExplo);
instance_create(xx,yy,MeatExplosion);
snd_play(sndTermite,0.3,true)
with instance_create(xx,yy,Termite)
{
	motion_add(other.direction+180,4+irandom(8))
	team = other.team
}


with instance_create(x,y,BloodStreak)
image_angle = other.direction+180;

// Inherit the parent event
event_inherited();


