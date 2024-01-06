/// @description Init

// Inherit the parent event
event_inherited();
alarm[1] -= 45;
raddrop += 5;
maxhealth = 14;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 10;
projectileSpeed += 0.5;
EnemyHealthAdjustments();
spr_idle = sprInvertedOctaBotIdle;
spr_walk = sprInvertedOctaBotWalk;
spr_hurt = sprInvertedOctaBotHurt;
spr_dead = sprInvertedOctaBotDead;
spr_fire = sprInvertedOctaBotFire;
type = 1;