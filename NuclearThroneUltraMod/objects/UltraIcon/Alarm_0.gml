//delay before you can chose
if skill == 82 && UberCont.opt_gamemode == 25
	instance_destroy();
if skill == 0 && (scrCheckGold(Player.wep_name[Player.wep]) || scrCheckGold(Player.wep_name[Player.bwep]))
{
	sprite_index = sprCashFlow;	
}
else if skill == 4 && Player.bskin == 2
{
	sprite_index = sprFishCanGun;	
}
else if skill == 6 && (Player.curse || Player.bcurse)
{
	sprite_index = sprCrystalCursedUltra;
}
else if skill == 9 && scrHasEyesMutations()
{
	sprite_index = sprEyesStrangeStyle;
}
else if skill == 13 && Player.maxhealth == 1
{
	sprite_index = sprDeathStare;
}
else if skill == 20 && Player.crown == 23 && Player.skill_got[2]
{
	sprite_index = sprPlantSonicSpeed;
}
else if skill == 27 && (Player.wep == Player.bwep)
{
	sprite_index = sprSteroidsPunchSwap;
}
else if skill == 29 && Player.spr_idle == sprMutant8DIdle
{
	sprite_index = sprExclusiveTaste	
}
else if skill == 35 && Player.crown == 12//Crown of inversion
{
	sprite_index = sprReverseFocus;	
}
else if skill == 39 && (scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep]))
{
	sprite_index = sprBigRebel;	
}
else if skill == 76 && Player.ultimategamble=true
{
	sprite_index=sprUltimateGamble;
}
else if skill == 87 && Player.skeletonlives > 0
{
	sprite_index = sprFreakRogue;
}
else if skill == 92 && Player.wep_type[Player.wep] == 3 && Player.wep_type[Player.bwep] == 3
{
	sprite_index = sprSpikedFrog;
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
