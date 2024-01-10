if instance_exists(Player)
	fakeArea = Player.area;
else
	fakeArea = BackCont.area;

alarm[0] = 2;
alarm[2] = 1;
forceSprite = sprFloor1;
forceBstyle = false;