event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

image_speed = 0.4
target=enemy;
dmg = 11
accuracy=24;
iframeskip = 0.14;
fork = 7;
branch = 15;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1{
		image_speed = 0.3-(Player.betterlaserbrain*0.06)
		iframeskip += 0.01;
		dmg ++;
		fork--;
	}

	if Player.ultra_got[59]=1//atom electron ultra
	{
		image_speed-=0.1;
		dmg += 2;
		fork -= 2;
	}

}
isog = true;
canUltraMod = true;
canBeMoved = false;
UberCont.recursionCheck ++;