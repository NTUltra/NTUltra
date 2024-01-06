/// @description Init

// Inherit the parent event
event_inherited();
raddrop += 5;
maxhealth = 14;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 10;
projectileSpeed += 0.5;
EnemyHealthAdjustments();
spr_idle = sprInvertedWallBotIdle;
spr_walk = sprInvertedWallBotWalk;
spr_hurt = sprInvertedWallBotHurt;
spr_dead = sprInvertedWallBotDead;
spr_fire = sprInvertedWallBotFire;
type = 1;