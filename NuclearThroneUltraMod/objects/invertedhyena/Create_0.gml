/// @description Init

// Inherit the parent event
event_inherited();

raddrop = 13
maxhealth = 7;
meleedamage = 4;
EnemyHealthAdjustments();
maxSpeed = 5;
actTime = 12;
healTime = 12;
if loops > 0
{
	maxSpeed = 5.5;
	actTime = 8;
}
if loops > 4
	maxSpeed = 6;
	
acc = 0.8;
accCharge = 2;

spr_idle = sprInvertedHyenaIdle
spr_eat = sprInvertedHyenaEat;
spr_walk = sprInvertedHyenaWalk;
spr_hurt = sprInvertedHyenaHurt;
spr_dead = sprInvertedHyenaDead;