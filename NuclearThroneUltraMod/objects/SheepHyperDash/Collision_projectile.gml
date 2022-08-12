if !instance_exists(Player)
{instance_destroy() exit;}

if team != other.team
{
	Sleep(2);
	BackCont.viewx2 += lengthdir_x(1,direction)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,direction)*UberCont.opt_shake
	BackCont.shake += 5

	with other {
		if isGrenade
			instance_destroy(id,false);
		else
			instance_destroy();
	}
}

