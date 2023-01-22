/// @description Even ore boom
ang += 60;
repeat(3)
{
	instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion);
	ang += angstep;
}