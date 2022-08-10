/// @description Teleport
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
}
if instance_exists(SpiralCont) || instance_exists(GenCont)
{
	alarm[0] = 2;
}
