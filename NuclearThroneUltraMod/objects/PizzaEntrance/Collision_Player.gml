/// @description You want to go for pizza?
if image_index == 1 && !wentIn
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[other.p] = 1
	{
		wentIn = true;
		name = "#PIZZA TIME!!";
		KeyCont.key_pick[Player.p] = 2;
		with Player
		{
		area = 102
		subarea = 0
		}
		var prevA = 2;
		if instance_exists(Player)
			prevA = Player.area;
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 102;
			prevArea = prevA;
		}
		with instance_create(x+16,y+16,Portal){
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
			x = other.x+16;
			y = other.y+16;
			scrForcePosition60fps();
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
		}
	}
}