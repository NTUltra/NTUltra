/// @description Go to space
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1
{
	if !instance_exists(WantBoss) && !instance_exists(BigFish) && !instance_exists(AssassinBoss)
	{
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		with other
		{
			if area !=104
			{
				area = 103
				inverted = false;
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
			scrForcePosition60fps();
			type = 1
			alarm[1] = 1;
			pullstrength = 3;
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
		}
	
		with WantBoss {
			instance_destroy();	
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

