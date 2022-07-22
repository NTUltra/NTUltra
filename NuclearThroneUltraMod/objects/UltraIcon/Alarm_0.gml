//delay before you can chose
if skill == 82 && UberCont.opt_gamemode == 25
	instance_destroy();
if skill == 0 && scrCheckGold(Player.wep_name[Player.wep]) && scrCheckGold(Player.wep_name[Player.bwep])
{
	sprite_index = sprCashFlow;	
}
if skill == 4 && Player.bskin == 2
{
	sprite_index = sprFishCanGun;	
}
if skill == 29 && Player.spr_idle == sprMutant8DIdle
{
	sprite_index = sprExclusiveTaste	
}
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
