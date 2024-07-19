/// @description Stay with the player
if !instance_exists(Player)
{
	instance_destroy();
	exit;
}
with Player
{
	other.x = x;
	other.y = y;
}