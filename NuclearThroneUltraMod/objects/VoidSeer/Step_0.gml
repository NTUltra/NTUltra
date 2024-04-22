/// @description Follow player
if instance_exists(Player)
{
	x = xstart - min(128,((xstart - Player.x) * 0.5));
	y = ystart - min(64,((ystart - Player.y) * 0.5));
}
if alarm[2] > 1 && instance_exists(KeyCont) && KeyCont.key_fire[0] = 1
{
	alarm[2] = 1;
}