/// @description Faster and lower health

// Inherit the parent event
event_inherited();
raddrop += 2;
maxhealth = 35;
maxSpeed -= 0.5;
actTime -= 50;
projectileSpeed = 3;
EnemyHealthAdjustments();
spr_idle = sprGoldenSquareBotIdle;
spr_walk = sprGoldenSquareBotWalk;
spr_hurt = sprGoldenSquareBotHurt;
spr_dead = sprGoldenSquareBotDead;
spr_fire = sprGoldenSquareBotFire;