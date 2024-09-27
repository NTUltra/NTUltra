event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
RecycleGlandType();
ShotgunShouldersType();
friction = 0.3;
norecycle = false;
dmg = 4;
alarm[11] = 1;
bulletCost = 1;
shotgunCost = 1;
radCost = 0;
wallbounce = 1;
shotgunshouldered = false;
splashDamage = 0;
splashDamageRange = 12;
minSpeed = 8;
imageXscale = 1;
imageYscale = 1;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		minSpeed += 2;
		splashDamage += 1;
		splashDamageRange += 6;
		shotgunshouldered = true;
		friction -= 0.1;
		friction = 0.4
		alarm[2] = 1;
		wallbounce += 8
		alarm[1]+=4;

		if Player.race == 25
		{
			wallbounce = 10;
		}
		if Player.ultra_got[97] && !Player.altUltra
		{
			friction -= 0.1;
			wallbounce += 4;
			alarm[1]+=2;
		}
	}
	if Player.skill_got[16]
	{
		minSpeed += 1;
		splashDamage += 1;
		splashDamageRange += 6;
	}
	if Player.ultra_got[28]//roids ultra d
	{
		dmg += 2;
	}
}