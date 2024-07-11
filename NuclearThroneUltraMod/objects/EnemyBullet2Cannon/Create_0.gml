event_inherited();
alarm[2] = 1

typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 4
alarm[3] = 5;
sprayTimer = 20;
alarm[4] = 2;
projectileAmount = 4;
angleStep = 360/projectileAmount;
projectileSpeed = 3.5;
maxProjectileSpeed = 16;
alarm[5] = 90;
if GetPlayerLoops() > 3
	projectileAmount = 8;