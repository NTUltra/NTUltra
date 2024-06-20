if instance_exists(Player)
{
	if !moving
	{
		x = Player.x;
		y = Player.y;
	}
}
else
	instance_destroy();