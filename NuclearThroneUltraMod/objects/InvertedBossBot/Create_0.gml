/// @description Init change

// Inherit the parent event
event_inherited();

maxhealth = 550
raddrop += 10;
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprInvertedBossBotIdle;
spr_walk = sprInvertedBossBotWalk;
spr_hurt = sprInvertedBossBotHurt;
spr_dead = sprInvertedBossBotDead;
spr_fire = sprInvertedBossBotFire;
spr_actual_walk = spr_walk;
spr_actual_idle = spr_idle;
spr_charge = sprInvertedBossBotCharge;
spr_charge_hurt = sprInvertedBossBotChargeHurt;
spr_actual_hurt = spr_hurt;
spr_become_charge = sprInvertedBossBotBecomeBall;
maxSpeed += 1;
acc += 0.4;
actTime -= 10;
fireDelay -= 5;
wepspr = sprInvEnemyEraser;
bowlingDuration += 30;
alarm[6] += 30;
bowlingMaxSpeed += 3;
bowlingAcc += 1;
event_user(1);