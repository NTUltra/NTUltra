event_inherited();
typ = 2 
dmg = 100;
aimed = false;
lp = 0;
t = 0;
col = c_lime;
width = 3;
cost = 0.5;
borderWidth = 1;
middleColour = c_white;
canDamage = true;
cost = 0;
knockback = 20;
if instance_exists(Player) && Player.skill_got[17]
{
	dmg += 20 + (Player.betterlaserbrain * 5);
	width += 2;
	borderWidth += 1;
}