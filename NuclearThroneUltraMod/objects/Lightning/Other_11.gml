/// @description Apply Energy brain
if Player.skill_got[17] = 1{
	defaultYscale += 1;
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