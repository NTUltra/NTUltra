/// @description Init

// Inherit the parent event
event_inherited();
alarm[0] = 0;
raddrop = 50;
maxhealth = 180;
EnemyHealthAdjustments();
spr_idle = sprGoldTeaPotIdle;
spr_walk = sprGoldTeaPotWalk;
spr_hurt = sprGoldTeaPotHurt;
spr_dead = sprGoldTeaPotDead;
spr_fire = sprGoldTeaPotFire;

snd_hurt = sndGoldTankHurt;
actTime -= 8;
