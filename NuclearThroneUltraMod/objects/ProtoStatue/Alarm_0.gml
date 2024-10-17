/// @description SPAWN POPO
if maxPopoSpawns > 0
{
	if rad > 23 and instance_exists(Player)//rad 10
	{
		if instance_number(Grunt) <= Player.loops and !instance_exists(Portal)
		{
			maxPopoSpawns -= 1;
			var numEn = 0;
			with enemy
			{
				if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
				{
					numEn ++;
				}
			}
			if numEn > 3
			{
				var ran = random(360);
				var len = 64;
				instance_create(x + lengthdir_x(len,ran),y + lengthdir_y(len,ran),IDPDSpawn)
			}
		}
		alarm[0] = 400
	}
	else
		alarm[0] = 300
}

