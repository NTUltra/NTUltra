/// @description xxx

// Inherit the parent event
event_inherited();

maxhealth = 550
raddrop += 10;
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprCursedBossBotIdle;
spr_walk = sprCursedBossBotWalk;
spr_hurt = sprCursedBossBotHurt;
spr_dead = sprCursedBossBotDead;
spr_fire = sprCursedBossBotFire;
spr_actual_walk = spr_walk;
spr_actual_idle = spr_idle;
spr_charge = sprCursedBossBotCharge;
spr_charge_hurt = sprCursedBossBotChargeHurt;
spr_actual_hurt = spr_hurt;
spr_become_charge = sprCursedBossBotBecomeBall;
maxSpeed += 0.6;
acc += 0.3;
actTime -= 6;
fireDelay += 10;
laserTell = [];
wepspr = sprGoldenSuperDiscGun;
event_user(1);