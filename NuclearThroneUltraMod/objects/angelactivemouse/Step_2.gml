/// @description Follow Mouse
if instance_exists(Player)
{
	x = UberCont.mouse__x;
	y = UberCont.mouse__y;
}
else
	instance_destroy();