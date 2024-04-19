/// @description One green
repeat(3)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),Explosion) {
		team = other.team;	
	}
	ang += angstep;
}
