/// @description Go to banditland
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	
	with other
	{
		if array_length(snd_good) > 0
			snd_play(snd_good[irandom(array_length(snd_good)-1)]);
		else
			snd_play(snd_thrn);
		lastarea = 113;
		lastsubarea = 1;
		if area != 100
		{
			area = 113
			subarea = 1
		}
	}

	//with enemy
	//	my_health = 0

	with instance_create(x,y,Portal) type = 1

	instance_change(Wind,false)
}