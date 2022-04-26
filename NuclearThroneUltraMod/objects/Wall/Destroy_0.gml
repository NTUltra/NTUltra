/// @description HAND ULTRA
if instance_exists(Player) && Player.ultra_got[106] && !instance_exists(SpiralCont)
{
	var r = 1;
	var s = 1;
	if scrIsInInvertedArea()
	{
		r = 2;
		s = 2;
	}
	repeat(r)
		with instance_create(x+8,y+8,Rad)
		{
			motion_add(random(360),0.2)
		}
	var m = instance_nearest_notme(x,y,Wall);
	repeat(s)
	with instance_create(x+8,y+8,SwarmBolt)
	{
		direction = point_direction(x,y,m.x,m.y)+180;
		image_angle = direction
		team = 2;
	}
}
