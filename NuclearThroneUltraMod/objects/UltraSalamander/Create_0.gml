///@description Fire
event_inherited();
maxhealth = 40;
raddrop = 30;
EnemyHealthAdjustments();
spr_idle = sprUltraSalamanderIdle
spr_walk = sprUltraSalamanderWalk
spr_hurt = sprUltraSalamanderHurt
spr_dead = sprUltraSalamanderDead
spr_fire = sprUltraSalamanderFire
spr_hurt = sprUltraSalamanderHurt
actTime = 15;
acc = 0.8;
maxSpeed = 2.5;
projectileSpeed = 2.5;
maxAmmo = 15;
angleEnd = 35;
angleStep = 7;
tellTime = 2;
loops = GetPlayerLoops();
projectileSpeed += min(loops*0.1,0.5);
swapper = true;