/// @description Invurtut

// Inherit the parent event
event_inherited();
raddrop += 10;
maxhealth = 660;
scrBossHealthBuff();
EnemyHealthAdjustments();
isInverted = true;

spr_idle = sprWallCrawler
spr_walk = sprWallCrawler
spr_hurt = sprWallCrawlerHurt
spr_dead = sprGhostGuardianDead
spr_hidden = spr_idle;
spr_hidden_hurt = spr_hurt;
spr_hide = sprWallCrawlerHide;
spr_expose = sprWallCrawlerExposed;
spr_expose_hurt = sprWallCrawlerExposedHurt;

normalBullet = InvertedGuardianBulletSpawn;

actTime -= 4;
targetWalkSpeed = 0.4;
wallDestroyedStunTime = 30;