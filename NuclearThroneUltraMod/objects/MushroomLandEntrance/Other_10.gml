/// @description Go to Mushroomland
if Player.wepmod1 != 0
{
	if KeyCont.key_pick[Player.p] = 1
	{
		if !instance_exists(Technomancer)
		{
			KeyCont.key_pick[Player.p] = 2;
			mask_index = mskPickupThroughWall
		
			with Player
			{
				if array_length(snd_good) > 0
					snd_play(snd_good[irandom(array_length(snd_good)-1)]);
				else
					snd_play(snd_thrn);
				wepmod1 = wepmod2;
				wepmod2 = wepmod3;
				wepmod3 = wepmod4;
				wepmod4 = 0;
				area = 117
				subarea = 0
			}
			snd_play(sndUltraGrenadeSuck);
			with instance_create(x,y,Portal)
			{
				type = 1
				pullstrength = 3;
				with Player
				{
					lockout = true;
					x = other.x;
					y = other.y;
					scrForcePosition60fps();
				}
				alarm[1] = 1;
			}
		}
		else
		{
			with instance_create(x,y,PopupText)
			{
				mytext = "DEFEAT BOSS FIRST!"
				theColour=c_red;
			}
		}
	}
	
}
else if KeyCont.key_pick[Player.p] = 1
{
	with instance_create(x,y,PopupText)
	{
		mytext = "YOU HAVE NO WEAPON MOD!"
		theColour=c_red;
	}
}