/// @description Init

// Inherit the parent event
event_inherited();

spr_idle = sprInvertedBigJellyFishIdle
spr_walk = sprInvertedBigJellyFishIdle
spr_hurt = sprInvertedBigJellyFishHurt
spr_dead = sprInvertedBigJellyFishDead
spr_fire = sprBigJellyFishFire

raddrop = 70
maxhealth = 600;
scrBossHealthBuff();
EnemyHealthAdjustments();
tellTime = 5;
jellyDelay -= 1;
actTime -= 2;
maxAmmo += 2;
jellyMaxAmmoDelay += 1;
myJellyFish = InvertedTinyJellyFish;