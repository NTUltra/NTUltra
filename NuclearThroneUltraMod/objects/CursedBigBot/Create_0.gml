/// @description Cursed!

// Inherit the parent event
event_inherited();
raddrop += 10;
image_speed += 0.1;
fireDelay -= 10;
maxhealth = 60;
maxSpeed += 1;
acc += 0.2;
actTime -= 2;
EnemyHealthAdjustments();

spr_idle = sprCursedBigBotIdle;
spr_walk = sprCursedBigBotWalk;
spr_hurt = sprCursedBigBotHurt;
spr_dead = sprCursedBigBotDead;
spr_fire = sprCursedBigBotFire;
type = 1;