/// @description Fire
alarm[0] = 1;
/*
if choose(true,false)
{
	//Back
	with instance_create(x+random(16)-8,y+random(30)-15,Flame)
	{
		team = 2;	
	}
}
else
{*/
	//Front
	if instance_exists(Player) && Player.sheepPower > Player.sheepPowerToHaveEffect
		with instance_create(x+lengthdir_x(32,image_angle) + random_range(-12,12),y+lengthdir_y(32,image_angle) + random_range(-12,12),Flame)
		{
			team = 2;	
		}
//}