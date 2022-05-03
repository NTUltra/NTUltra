//delay before you can chose

//skeleton's hidden ultra
if skill == 76 && Player.ultimategamble=true
{
	sprite_index=sprUltimateGamble;
}
else if skill == 106 && Player.bskin == 1
{
	sprite_index=sprHotHands;
}
else if skill == 106 && Player.bskin == 2
{
	sprite_index=sprBoomHands;
}
else if Player.race == 6 && skill == 23 && scrMeleeWeapons(Player.wep) && scrMeleeWeapons(Player.bwep)
{
	sprite_index = sprYvBlasphemy;
}
