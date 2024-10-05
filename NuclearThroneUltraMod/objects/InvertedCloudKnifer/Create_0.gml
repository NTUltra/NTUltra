/// @description Init Xtreme

// Inherit the parent event
event_inherited();

raddrop = 14
maxhealth = 26
EnemyHealthAdjustments();
actTime -= 2;
spr_idle = sprInvertedCloudKnifer
spr_walk = sprInvertedCloudKnifer
spr_hurt = sprInvertedCloudKniferHurt
spr_dead = sprInvertedCloudKniferDead
spr_dead_mid_air = sprInvertedCloudKniferDeadMidAir;
spr_chrg = sprInvertedCloudKniferShank;
spr_fire = spInvertedCloudKniferFire;
maxSpeed += 0.4;
acc += 0.6;
sneakTell -= 2;
smackRange += 1;
smackSpeed += 1;
knifeOffset += 2;
smackDetectionRange += 6;