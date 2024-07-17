/// @description Create battle arena
with instance_nearest(x,y,Floor)
{
	var myWall = Wall;
	if scrIsCrown(25)
	{
		myWall = FloorExplo;
	}
	var xo = x - 1280;
	var yo = y - 1280;
	with Player
	{
		x = xo + 16;
		y = yo + 16;
		scrForcePosition60fps();
	}
	with instance_create(xo + 16 + 256,yo + 16 + 128,BecomeVoidMasterBoss) {
			
	}
	var yy = yo;
	for (var i = 0; i < 10; i++)
	{
		var xx = xo;
		for (var j = 0; j < 10; j++)
		{
			if (
				!(i == 5 && j == 5) &&
				!(i == 2 && j == 5) &&
				!(i == 2 && j == 2) &&
				!(i == 2 && j == 5) &&
				!(i == 7 && j == 7) &&
				!(i == 5 && j == 7) &&
				!(i == 7 && j == 5) &&
				!(i == 2 && j == 7) &&
				!(i == 7 && j == 2)
			)
				instance_create(xx,yy,Floor);
			xx += 32;
		}
		yy += 32;
	}
	with Floor
	{
		if !position_meeting(x-16,y-16,Floor) instance_create(x-16,y-16,myWall)
		if !position_meeting(x,y-16,Floor) instance_create(x,y-16,myWall)
		if !position_meeting(x+16,y-16,Floor) instance_create(x+16,y-16,myWall)
		if !position_meeting(x+32,y-16,Floor) instance_create(x+32,y-16,myWall)
		if !position_meeting(x+32,y,Floor) instance_create(x+32,y,myWall)
		if !position_meeting(x+32,y+16,Floor) instance_create(x+32,y+16,myWall)
		if !position_meeting(x-16,y,Floor) instance_create(x-16,y,myWall)
		if !position_meeting(x-16,y+16,Floor) instance_create(x-16,y+16,myWall)
		if !position_meeting(x-16,y+32,Floor) instance_create(x-16,y+32,myWall)
		if !position_meeting(x,y+32,Floor) instance_create(x,y+32,myWall)
		if !position_meeting(x+16,y+32,Floor) instance_create(x+16,y+32,myWall)
		if !position_meeting(x+32,y+32,Floor) instance_create(x+32,y+32,myWall)
	}
}