/// @description Frost
var al = array_length(lightningList);
if al > 0 && alarm[0] < 1
{
	for (var i = 0; i < al; i++) {
		if (i % 3 == 0)//Only half of the lightning has collision to optimize
		{
			with instance_create(x,y,IceFlame)
			{	team = other.team
				image_speed = 0.6;
				motion_add(other.direction,1);
			}
		}
	}
}