/// @description Init

// Inherit the parent event
event_inherited();
range += 100;
raddrop = 20
maxhealth = 25
EnemyHealthAdjustments();
spr_idle = sprInvertedGoldNecromancerIdle
spr_walk = sprInvertedGoldNecromancerWalk
spr_hurt = sprInvertedGoldNecromancerHurt
spr_dead = sprInvertedGoldNecromancerDead

snd_hurt = sndGoldNecromancerHit

actTime -= 8;

maxSpeed = 5;
acc = 1.4;
reviveArea = InvertedGoldReviveArea;
alarm[0] = 0;