event_inherited();
alarm[2] = 1
depth -= 2;
typ = 1 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 3
hitSprite = sprEnemyBulletHit;
if scrIsHardMode()//HARD MODE
	dmg = 4;