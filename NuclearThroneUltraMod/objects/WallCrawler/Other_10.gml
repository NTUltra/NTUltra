/// @description New wall walk
if (myWall != noone && instance_exists(myWall))
{
	targetWalkTime = 0;
	targetWalkSpeed = 0.1;
	targetWalkOriginX = x;
	targetWalkOriginY = y;
	targetWalkX = myWall.x + 8;
	targetWalkY = myWall.y;
	alarm[1] = max(1,1 + (1/targetWalkSpeed));
}