/// @description HAND ULTRA
if instance_exists(Player) && Player.bskin == 0 && Player.ultra_got[106] && !instance_exists(SpiralCont)
{
	//var m = instance_nearest_notme(x,y,Wall);
	//var d = point_direction(x,y,m.x,m.y)+180;
	with instance_create(x+8,y+8,SwarmBolt)
	{
		direction = random(360);
		image_angle = direction
		team = 2;
	}
}
