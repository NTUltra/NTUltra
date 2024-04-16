/// @description Euphoria
event_inherited();
if instance_exists(Player)
{
	if team != Player.team
	{
		if scrIsCrown(23)//Crown of speed
		{
			curveSpeed *= 1.1
		}
		if Player.skill_got[12] = 1
		{
			curveSpeed *= 0.75;
		}
		if scrIsCrown(24)//Crown of sloth
		{
			curveSpeed *= 0.85
		}
	}
}