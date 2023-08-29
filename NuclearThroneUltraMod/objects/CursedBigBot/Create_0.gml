/// @description Cursed!

// Inherit the parent event
event_inherited();
raddrop += 10;
image_speed += 0.1;
fireDelay -= 10;
maxhealth = 50;
maxSpeed += 0.5;
acc += 0.2;
actTime -= 2;
projectileSpeed += 0.5;
EnemyHealthAdjustments();

spr_idle = sprCursedBigBotIdle;
spr_walk = sprCursedBigBotWalk;
spr_hurt = sprCursedBigBotHurt;
spr_dead = sprCursedBigBotDead;
spr_fire = sprCursedBigBotFire;
type = 1;