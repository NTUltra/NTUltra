if rad > 23 and instance_exists(Player)//rad 10
{
	if instance_number(Grunt) <= Player.loops and !instance_exists(Portal)
	{
		var numEn = 0;
		with enemy
		{
			if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
			{
				numEn ++;
			}
		}
		if numEn > 3
			instance_create(x,y,IDPDSpawn)
	}
alarm[0] = 400
}
else
alarm[0] = 300

