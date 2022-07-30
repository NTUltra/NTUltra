/// @description Init

// Inherit the parent event
event_inherited();

alarm[0] = 0;
raddrop = 40
maxhealth = 90//120
my_health = maxhealth;
EnemyHealthAdjustments();
meleedamage = 5

spr_idle = sprInvertedGoldJungleFlyIdle
spr_walk = sprInvertedGoldJungleFlyWalk
spr_hurt = sprInvertedGoldJungleFlyHurt
spr_dead = sprInvertedGoldJungleFlyDead
snd_hurt = sndGoldFlyHurt
maxAmmo = 16;
firerate = 1;
actTime = 3;
acc = 4;
constAcc = 2;
angle = random(360);
angleStep = 360/maxAmmo;