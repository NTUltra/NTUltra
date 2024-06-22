/// @description Stay with the player
if !instance_exists(Player)
{
	instance_destroy();	
}
with Player
{
	other.x = x;
	other.y = y;
}