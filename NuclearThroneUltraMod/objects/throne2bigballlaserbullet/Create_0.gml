/// @description Typ 2

// Inherit the parent event
event_inherited();
stopSpeed = 0.25;
friction = 0.11;
image_angle = 0;
aimDir = 0;
target = -1;
dmg = 12;
projectileToSpawn = ExploGuardianBullet;
projectileToSpawnSprite = sprGuardianBulletSpawn;
hitSprite = sprGuardianBulletHit;
loops = GetPlayerLoops();
pSpeed = 8.9 + clamp((loops-1)*0.6,0,5);
initialDelay = 9;
initialDelay -= clamp(loops,0,5);
scrInitDrops(1);