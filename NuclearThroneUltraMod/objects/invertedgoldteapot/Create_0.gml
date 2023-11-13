/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 60;
maxhealth = 170;
EnemyHealthAdjustments();
spr_idle = sprInvertedGoldTeaPotIdle;
spr_walk = sprInvertedGoldTeaPotWalk;
spr_hurt = sprInvertedGoldTeaPotHurt;
spr_dead = sprInvertedGoldTeaPotDead;
spr_fire = sprInvertedGoldTeaPotFire;

maxSpeed += 1;
snd_hurt = sndGoldTankHurt;
actTime -= 10;
alarm[0] = 0;