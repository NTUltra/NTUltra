event_inherited();
friction = 0.8

wallbounce = 0
alarm[1] = 4;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		wallbounce = 8
		friction = 0.7
		alarm[1] += 3;
		if Player.race=25
		{
			wallbounce = 10;

			if Player.ultra_got[97] && !Player.altUltra
			{
				wallbounce+=4;
				alarm[1]+=2;
			}
		}
	}
}
typ = 1 
ShotgunShouldersType();
dmg = 24;
alarm[11] = 1;