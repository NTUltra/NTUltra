/// @description Stay with player
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	image_angle = Player.direction;
	if Player.speed < Player.maxspeed-0.5
	{
		image_speed = 0.8;
	}
	else
	{
		image_index = 0;
		image_speed = 0;
	}
}
else
{
	image_speed = 0.8;
}
