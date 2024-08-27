scrDrop(90,0)

event_inherited();
if !sleeping
{
	if !hasDoneVenomizer && instance_number(FreakVenomizerProjectile) < 8 && random(4) < 1
	{
		hasDoneVenomizer = true;
		var n = instance_nearest(x,y,WallHitMe)
		if n != noone
		{
			with instance_create(x,y,FreakVenomizerProjectile)
			{
				motion_add(point_direction(x,y,n.x+8,n.y+8),12);
				image_angle = direction;
			}
		}
	}
	if lifes > 0
	{
		with instance_create(x,y,RevivePopo)
		{
			hasDoneVenomizer = other.hasDoneVenomizer;
			lifes = other.lifes - 1;
			myCorpse = other.myCorpse; 
		}
		var ang = random(360);
		var am = 3;
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,PopoNade){
				team = other.team;
				motion_add(ang,other.nadeSpeed)
				image_angle = direction
				team = other.team
				if team == 2
					sprite_index = sprPopoNadeRogue;
				else if team == 4
				{
					sprite_index = sprPopoNadeFreak;
					col = c_lime;
				}
			}
			ang += angStep;
		}
	}

}