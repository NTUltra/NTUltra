/// @description Tweak it

// Inherit the parent event
event_inherited();
spr_idle = sprInvertedSquareBatIdle
spr_walk = sprInvertedSquareBatIdle
spr_hurt = sprInvertedSquareBatHurt
spr_dead = sprInvertedSquareBatDead
raddrop = 8;
maxhealth = 18;
my_health = maxhealth;
EnemyHealthAdjustments();
actTime -= 4;
maxSpeed = 5;
circleDistance = 70;
projectileSpeed = 4.1;
projectileSpeedCircle = 3.1;
rotationSpeed = choose(4,-4);
isInverted = true;
