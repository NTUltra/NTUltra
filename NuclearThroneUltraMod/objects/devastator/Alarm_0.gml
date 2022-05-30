/// @description El boom boom
alarm[0] = 1;
var l = random_range(8,16);
var d = random(360);
var xx = x+lengthdir_x(l,d);
var yy = y+lengthdir_y(l,d);
snd_play(sndPlasmaHit,0.1,false)
with instance_create(xx,yy,PlasmaImpact)
{
	team = other.team;
	scrCanHumphry();
}
BackCont.shake += 2;