/// @description Perching check for player
alarm[6] = 60;
scrTarget();
if target != noone && instance_exists(target)
{
	if point_distance(x,y,target.x,target.y) < 250 || instance_number(enemy) < 4 + instance_number(IDPDVan)
	{
		alarm[1] = 60;
		alarm[6] = 0;
		onTopOfWall = false;
		scrRavenLift();
	}
}
