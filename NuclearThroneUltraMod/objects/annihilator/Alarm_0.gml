/// @description El boom boom
alarm[0] = 1;
var l = random_range(8,16);
var d = random(360);
var xx = x+lengthdir_x(l,d);
var yy = y+lengthdir_y(l,d);
snd_play(sndMeatExplo,0.1,false)
with instance_create(xx,yy,MeatExplosion)
{
	team = other.team;
	scrCanHumphry();
}

with instance_create(x,y,BloodStreak)
image_angle = random(360);
BackCont.shake += 3;