image_speed=0;
projectileHitBrake = 3.5;
breakImmunity = 3;
loseOnBreak = 12;
enemyHitbrake = 5;
bloomSprite = sprSheepDashBloom;
imageIndex = 0;
baseDmg = 1.2;
gotVision = false;
dmg = baseDmg;
depth = -1;
breakReduction = 0;
team = 2;
wepFire = -2;
isVenomized = 0;
if instance_exists(Player)
{
	if scrIsHardMode()
		baseDmg += 0.1;
	baseDmg += Player.loops * 0.1;
	var damageBoost = max(1,Player.skill_got[8]*1.1) + frac(Player.skill_got[5] * 1.2);
	dmg = baseDmg*damageBoost;
	if Player.skill_got[2]//Extra feet synergy why not
	{
		projectileHitBrake-= 0.1;
		enemyHitbrake -= 0.8;
		bloomSprite = sprSheepDashBloomExtraFeet;
		if (Player.skill_got[8])
		{
			bloomSprite = sprSheepDashBloomExtraFeetGammaGuts;
		}
	}
	else if  (Player.skill_got[8])
	{
		bloomSprite = sprSheepDashBloomGammaGuts;
	}
	if Player.skill_got[5]
	{
		projectileHitBrake -= 0.25;
		enemyHitbrake -= 0.8;
	}
    if Player.ultra_got[51]
    {
		breakReduction = 4;
		sprite_index=sprSheepDashFXultra;
		projectileHitBrake-= 1;
		breakImmunity = 5;
		loseOnBreak = 9;
		enemyHitbrake -= 1.4;
		dmg = baseDmg*damageBoost;
    }
    if Player.skill_got[5]==1
    {
		sprite_index=sprSheepDashFXthrn;
		alarm[0] = 5;
    }
    if Player.skill_got[5] && Player.ultra_got[51]
    {
		sprite_index=sprSheepDashFXultrathrn;
    }
}else{instance_destroy();}

alpha = 0;

maxReach = 0;
maxScale = 1;
thresholdBroken = false;
//TODO make this speed based
/*
	Where enemies and projectiles and walls slow you down
*

