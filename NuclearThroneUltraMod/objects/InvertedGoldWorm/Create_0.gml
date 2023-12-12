/// @description Init

// Inherit the parent event
event_inherited();

spr_idle = sprInvertedGoldWormIdle
spr_walk = sprInvertedGoldWormIdle
spr_hurt = sprInvertedGoldWormHurt
spr_dead = sprInvertedGoldWormDead
spr_fire = sprInvertedGoldWormFire;

actTime = 8;
maxSpeed = 2.4;
acc = 0.8;
tellTime = 25;
laserDuration = 65;
laserOffsetMax = 40;
maxRange = 220;
maxRange += min(GetPlayerLoops()*20,400);
isInverted = true;
