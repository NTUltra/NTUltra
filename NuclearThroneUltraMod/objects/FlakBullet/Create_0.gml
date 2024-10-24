event_inherited();
friction = 0.4
typ = 1 
ShotgunShouldersType();
bullets=16;
dmg = 10;
pSpeed = 8;
alarm[1] = 2;
shotgunshouldered = false;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		shotgunshouldered = true;
		friction = 0.3;
		alarm[1] += 2;
		if Player.ultra_got[97] && !Player.altUltra
		{
			friction = 0.2;
		alarm[1]+=1;
		}
	}
}