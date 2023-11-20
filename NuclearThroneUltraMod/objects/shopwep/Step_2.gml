if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
	if place_meeting(x,y,ShopSelector)
	{
		image_index=1;
		var i = index;
		with Player
		{
			if !(bwep == 0 && other.wep == 0) && KeyCont.key_spec[p] != 1 && KeyCont.key_spec[p] != 2// && hogWep[i] != 0
			{
				//Grab weapon (LMB)
				var hwep = wep;
				var hcurse = curse;
				var hwm1 = wepmod1;
				var hwm2 = wepmod2;
				var hwm3 = wepmod3;
				var hwm4 = wepmod4;
				other.wep = wep;
			
				wep = hogWep[i]
				curse = hogCurse[i]
				wepmod1 = hogWepmod1[i]
				wepmod2 = hogWepmod2[i]
				wepmod3 = hogWepmod3[i]
				wepmod4 = hogWepmod4[i]
				isPermanent = hogIsPermanent[i];
				hasBeenEaten = hogHasBeenEaten[i];
				if wep != 0
				{
					snd_play_2d(wep_swap[wep])
					//reload = max(reload,wep_load[wep]);//Add reload time
				}
				else
				{
					snd_play_2d(wep_swap[hwep])
					scrSwapWeps();
				}
			
				hogWep[i] = hwep;
				hogCurse[i]	= hcurse;
				hogWepmod1[i] = hwm1;
				hogWepmod2[i] = hwm2;
				hogWepmod3[i] = hwm3;
				hogWepmod4[i] = hwm4;
				scrWeaponHold();
			}
		}
		instance_destroy();
	}
	else
	image_index=0;


}

