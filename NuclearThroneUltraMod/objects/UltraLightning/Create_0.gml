event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

image_speed = 0.4
target=enemy;
dmg = 10
accuracy=24;
iframeskip = 0.07;
fork = 7;
branch = 15;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1{
		image_speed = 0.32-(Player.betterlaserbrain*0.06)
		iframeskip += 0.01;
		dmg ++;
		fork--;
	}
	//Lightning is fast take mods immediatly
	Mod1=Player.wepmod1;
	Mod2=Player.wepmod2;
	Mod3=Player.wepmod3;
	Mod4=Player.wepmod4;
	if Player.ultra_got[59]=1//atom electron ultra
	{
		image_speed-=0.09;
		dmg += 1;
		fork -= 2;
	}
	if Player.race=24
	{
		dmg ++;
		fork --;
	}

}
isog = true;
canUltraMod = true;
canBeMoved = false;
UberCont.recursionCheck ++;