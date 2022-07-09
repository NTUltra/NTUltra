/// @description Ring of booms
var angStep = 360/am;
repeat(am)
{
	var xx = x + lengthdir_x(dis,ang);
	var yy = y + lengthdir_y(dis,ang);
	instance_create(xx,yy,boom);
	ang += angStep;
}
ang += angStep*0.5;
dis += disPlus;
am += amPlus;
rings --;
if rings > 0
	alarm[2] = 1;