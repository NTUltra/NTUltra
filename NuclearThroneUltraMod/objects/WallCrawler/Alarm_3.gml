/// @description Go into a wall
if instance_exists(Wall)
{
	var xx = x;
	var yy = y;
	if target != noone && instance_exists(target)
	{
		var ang = random(360);
		xx = target.x + lengthdir_x(128,ang);
		yy = target.y + lengthdir_y(128,ang);
	}
	myWall = instance_nearest(xx,yy,Wall);
	if myWall != noone
	{
		x = myWall.x+8;
		y = myWall.y;
		snd_play(sndGuardianAppear,0.1);
		scrForcePosition60fps();
	}
	else
		alarm[3] = 1;
	mask_index = mskWallCrawler;
	spr_idle = spr_hidden;
	spr_walk = spr_idle;
	spr_hurt = spr_hidden_hurt;
	sprite_index = spr_idle;
	right = choose(1,-1);
	targetWalkTime = 2;
	alarm[1] += actTime*4;
}
