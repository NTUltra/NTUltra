/// @description Spawn inverted projectiles instead

// Inherit the parent event
event_inherited();
shouldApplyMiniVenom = false;
projectileToSpawn = InvertedGuardianBulletSpawn;
projectileToSpawnSprite = sprInvertedGuardianSquareBulletSpawn;
hitSprite = sprInvertedGuardianBulletHit
stopSpeed = 0.3;