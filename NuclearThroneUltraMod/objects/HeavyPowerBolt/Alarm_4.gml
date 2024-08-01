/// @description Stationary for a little bit during the flash
BackCont.shake += 20;
BackCont.viewx2 += lengthdir_x(20,direction+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,direction+180)*UberCont.opt_shake
instance_create(x,y,Dust);