/// @description Init

// Inherit the parent event
event_inherited();

raddrop = 8
maxhealth = 19
my_health = maxhealth;
EnemyHealthAdjustments();

spr_idle = sprInvertedFireWormIdle
spr_walk = sprInvertedFireWormIdle
spr_hurt = sprInvertedFireWormHurt
spr_dead = sprInvertedFireWormDead
spr_fire = sprInvertedFireWormFire;

actTime = 10;
maxSpeed = 2.4;
acc = 0.8;
tellTime = 25;
laserDuration = 65;
laserOffsetMax = 40;
maxRange = 200;
maxRange += min(GetPlayerLoops()*20,400);
isInverted = true;
