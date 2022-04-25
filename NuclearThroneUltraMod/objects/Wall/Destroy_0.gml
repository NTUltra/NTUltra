/// @description HAND ULTRA
if instance_exists(Player) && Player.ultra_got[106]
{
	var r = 2;
	var s = 1;
	if scrIsInInvertedArea()
	{
		r = 4;
		s = 2;
	}
		
	scrRaddrop(2);
	with instance_create(x,y,SwarmBolt)
	{
		image_angle = direction
		team = 2;
	}
}
