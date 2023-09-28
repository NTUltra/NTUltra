event_inherited();
friction = 0.6

wallbounce = 0
alarm[1]=5;
shotgunshouldered = false;
if instance_exists(Player)
{
if Player.race==24
	alarm[1] += 2;
	if Player.skill_got[15] = 1
	{
		shotgunshouldered = true;
		friction = 0.5;
		wallbounce = 7
		alarm[1]+=3;

		if Player.race=25
		{
			wallbounce = 8;

			if Player.ultra_got[97] && !Player.altUltra
			{
				wallbounce+=5;
				friction = 0.4;
				alarm[1]+= 2;
			}
		}
	}
}
dmg=3;

typ = 1
ShotgunShouldersType();
alarm[11] = 1;