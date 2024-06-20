/// @description Go to space
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	with other
	{
		if area !=104
		{
			area = 103
			subarea = 0
		}
	}
	//with enemy
	//	my_health = 0
	snd_play(sndUseCar);
	with instance_create(x,y,Portal) 
	{
		x = other.x;
		y = other.y;
		type = 1
		alarm[1] = 1;
	}
	
	with WantBoss {
		instance_destroy();	
	}
	
	//instance_change(Wind,false)
}

