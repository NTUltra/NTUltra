/// @description xxx
shouldResetTo = true;
if instance_exists(Player)
{
	shouldResetTo = Player.canHeal;
	Player.canHeal = false;
}

alarm[0] = 60;