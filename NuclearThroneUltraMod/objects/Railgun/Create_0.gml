event_inherited();
dmg = 100;
col = c_lime;
width = 3;
cost = 0;
borderWidth = 1;
middleColour = c_white;
canDamage = true;
cost = 0;
knockback = 20;
railFx = sprRailGunEffect;
railHit = sprRailgunHit;
hitScale = 1;
if instance_exists(Player) && Player.skill_got[17]
{
	hitScale = 1.25;
	dmg += 20 + (Player.betterlaserbrain * 5);
	width += 2;
	borderWidth += 1;
}