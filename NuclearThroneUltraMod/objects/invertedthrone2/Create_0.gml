/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 80
maxhealth = 880;
EnemyHealthAdjustments();

spr_idle = sprNothing2Idle
spr_walk = sprNothing2Idle
spr_hurt = sprNothing2Hurt
spr_dead = sprNothing2Death

isInverted = true;
actTime -= 5;
rotationSpeed *= 1.1;
crossAmount ++;
fireRate -= 1
maxAmmo ++;
crossAngleStep = 360/crossAmount;