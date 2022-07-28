/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 70;
maxhealth = 195;//210
meleedamage = 3
size = 3
if GetPlayerLoops() > 0{
	maxhealth = 340//370;
}
EnemyHealthAdjustments()
actTime = 5;
maxspeed = 3;//2
chargeSpeed = 9;//7
chargeDis = 120;
suckAcc = 0.098;
chargeTell = 15;
spr_idle = sprInvertedOasisBossIdle
spr_walk = sprInvertedOasisBossWalk
spr_hurt = sprInvertedOasisBossHurt
spr_dead = sprInvertedOasisBossDead
spr_fire = sprInvertedOasisBossFire
spr_startfire = sprInvertedOasisBossFireStart
spr_endfire = sprInvertedOasisBossFireEnd