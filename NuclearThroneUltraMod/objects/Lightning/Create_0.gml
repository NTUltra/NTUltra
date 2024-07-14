event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

accuracy=18;
branch = 20;
imageSpeed = 0.4
target = noone;
dmg = 9;
image_speed = 0;
iframeskip = 0.075;
fork = 6;
bloom = 0;
ammo = 0;
if instance_exists(Player){
	if Player.skill_got[17] = 1{
		bloom += 0.1;
		imageSpeed = 0.35-(Player.betterlaserbrain*0.06)
		dmg ++;
		fork --;
		iframeskip += 0.01;
	}
	//Lightning is fast take mods immediatly
	Mod1=Player.wepmod1;
	Mod2=Player.wepmod2;
	Mod3=Player.wepmod3;
	Mod4=Player.wepmod4;

	if Player.skill_got[19]==1
	{
		accuracy = 10;
	}

	if Player.ultra_got[59] && !Player.altUltra//atom electron ultra
	{
		imageSpeed -= 0.1;
		dmg += 1;
		fork -= 2;
	}
	
	if Player.race == 24
	{
		accuracy -= 2;
		imageSpeed -= 0.1;
		fork --;
		sprite_index = sprLightningUpg;
	}
	
}

isog = true;
canUltraMod = true;
canBeMoved = false;
isLaser = false;
UberCont.recursionCheck ++;
lightningList = [];