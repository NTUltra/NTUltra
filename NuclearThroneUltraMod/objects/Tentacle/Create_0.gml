event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

accuracy=10;
ion=false;
typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects
dmg=4;
image_speed = 0.3;
target=noone;
bloodDelay = 15;
meatDmgReduction = 1;
alarm[1] = 10;
if instance_exists(Player)
{
	if Player.skill_got[19]==1
	{
	accuracy=5;
	}
	if Player.race=24//Elementor's passive
	{
		dmg += 1;
		accuracy -= 2;
	}
	if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
	{
		image_speed-=0.1;
		dmg += 1;
		alarm[1] = 8;
		bloodDelay = 10;
		meatDmgReduction = 0;
		image_yscale += 0.1;
	}
	//Kraken is fast take mods immediatly
	Mod1=Player.wepmod1;
	Mod2=Player.wepmod2;
	Mod3=Player.wepmod3;
	Mod4=Player.wepmod4;
}
ultra = false;
isog = true;
canBeMoved = false;
isLaser = false;
UberCont.recursionCheck ++;