/// @description Faster and lower health

// Inherit the parent event
event_inherited();
raddrop += 5;
maxhealth = 15;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 10;
projectileSpeed += 0.5;
EnemyHealthAdjustments();
spr_idle = sprCursedSquareBotIdle;
spr_walk = sprCursedSquareBotWalk;
spr_hurt = sprCursedSquareBotHurt;
spr_dead = sprCursedSquareBotDead;
spr_fire = sprCursedSquareBotFire;
type = 1;