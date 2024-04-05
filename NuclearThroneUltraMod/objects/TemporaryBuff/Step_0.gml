/// @description fire rate buff
if instance_exists(Player)
{
	if UberCont.normalGameSpeed == 60
		Player.reload -= 0.5;
	else
		Player.reload --;
}

