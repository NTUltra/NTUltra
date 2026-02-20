/// @description Init

// Inherit the parent event
event_inherited();
alarm[0] = 0;
raddrop = 30
maxhealth = 60
my_health = maxhealth;
EnemyHealthAdjustments();
maxRange += 40;
spr_idle = sprGoldWormIdle
spr_walk = sprGoldWormIdle
spr_hurt = sprGoldWormHurt
spr_dead = sprGoldWormDead
spr_fire = sprGoldWormFire;

snd_hurt = sndHitMetal;
snd_dead = sndFrogExplode;

mySecondLaser = -1;

maxAmmo = 3;
ammo = maxAmmo;
fireRate = 3;
actTime = 11;
laserDuration = 48;
maxRange += 100;
/*
actTime = 9;
maxSpeed = 2.4;
acc = 0.8;
tellTime = 25;
laserDuration = 65;
laserOffsetMax = 40;
maxRange = 220;
maxRange += min(GetPlayerLoops()*20,400);
isInverted = true;
*/
