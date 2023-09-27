/// @description Ultra!

// Inherit the parent event
event_inherited();
raddrop += 20;
maxhealth = 100;
maxSpeed += 1;
acc += 0.2;
actTime -= 10;
projectileSpeed += 2;
EnemyHealthAdjustments();

spr_idle = sprUltraBigBotIdle;
spr_walk = sprUltraBigBotWalk;
spr_hurt = sprUltraBigBotHurt;
spr_dead = sprUltraBigBotDead;
spr_fire = sprUltraBigBotFire;
type = 1;