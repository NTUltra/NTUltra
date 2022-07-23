if instance_exists(Player)
{
	if (Player.hogpoints < 1 && !(Player.ultra_got[0] && !Player.altUltra && !Player.horrorEtaken) && Player.level > 1)
	{
		Player.skillsChosen=0;
	}
	if (UberCont.opt_gamemode == 30 && Player.level == 1 && Player.skillsChosen > 0)
	{
		Player.skillsChosen=0;
	}
}