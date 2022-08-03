/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 80
maxhealth = 920;
if UberCont.opt_gamemode == 34
	maxhealth += 45;
maxhealth += max(0,40*min(12,(loops-1)));
EnemyHealthAdjustments();

spr_idle = sprInvertedNothing2Idle
spr_walk = sprInvertedNothing2Idle
spr_hurt = sprInvertedNothing2Hurt
spr_dead = sprInvertedNothing2Death

isInverted = true;
actTime -= 5;
rotationSpeed *= 1.1;
crossAmount ++;
fireRate -= 1
maxAmmo ++;
crossAngleStep = 360/crossAmount;