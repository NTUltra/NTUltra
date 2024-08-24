/// @description Hit A Wall
if !(instance_exists(Player) && Player.ultra_got[74] && Player.altUltra)
{
	instance_destroy();
}
