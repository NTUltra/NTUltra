event_inherited();
friction = 0.8

wallbounce = 0
alarm[1] = 4;
shotgunshouldered = false;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		alarm[2] = 1;
		shotgunshouldered = true;
		wallbounce = 8
		friction = 0.6
		alarm[1] += 3;
		if Player.race=25
		{
			wallbounce = 10;

			if Player.ultra_got[97] && !Player.altUltra
			{
				friction -= 0.1;
				wallbounce+=4;
				alarm[1]+=4;
			}
		}
	}
}
typ = 1 
ShotgunShouldersType();
dmg = 24;
alarm[11] = 1;

imageXscale = 1;
imageYscale = 1;