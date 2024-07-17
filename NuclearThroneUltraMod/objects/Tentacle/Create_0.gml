event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
hasStunned = false;
accuracy = 10;//10
ion=false;
typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects
dmg = 3;
image_speed = 0.3;
target=noone;
bloodDelay = 6;
image_yscale = 0.6;
fork = 0//6;
branch = 0//20;
canSwap = false;
alarm[2] = 5;
if instance_exists(Player)
{
	if Player.skill_got[19]==1
	{
		accuracy = 5;
	}
	if Player.race=24//Elementor's passive
	{
		image_yscale += 0.2;
		accuracy -= 2;
		sprite_index = sprTentacleUpg;
	}
	if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
	{
		image_speed-=0.1;
		dmg += 1;
		bloodDelay -= 1;
		alarm[2] += 1;
		fork = 8;
		image_yscale += 0.3;
	}
	if Player.ultra_got[96]{
		canSwap = true;
		fork = 8;
	}
	if Player.ultra_got[16] {
		bloodDelay -= 3;
	}
	//Kraken is fast take mods immediatly
	Mod1=Player.wepmod1;
	Mod2=Player.wepmod2;
	Mod3=Player.wepmod3;
	Mod4=Player.wepmod4;
}
alarm[1] = bloodDelay;
ultra = false;
isog = true;
canBeMoved = false;
isLaser = false;
UberCont.recursionCheck ++;
final = 0;