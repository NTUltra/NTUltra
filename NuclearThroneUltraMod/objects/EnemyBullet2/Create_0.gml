event_inherited();
alarm[2] = 1
hitSprite = sprScorpionBulletHit;
typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 2

if scrIsHardMode() || GetPlayerLoops() > 1//HARD MODE
	dmg ++;