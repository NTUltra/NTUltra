repeat(7)
with instance_create(x,y,ToxicThrowerGas)
{
	speed += 0.1;
	motion_add(other.direction,1);
}

var xx = x;
var yy = y;
var lx = lengthdir_x(1,direction);
var ly = lengthdir_y(1,direction);
repeat(8)
{
	xx += lx;
	yy += ly;
	with instance_create(xx,yy,ToxicThrowerGas)
		motion_add(other.direction,1);
}
snd_play(sndToxicBoltGas);