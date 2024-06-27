/// @description Follow player
if instance_exists(Player)
{
	x = min(xstart + 64,xstart - min(64,((xstart - Player.x) * 0.5)));
	y = ystart - min(64,((ystart - Player.y) * 0.5));
}