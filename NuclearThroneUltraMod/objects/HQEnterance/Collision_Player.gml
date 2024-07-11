/// @description Go to HQ and back
with Player
	isOnInteractable = true;
if KeyCont.key_pick[Player.p] = 1 
{
	KeyCont.key_pick[Player.p] = 2;
	with Player
	{
		alarm[3] = max(2,alarm[3]);
		if area == 135
		{
			area = lastarea;
			subarea = lastsubarea;
			lockout = true;
			scrNextLevel(true);//SKIP ONE LEVEL AND THEN DO STUFF
		}
		else if area != 100 && area != 104 && area != 137
		{
			UberCont.triedToGoHQThisLoop = true;
			lastarea = area;
			lastsubarea = subarea;
			area = 135;
			subarea = 0;
			lockout = true;
		}
		with instance_create_depth(x,y,-1,Portal)
		{
			pullstrength = 3;
			x = other.x
			y = other.y;
			scrForcePosition60fps();
			alarm[1] = 1;
		}
	}
	mask_index = mskPickupThroughWall;
}