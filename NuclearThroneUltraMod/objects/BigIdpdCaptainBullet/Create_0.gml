/// @description dmg

// Inherit the parent event
event_inherited();
stopSpeed = 0.2;//0.18
owner = -1;
dmg = 12;
team = 3;
typ = 1;
image_speed = 0.4;
image_angle = random(360);
friction = 0;// 0.09;
projectileToSpawn = IDPDBullet;
hitSprite = sprIDPDBulletHit;
alarm[0] = 4;
alarm[5] = 5;//secret cheat
scrInitDrops(1);