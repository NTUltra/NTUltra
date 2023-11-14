x = round(x/32)*32;
y = round(y/32)*32;
//scrForcePosition60fps();
if instance_exists(Player)
	fakeArea = Player.area;
else
	fakeArea = BackCont.area;

alarm[0] = 2;
alarm[1] = 1;
forceSprite = sprFloor1;
forceBstyle = false;