event_inherited();
dmg = 200;
t = 0.5;
col = c_lime;
width = 4;
cost = 0.5;
borderWidth = 2;
middleColour = make_colour_rgb(200,252,50);
canDamage = true;
cost = 0;
knockback = 40;
timeIncrease = 0.1;
destroyTime = 30;
railFx = sprUltraRailGunEffect;
railHit = sprUltraRailgunHit;
hitScale = 1;
splashDamage = 24;
if instance_exists(Player) && Player.skill_got[17]
{
	dmg += 60 + (Player.betterlaserbrain * 5);
	splashDamage += 6;
	hitScale = 1.25;
	width += 2;
	borderWidth += 1;
}