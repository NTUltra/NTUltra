image_speed=0;
projectileHitBrake = 3;
enemyHitbrake = 5;
bloomSprite = sprSheepDashBloom;
imageIndex = 0;
dmg = 1;
if instance_exists(Player)
{
	var damageBoost = max(1,Player.skill_got[8]*1.2) + frac(Player.skill_got[5] * 1.4);
	dmg = 1*damageBoost;
	if Player.skill_got[2]//Extra feet synergy why not
	{
		projectileHitBrake-= 0.4;
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
		projectileHitBrake -= 0.4;
		enemyHitbrake -= 0.8;
	}
    if Player.ultra_got[51]
    {
		sprite_index=sprSheepDashFXultra;
		projectileHitBrake-= 0.7;
		enemyHitbrake -= 2;
		dmg = 1.2*damageBoost;
    }
    if Player.skill_got[5]==1
    {
		sprite_index=sprSheepDashFXthrn;
    }
    if Player.skill_got[5] && Player.ultra_got[51]
    {
		sprite_index=sprSheepDashFXultrathrn;
    }
}else{instance_destroy();}

alpha = 0;


thresholdBroken = false;
//TODO make this speed based
/*
	Where enemies and projectiles and walls slow you down
*

