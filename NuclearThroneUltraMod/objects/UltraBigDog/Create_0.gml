///@description Init
event_inherited()
raddrop = 200;
maxhealth = 1200;
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprUltraBigDogIdle;
spr_walk = sprUltraBigDogWalk;
spr_hurt = sprUltraBigDogHurt;
spr_dead = sprUltraBigDogDead;
spr_fire = sprUltraBigDogFire;
spr_intro = sprUltraBigDogIntro;
spr_actual_idle = spr_idle;
spr_actual_hurt = spr_hurt;
spr_stop = sprUltraBigDogStop;
spr_charge = sprUltraBigDogCharge;
fireRate = 4;
turnSpeed = 1;
usedMaxAmmo = 20;
missileType = UltraBigDogMissile;
missileAmount ++;
actTime -= 5;
acc = 0.7;
maxSpeed = 2.5;
maxSpinSpeed = 0.8;