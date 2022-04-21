/// @description dmg

// Inherit the parent event
event_inherited();

owner = -1;
dmg = 12;
team = 1;
typ = 2;
image_speed = 0.4;
image_angle = random(360);
friction = 0.09;
projectileToSpawn = GuardianBulletSpawn;
hitSprite = sprGuardianBulletHit;
alarm[0] = 4;