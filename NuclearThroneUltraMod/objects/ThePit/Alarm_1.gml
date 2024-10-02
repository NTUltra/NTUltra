/// @description Still close enough?
if point_distance(x,y,Player.x,Player.y) < 200
{
	var numEn = 0;
	with enemy
	{
		if team != 2
			numEn ++;
	}
	if numEn < 3 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan))
	{
		instance_create_depth(x,y,depth-1,BecomeGhostBoss);
		alarm[0] = 0;
		alarm[1] = 0;
	}
}
