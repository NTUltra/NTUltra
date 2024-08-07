/// @description Go to banditland
if KeyCont.key_pick[Player.p] = 1 && my_health > 0
{
	KeyCont.key_pick[Player.p] = 2;
	
	with Player
	{
		if array_length(snd_good) > 0
			snd_play(snd_good[irandom(array_length(snd_good)-1)]);
		else
			snd_play(snd_thrn);
			
		area = 113;
		subarea = 1;
		lastarea = 113
		lastsubarea = 1;
	}

	//with enemy
	//	my_health = 0

	with instance_create(x,y,Portal) {
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		type = 1
	}

	my_health = 0;
}