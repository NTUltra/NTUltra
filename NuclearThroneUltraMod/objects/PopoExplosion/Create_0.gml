event_inherited();

with myExplosionMask
{
	mask_index = mskPopoExplosion4Player;
	dmg = 7;
	if UberCont.opt_gamemode == 9
		dmg = 4;
	else if scrIsHardMode()//HARD MODE
		dmg = 10;
}
dmg = 8;