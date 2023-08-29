/// @description Init

// Inherit the parent event
event_inherited();
alarm[1] -= 45;
raddrop += 5;
maxhealth = 15;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 10;
projectileSpeed += 0.5;
EnemyHealthAdjustments();
spr_idle = sprCursedOctaBotIdle;
spr_walk = sprCursedOctaBotWalk;
spr_hurt = sprCursedOctaBotHurt;
spr_dead = sprCursedOctaBotDead;
spr_fire = sprCursedOctaBotFire;
type = 1;