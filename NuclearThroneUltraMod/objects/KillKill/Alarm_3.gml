/// @description Shake Shake
BackCont.shake += 6;
var dir = 0;
if instance_exists(Player)
{
	dir = point_direction(x,y,Player.x,Player.y);	
}
BackCont.viewx2 += lengthdir_x(3,dir+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,dir+180)*UberCont.opt_shake
alarm[3] = 1;