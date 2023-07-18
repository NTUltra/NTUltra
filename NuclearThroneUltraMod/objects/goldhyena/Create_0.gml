/// @description xxx

// Inherit the parent event
event_inherited();

raddrop = 30
maxhealth = 45
meleedamage = 5
EnemyHealthAdjustments();

spr_idle = sprGoldHyenaIdle;
spr_eat = sprGoldHyenaEat;
spr_walk = sprGoldHyenaWalk;
spr_hurt = sprGoldHyenaHurt;
spr_dead = sprGoldHyenaDead;

snd_hurt = sndGoldHyenaHurt

actTime -= 5;
maxSpeed +=0.5;
acc += 0.2;
accCharge += 0.7;
healTime -= 5;
firstGoAround = true;