/// @description Init

// Inherit the parent event
event_inherited();

raddrop += 5;
maxhealth = 40;
EnemyHealthAdjustments();
prevHealth = my_health;
maxSpeed += 0.25;
acc += 0.1;
actTime -= 5;
projectileSpeed += 0.25;
spr_idle = sprInvertedRadDiverIdle;
spr_walk = sprInvertedRadDiverIdle;
spr_hurt = sprInvertedRadDiverHurt;
spr_dead = sprInvertedRadDiverDead;
spr_fire = sprInvertedRadDiverFire;
maxAmountOfProjectiles += 10;
damageMultiplier += 2;
isInverted = true;