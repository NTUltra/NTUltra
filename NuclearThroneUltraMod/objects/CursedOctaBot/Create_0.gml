/// @description Init

// Inherit the parent event
event_inherited();
raddrop += 5;
maxhealth = 20;
maxSpeed -= 0.25;
acc -= 0.1;
actTime -= 5;
alarm[1] += irandom_range(-2,2);
EnemyHealthAdjustments();
spr_idle = sprCursedOctaBotIdle;
spr_walk = sprCursedOctaBotWalk;
spr_hurt = sprCursedOctaBotHurt;
spr_dead = sprCursedOctaBotDead;
spr_fire = sprCursedOctaBotFire;