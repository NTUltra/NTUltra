/// @description Can have weapon mods to pass on
Mod1=0;
Mod2=0;
Mod3=0;
Mod4=0;
wepFire=0;
team = 0;
boosted = false;
if instance_exists(Player)
{
	Mod1=Player.wepmod1;
	Mod2=Player.wepmod2;
	Mod3=Player.wepmod3;
	Mod4=Player.wepmod4;
	wepFire=Player.wep;
}