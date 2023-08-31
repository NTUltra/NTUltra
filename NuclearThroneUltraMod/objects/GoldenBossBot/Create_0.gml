/// @description Init

// Inherit the parent event
event_inherited();
fireDelay = 46;
maxhealth = 700;
scrBossHealthBuff();
EnemyHealthAdjustments();
raddrop += 5;
spr_idle = sprGoldenBossBotIdle;
spr_walk = sprGoldenBossBotWalk;
spr_hurt = sprGoldenBossBotHurt;
spr_dead = sprGoldenBossBotDead;
spr_fire = sprGoldenBossBotFire;
spr_actual_walk = spr_walk;
spr_actual_idle = spr_idle;
spr_charge = sprGoldenBossBotCharge;
spr_charge_hurt = sprGoldenBossBotChargeHurt;
spr_actual_hurt = spr_hurt;
spr_become_charge = sprGoldenBossBotBecomeBall;
type = 3;
wepflip = 1;
wepangle1 = choose(-140,140)
wepangle2 = wepangle1*-1;
actTime -= 5;
maxSpeed += 0.5;
projectileSpeed = 3;
maxReload = 8;
wepspr = sprGoldenSword;