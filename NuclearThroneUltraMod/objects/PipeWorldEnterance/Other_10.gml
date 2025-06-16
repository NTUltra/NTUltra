/// @description Go to Pipe World
isInteractableNow = true;
if KeyCont.key_pick[Player.p] = 1 && !instance_exists(BallMom) && !instance_exists(BanditBoss)
{
	KeyCont.key_pick[Player.p] = 2;
	with Player
	{
		area = 142;
		subarea = 1;
	}
	mask_index = mskPickupThroughWall;
	with instance_create(x,y,Portal)
	{
		type = 1
		pullstrength = 3;
		alarm[1] = 1;
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		with Player
		{
			lockout = true;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
		}
	}
	with enemy
	{
		my_health = 0;
		prevhealth = 0;
	}
	var prevA = 142;
	if instance_exists(Player)
		prevA = Player.area;
	with instance_create(x,y,PortalEnviromentReplacer)
	{
		area = 142;
		prevArea = prevA;
	}
}