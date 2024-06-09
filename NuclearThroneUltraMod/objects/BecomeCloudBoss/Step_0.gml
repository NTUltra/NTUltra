/// @description Come out of hiding
if instance_exists(Player)
{
	if Player.x > x
		right = 1;
	else
		right = -1;
}
if place_meeting(x,y,Floor)
{
	if alarm[0] > 5
	{
		var n = instance_nearest(x,y,Floor)
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			motion_add(point_direction(n.x+o,n.y+o,x,y),0.8);
			if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y),0.6);
		}	
	}
}
else
{
	if UberCont.normalGameSpeed == 60
		image_alpha = lerp(image_alpha,1,0.1);
	else
		image_alpha = lerp(image_alpha,1,0.2);
	if image_alpha > 0.4
	{
		depth = -2;
	}
	if image_alpha > 0.9
	{
		instance_destroy();	
	}
}
if speed > 3
	speed = 3;