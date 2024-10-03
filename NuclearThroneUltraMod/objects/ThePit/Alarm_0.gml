/// @description Start a boss fight?
alarm[0] = 30;
if instance_exists(Player) && alarm[1] < 1
{
	if point_distance(x,y,Player.x,Player.y) < 200
	{
		var numEn = 0;
		with enemy
		{
			if team != 2
				numEn ++;
		}
		if numEn < 2 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan))
		{
			alarm[1] = 70;
		}
	}
}