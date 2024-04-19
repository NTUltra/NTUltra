/// @description Even more boom
ang += 60;
repeat(3)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion) {
		team = other.team;	
	}
	ang += angstep;
}
l += 16;
hspeed *= 6;
x += hspeed*2;
scrForcePosition60fps();