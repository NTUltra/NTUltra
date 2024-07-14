/// @description Packaged trigger fingers
Sleep(100);
BackCont.shake += 20;
BackCont.viewx2 += lengthdir_x(20,direction+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,direction+180)*UberCont.opt_shake
with Player
{
	var baked = 25 + Player.skill_got[17]*2 + Player.betterlaserbrain;
	if wep == 801
	{
		reload -= baked;	
	}
	else if bwep == 801
	{
		breload -= baked;
	}
	else if cwep == 801
	{
		creload -= baked;
	}
}