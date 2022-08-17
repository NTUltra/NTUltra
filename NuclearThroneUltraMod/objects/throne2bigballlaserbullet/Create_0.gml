/// @description Typ 2

// Inherit the parent event
event_inherited();
stopSpeed = 0.25;
friction = 0.106;
image_angle = 0;
aimDir = 0;
target = -1;
dmg = 12;
projectileToSpawn = ExploGuardianBullet;
projectileToSpawnSprite = sprGuardianBulletSpawn;
hitSprite = sprGuardianBulletHit;
loops = GetPlayerLoops();
pSpeed = 8 + clamp((loops-1)*0.5,0,5);
initialDelay = 10;
initialDelay -= clamp(loops,0,5);