/// @description Perching check for player
alarm[6] = 60;
scrTarget();
if target > -1 && instance_exists(target)
{
	if point_distance(x,y,target.x,target.y) < 250
	{
		alarm[1] = 60;
		alarm[6] = 0;
		scrRavenLift();
	}
}
