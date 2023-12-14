/// @description Cursed!

// Inherit the parent event
event_inherited();
raddrop += 10;
image_speed += 0.1;
fireDelay -= 5;
maxhealth = 60;
actTime -= 1;
EnemyHealthAdjustments();

spr_idle = sprCursedBigBotIdle;
spr_walk = sprCursedBigBotWalk;
spr_hurt = sprCursedBigBotHurt;
spr_dead = sprCursedBigBotDead;
spr_fire = sprCursedBigBotFire;
type = 1;