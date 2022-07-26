/// @description Init

// Inherit the parent event
event_inherited();

raddrop = 30
maxhealth = 40
meleedamage = 5
EnemyHealthAdjustments();

spr_idle = sprInvertedGoldHyenaIdle;
spr_eat = sprInvertedGoldHyenaEat;
spr_walk = sprInvertedGoldHyenaWalk;
spr_hurt = sprInvertedGoldHyenaHurt;
spr_dead = sprInvertedGoldHyenaDead;

snd_hurt = sndGoldHyenaHurt

actTime -= 5;
maxSpeed +=1.5;
acc += 0.4;
accCharge += 1;
healTime -= 8;
firstGoAround = true;