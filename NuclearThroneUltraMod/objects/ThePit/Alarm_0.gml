/// @description Start a boss fight?
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 250
	{
		var numEn = 0;
		with enemy
		{
			if team != 2
				numEn ++;
		}
		if numEn < 8 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan))
		{
			instance_create(x,y,BecomeGhostBoss);	
		}
	}
}