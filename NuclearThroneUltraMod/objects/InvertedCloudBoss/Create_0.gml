/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 50
maxhealth = 430
EnemyHealthAdjustments();
acc += 2;
maxSpeed += 1.5;
spr_idle = sprInvertedCloudBoss
spr_walk = sprInvertedCloudBoss
spr_hurt = sprInvertedCloudBossHurt;
spr_dead = sprInvertedCloudBossDead;
spr_fire = sprInvertedCloudBossFire;
spr_disappear = sprInvertedCloudBossDisappear;
actTime -= 3;
squareOffset += 3;
squareProjectileSpeed -= 0.1;
squareProjectileSpeedOff -= 2;
isInverted = true;
sneakTime = 5;
laserAmount += 1;
homingSpeed += 0.5;
sneakTell -= 3;
homingDurationAdjustment += 10;
event_user(4);