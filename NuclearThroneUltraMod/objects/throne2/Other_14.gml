/// @description Toggle how close it is
if !place_meeting(x,y,Tangle) && alarm[11] < 1
{
	if distanceToTarget == minDistanceToTarget
		distanceToTarget = maxDistanceToTarget;
	else
		distanceToTarget = minDistanceToTarget;

}