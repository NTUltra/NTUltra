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
			wep_type[wep] = 1;
			wep_cost[wep] *= 4.6363636363636363636363636363636;
			BackCont.viewx2 += lengthdir_x(20,180)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(20,180)*UberCont.opt_shake
			with Player
			{
				repeat(4)
				{
					with instance_create(x,y,Smoke)
					{
						motion_add(180 + random_range(30,-30),2);	
					}
				}
			}
		}
		else
		{
			if t == 1
			{
				wep_cost[wep] /= 4.6363636363636363636363636363636;
			}
			wep_type[wep] += 1;
			BackCont.viewx2 += lengthdir_x(20,0)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(20,0)*UberCont.opt_shake
			with Player
			{
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
}
instance_destroy();
