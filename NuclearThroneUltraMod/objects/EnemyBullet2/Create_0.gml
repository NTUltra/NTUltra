event_inherited();
alarm[2] = 1
hitSprite = sprScorpionBulletHit;
typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 1
venomDamage = 1;
venomHits = 1;
alarm[8] = 180;
if scrIsHardMode() || GetPlayerLoops() > 1//HARD MODE
	dmg ++;