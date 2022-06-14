/// @description El boom boom
alarm[0] = 1;

var ang = random(360);
var am = 4;
var angStep = 90;
var l = random_range(8,16);
var d = random(360);
var xx = x+lengthdir_x(l,d);
var yy = y+lengthdir_y(l,d);
repeat(am)
{
	with instance_create(xx,yy,Splinter)//5 splinters
	{
		motion_add(ang+(random(6)-3),20+random(4));
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Smoke)
		motion_add(ang,random_range(0.5,2));
	ang += angStep;
}

snd_play(sndSplinterGun,0.1,false)
BackCont.shake += 3;