/// @description SURPRISE MDRFKER
repeat(24)
{
	var dir = random(360);
	var dis = random_range(8,24);
	var xx = x+lengthdir_x(dis,dir);
	var yy = y+lengthdir_y(dis,dir);
	with instance_create(xx,yy,Leaf)
	{
		depth = other.depth;
	}
}
var am = 4;
var ang = 360;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,spawnList[0])
	{
		motion_add(ang,6);
		alarm[1] *= 0.5;
	}
	ang += angStep;
}

var am = 3;
var ang = 360;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,spawnList[1])
	{
		motion_add(ang,6);
		alarm[1] *= 0.5;
	}
	ang += angStep;
}
instance_create(x,y,DramaCamera)
