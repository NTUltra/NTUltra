/// @description Init

// Inherit the parent event
event_inherited();
maxhealth = 800
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprUltraBossBotIdle;
spr_walk = sprUltraBossBotWalk;
spr_hurt = sprUltraBossBotHurt;
spr_dead = sprUltraBossBotDead;
spr_fire = sprUltraBossBotFire;
spr_actual_walk = spr_walk;
spr_actual_idle = spr_idle;
spr_charge = sprUltraBossBotCharge;
spr_charge_hurt = sprUltraBossBotChargeHurt;
spr_actual_hurt = spr_hurt;
spr_become_charge = sprUltraBossBotBecomeBall;
maxSpeed += 2;
acc += 1;
actTime -= 14;
bowlingDuration += 20;
alarm[6] += 20;
bowlingMaxSpeed += 2.5;
bowlingAcc += 1;
fireDelay += 4;
event_user(1);
raddrop = 160;
wepspr = sprUltraBossBotGun