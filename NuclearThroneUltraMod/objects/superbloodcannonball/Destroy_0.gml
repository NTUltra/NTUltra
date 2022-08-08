event_inherited();
var ang = random(360)
instance_create(x+lengthdir_x(32,ang),y+lengthdir_y(24,ang),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+100),y+lengthdir_y(24,ang+100),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+200),y+lengthdir_y(24,ang+200),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+290),y+lengthdir_y(24,ang+290),MeatExplosion)
ang = random(360)

with instance_create(x,y,BloodStreak)
image_angle = ang

with instance_create(x,y,BloodStreak)
image_angle = ang+120

with instance_create(x,y,BloodStreak)
image_angle = ang+240

snd_play(sndBloodCannonEnd);
audio_stop_sound(sndBloodCannonLoop)


Sleep(10)
instance_create(x+hspeed,y+vspeed,WallBreak);
var am = 4;
ang = direction+180;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,BloodCannonBall)
	{motion_add(ang,3)
	image_angle = direction
	team = other.team}
	ang += angStep;
}

BackCont.shake += 10;
