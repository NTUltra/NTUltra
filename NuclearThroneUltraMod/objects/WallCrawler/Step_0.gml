event_inherited()
if !firstHit && sprite_index == spr_hurt
{
	firstHit = true;
	actTime *= 0.5;
	instance_create(x,y,DramaCamera);
}
if speed > maxSpeed
	speed = maxSpeed
if targetWalkTime < 1 && myWall != noone && instance_exists(myWall)
{
	if UberCont.normalGameSpeed == 60
		targetWalkTime += targetWalkSpeed * 0.5;
	else
		targetWalkTime += targetWalkSpeed;
	x = lerp(targetWalkOriginX,targetWalkX,clamp(targetWalkTime,0,1));
	y = lerp(targetWalkOriginY,targetWalkY,clamp(targetWalkTime,0,1));
}
else if fallWalk > 0
{
	if UberCont.normalGameSpeed == 60
		fallWalk -= 0.5;
	else
		fallWalk -= 1;
	motion_add(fallOutDirection,maxSpeed*2);
}
else if walk > 0
{
	motion_add(direction,acc);
}
if alarm[2] < 1 && alarm[3] < 1
{
	if  instance_exists(Wall) && myWall != noone && instance_exists(myWall)
	{
		if targetWalkTime >= 1
		{
			x = myWall.x+8;
			y = myWall.y;
		}
		speed = 0;
	}
	else
	{
		targetWalkTime = 2;
		snd_play(sndWallCrawlerExpose);
		alarm[2] = wallDestroyedStunTime;//Time before re-entering wall
		scrTarget();
		spr_idle = spr_expose;
		spr_walk = spr_idle;
		spr_hurt = spr_expose_hurt;
		sprite_index = spr_hurt;
		image_index = 0;
		if target != noone
		{
			fallOutDirection = point_direction(x,y,target.x,target.y);
			direction = fallOutDirection;
			speed = maxSpeed;
			alarm[1] = 30;
			fallWalk = 6;
			walk = 0;
		}
	}
}