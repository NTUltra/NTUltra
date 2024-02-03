/// @description Bye
instance_destroy();
BackCont.shake += 10;
var dir = 0;
if instance_exists(Player)
{
	dir = point_direction(x,y,Player.x,Player.y);	
}
BackCont.viewx2 += lengthdir_x(20,dir)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,dir)*UberCont.opt_shake