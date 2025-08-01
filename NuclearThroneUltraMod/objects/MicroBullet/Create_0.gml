event_inherited();
typ = 2 
dmg = 2;
dmgPercentage = 0;
aimed = false;
lp = 0;
t = 0;
col = c_yellow;
width = 2;
cost = 0.5;
bloomSet = 3;
radCost = 0;
radCost = 0;
borderWidth = 0.5;
middleColour = c_white;
canDamage = true;
timeIncrease = 0.3;
canRecycle = false;
destroyTime = 6;
if instance_exists(Player)
{
	if Player.ultra_got[28]//roids ultra d
	{
		dmg += 1;
	}
}
knockback = 2;
hitTarget = noone;
