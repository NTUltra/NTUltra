/// @description Invurtut

// Inherit the parent event
event_inherited();
raddrop += 10;
maxhealth = 600;
scrBossHealthBuff();
EnemyHealthAdjustments();
isInverted = true;

spr_idle = sprInvertedWallCrawler
spr_walk = sprInvertedWallCrawler
spr_hurt = sprInvertedWallCrawlerHurt
spr_dead = sprInvertedWallCrawlerDead
spr_hidden = spr_idle;
spr_hidden_hurt = spr_hurt;
spr_hide = sprInvertedWallCrawlerHide;
spr_expose = sprInvertedWallCrawlerExposed;
spr_expose_hurt = sprInvertedWallCrawlerExposedHurt;

normalBullet = InvertedGuardianBulletSpawn;

actTime -= 4;
targetWalkSpeed = 0.5;
wallDestroyedStunTime = 30;
maxSpeed = 5;