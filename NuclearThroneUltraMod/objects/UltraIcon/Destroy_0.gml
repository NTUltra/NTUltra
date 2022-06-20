if instance_exists(Player)
{
	debug("etaken: ",Player.horrorEtaken);
	/*
	if (Player.hogpoints < 1 && !(Player.ultra_got[0] && !Player.horrorEtaken) && Player.level > 1)
	{
		Player.skillsChosen-=1;
	}*/
	if (UberCont.opt_gamemode == 30 && Player.level == 1)
	{
		Player.skillsChosen=0;
	}
}