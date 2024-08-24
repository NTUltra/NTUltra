/// @description REROLL
with Player
{
	var t = wep_type[wep];
	if t == 0 && !scrIsCrown(40)
	{
		BackCont.shake += 5;
		with instance_create(x,y,PopupText)
		{
			mytext = "DOESN'T USE AMMO"
			theColour=c_red;
		}
	}
	else
	{
		snd_play(sndSledgeHit);
		BackCont.shake += 10
		if t == 5
		{
			if scrIsCrown(40)
			{
				wep_type[wep] = 0;
				if !scrIsAllAmmoTypes(wep)
				{
					wep_cost_base[wep] /= 1.6666666666666666666666666666667;
					debug(wep_cost_base[wep]);
				}
			}
			else
			{
				wep_type[wep] = 1;
				if !scrIsAllAmmoTypes(wep)
					wep_cost_base[wep] *= 4.6363636363636363636363636363636;
			}
			BackCont.viewx2 += lengthdir_x(40,180)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(40,180)*UberCont.opt_shake
			repeat(4)
			{
				with instance_create(x,y,Smoke)
				{
					motion_add(180 + random_range(30,-30),2);	
				}
			}
		}
		else
		{
			if t == 0 && !scrIsAllAmmoTypes(wep)
			{
				wep_cost_base[wep] *= 7.7272727272727272727272727272727;
			}
			if t == 1 && !scrIsAllAmmoTypes(wep)
			{
				wep_cost_base[wep] /= 4.6363636363636363636363636363636;
			}
			wep_type[wep] += 1;
			BackCont.viewx2 += lengthdir_x(40,0)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(40,0)*UberCont.opt_shake
			repeat(4)
			{
				with instance_create(x,y,Smoke)
				{
					motion_add(random_range(30,-30),2);	
				}
			}
		}
	}
}
instance_destroy();
