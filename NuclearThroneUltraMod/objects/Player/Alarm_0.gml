/// @description Rogue heat & ENEMY OUT OF BOUDNS CHECK
if !instance_exists(GenCont) && !instance_exists(LevCont) && !instance_exists(SpiralCont)
{
	var numEn = 0;
	with enemy
	{
		if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
		{
			numEn ++;
				var n = instance_nearest(x,y,Floor)
			if n != noone && point_distance(x,y,n.x+8,n.y+8) > 200
			{
			    var o = 16;
				if n.object_index == FloorExplo
				{
					o = 8;	
				}
				x = n.x + o;
				y = n.y + o;
				scrForcePosition60fps();
			}
		}
	}
	if ( RogueHeat && numEn > 2 && instance_exists(enemy) && instance_number(enemy) < BackCont.enemiesInStartLevel * 0.8 )
	{
		instance_create(x,y,IDPDSpawn);
		RogueHeat=false
	}
}
alarm[0] = 90;

