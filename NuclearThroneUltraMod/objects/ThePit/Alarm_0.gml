/// @description Start a boss fight?
alarm[0] = 30;
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 200
	{
		var numEn = 0;
		with enemy
		{
			if team != 2
				numEn ++;
		}
		if numEn < 8 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan))
		{
			instance_create_depth(x,y,depth-1,BecomeGhostBoss);
			alarm[0] = 0;
		}
	}
}