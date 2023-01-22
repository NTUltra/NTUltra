/// @description More boom
repeat(3)
{
	instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion);
	ang += angstep;
}