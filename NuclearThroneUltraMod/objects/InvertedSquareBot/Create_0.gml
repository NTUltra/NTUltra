/// @description Faster and lower health

// Inherit the parent event
event_inherited();
raddrop += 5;
maxhealth = 14;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 10;
projectileSpeed += 0.5;
EnemyHealthAdjustments();
spr_idle = sprInvertedSquareBotIdle;
spr_walk = sprInvertedSquareBotWalk;
spr_hurt = sprInvertedSquareBotHurt;
spr_dead = sprInvertedSquareBotDead;
spr_fire = sprInvertedSquareBotFire;
type = 1;