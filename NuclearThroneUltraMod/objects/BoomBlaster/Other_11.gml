/// @description Packaged trigger fingers
if (hitTarget != noone && instance_exists(hitTarget) && hitTarget.my_health >= 0)
{
	Sleep(100);
	BackCont.shake += 20;
	BackCont.viewx2 += lengthdir_x(20,direction+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,direction+180)*UberCont.opt_shake
	with Player
	{
		var baked = 25;
		if wep == 901
		{
			reload -= baked;	
		}
		else if bwep == 901
		{
			breload -= baked;
		}
		else if cwep == 901
		{
			creload -= baked;
		}
	}
}