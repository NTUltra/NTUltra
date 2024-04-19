/// @description More boom
repeat(3)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion) {
		team = other.team;	
	}
	ang += angstep;
}
repeat(6)
{
	with instance_create(x+lengthdir_x(l*2,ang),y+lengthdir_y(l*2,ang),GreenExplosion) {
		team = other.team;	
	}
	ang += angstep * 0.5;
}