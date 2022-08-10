/// @description Go to space
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
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
		
	with instance_create(x,y,Portal) type = 1
	
	//instance_change(Wind,false)
}

