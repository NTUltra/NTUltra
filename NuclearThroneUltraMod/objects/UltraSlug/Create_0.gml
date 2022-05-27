event_inherited();
friction = 0.5//0.8

wallbounce = 4

typ = 1
alarm[1] = 4;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		wallbounce += 8;
		alarm[1] += 3;
		if Player.ultra_got[97]
		{
		wallbounce+=5;
		alarm[1]+=2;
		}
	}
}
dmg = 80;//heavy slug = 70 / 60 dmg
alarm[11] = 1;