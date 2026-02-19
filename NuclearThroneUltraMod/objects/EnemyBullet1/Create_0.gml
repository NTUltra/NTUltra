event_inherited();
alarm[2] = 1
depth -= 2;
typ = 1 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 3
hitSprite = sprEnemyBulletHit;
norecycle = true;
cost = 0.5;
radCost = 0;
venomHits = 0;
venomDamage = 0;
team = 2;
if scrIsHardMode()//HARD MODE
	dmg = 4;