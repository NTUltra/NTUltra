/// @description Big boom
event_inherited();
// Inherit the parent event

snd_play(sndBloodCannonEnd,0.1,true)
repeat(4)
{
	var l = random_range(16,48);
	var d = random(360);
	var xx = xprevious+lengthdir_x(l,d);
	var yy = yprevious+lengthdir_y(l,d);
	with instance_create(xx,yy,MeatExplosion)
	{
		team = other.team;
	}
}
var ang = random(360);
with instance_create(x,y,BloodStreak)
image_angle = ang

with instance_create(x,y,BloodStreak)
image_angle = ang+120

with instance_create(x,y,BloodStreak)
image_angle = ang+240

BackCont.shake += 2;