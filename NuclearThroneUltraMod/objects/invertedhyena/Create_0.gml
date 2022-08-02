/// @description Init

// Inherit the parent event
event_inherited();

raddrop = 13
maxhealth = 7;
meleedamage = 4;
EnemyHealthAdjustments();
maxSpeed = 4.6;
actTime = 12;
healTime = 12;
if loops > 0
{
	maxSpeed = 5;
	actTime = 10;
}
if loops > 2
	maxSpeed = 5.4;
	
acc = 1.2;
accCharge = 3;

spr_idle = sprInvertedHyenaIdle
spr_eat = sprInvertedHyenaEat;
spr_walk = sprInvertedHyenaWalk;
spr_hurt = sprInvertedHyenaHurt;
spr_dead = sprInvertedHyenaDead;