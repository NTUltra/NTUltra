/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 150;

spr_idle = sprInvertedBigVultureIdle;
spr_walk = sprInvertedBigVultureWalk;
spr_hurt = sprInvertedBigVultureHurt;
spr_eat = sprInvertedBigVultureEat;
spr_dead = sprInvertedBigVultureDead

projectileSpeed += 0.8;
isInverted = true;
raddrop = 80
maxhealth = 140;
if loops > 0
{
	maxhealth += 50;
}
scrBossHealthBuff();
EnemyHealthAdjustments();
maxAmmo = 24;
fireRate = 1;
fireRate2 = 5;
if loops > 0
{
	maxAmmo += 2;
	fireRate2 = 4;	
}
chargeSpeed = 4.8;
maxChargeSpeed = 18;
maxSpeed = 3.2;
