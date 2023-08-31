/// @description Init

// Inherit the parent event
event_inherited();
raddrop += 5;
maxhealth = 20;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 15;
projectileSpeed += 0.5;
EnemyHealthAdjustments();
spr_idle = sprCursedWallBotIdle;
spr_walk = sprCursedWallBotWalk;
spr_hurt = sprCursedWallBotHurt;
spr_dead = sprCursedWallBotDead;
spr_fire = sprCursedWallBotFire;