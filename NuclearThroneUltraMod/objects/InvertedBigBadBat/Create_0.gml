/// @description TWEAK THAT SHIT YO

// Inherit the parent event
event_inherited();
raddrop = 70
maxhealth = 500
if loops > 0
	maxhealth = 600
scrBossHealthBuff();
rotationSpeed *= 1.05;
EnemyHealthAdjustments();
spr_idle = sprInvertedBigBadBatIdle
spr_walk = sprInvertedBigBadBatIdle
spr_hurt = sprInvertedBigBadBatHurt
spr_dead = sprInvertedBigBadBatDead
spr_fire = sprInvertedBigBadBatFire
spr_chrg = spr_fire
actTime = 17;
spinAttackDuration = 60;
spinAttackDistance = 64;
laserOffset = 26;
laserDuration = 40;
fireRate = 4;
maxAmmo = 6;
ammo = maxAmmo;
speedUp = 6;
minDistanceToTarget = 70;
maxDistanceToTarget = 136;
distanceToTarget = maxDistanceToTarget;
pSpeedAccurate = 3.2;
pSpeedSpinny = 2.9;
pSpeedJawbreaker = 4.1;
myBat = InvertedSquareBat;
if loops > 0
{
	actTime -= 5;
	pSpeedAccurate += 0.3;
	pSpeedJawbreaker += 0.5;
	pSpeedSpinny += 0.2;
}
if loops > 4
{
	pSpeedSpinny += 0.2;
}