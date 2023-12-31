/// @description Slower

// Inherit the parent event
event_inherited();
raddrop += 5;
maxhealth = 20;
maxSpeed -= 0.25;
acc -= 0.1;
actTime -= 5;
alarm[1] += irandom_range(-2,2);
EnemyHealthAdjustments();
spr_idle = sprCursedSquareBotIdle;
spr_walk = sprCursedSquareBotWalk;
spr_hurt = sprCursedSquareBotHurt;
spr_dead = sprCursedSquareBotDead;
spr_fire = sprCursedSquareBotFire;