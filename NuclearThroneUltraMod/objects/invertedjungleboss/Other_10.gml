/// @description Spawn something nice
snd_play(sndJungleAssassinPretend);
repeat(8)
{
	var dis = random_range(4,12);
	var dir = random(360);
	var xx = x+lengthdir_x(dis,dir);
	var yy = y+lengthdir_y(dis,dir);
	with instance_create(xx,yy,Leaf)
	{
		depth = other.depth;
	}
}
var toSpawnIndex = irandom(array_length(spawnList)-1);

var am = spawnAmount[toSpawnIndex];
var ang = 360;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,spawnList[toSpawnIndex])
	{
		motion_add(ang,6);
		alarm[1] *= 0.5;
		raddrop = 0;
	}
	ang += angStep;
}
