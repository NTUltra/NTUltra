/// @description Go to Mushroomland
if other.wepmod1 != 0
{
	if KeyCont.key_pick[other.p] = 1 && !instance_exists(Technomancer)
	{
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall
		
		with other
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
			alarm[1] = 1;
		}
	}
}