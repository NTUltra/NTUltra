/// @description Spawn some random big maggots CROWN OF FROG
var amount = 6;
with Floor
{
	if amount > 0 && point_distance(x,y,Player.x,Player.y) > 96 && object_index == Floor
	{
		amount -= 1;
		var o = 16;
		instance_create(x + 16,y + 16,SmallWallBreak);
		instance_create(x + 16,y + 16,BigMaggot);
		var ang = random(360);
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,1);
			}
			ang += 60;
		}
	}
}