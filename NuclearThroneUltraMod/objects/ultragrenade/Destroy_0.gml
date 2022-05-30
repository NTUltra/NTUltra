/// @description Green explosion
snd_play(sndExplosionXL)
var l = 16;
var am = 3;
var ang = direction;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion)
		scrCanHumphry();
	ang += angStep;
}
scrRaddrop(6);