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
else if skill == 39 && (scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep]) || 
(!Player.skill_got[1] && !Player.skill_got[7] && !Player.skill_got[9]&& !Player.skill_got[25])
)
{
	sprite_index = sprBigRebel;
}
else if skill == 43 && Player.skill_got[19] && Player.skill_got[17]
{
	sprite_index = sprSniperEye;
}
else if skill == 47 && !Player.skill_got[1] && Player.skill_got[3]
{
	sprite_index = sprGreenTeam;
}
else if skill == 51 && !Player.skill_got[2] && !Player.skill_got[8]
{
	sprite_index = sprHynotize;
}
else if skill == 55 && (Player.skill_got[13] || Player.skill_got[34] || Player.skill_got[20]) && !Player.skill_got[5]
{
	sprite_index = sprInconsistentIncompatability;
}
else if skill == 59 && (!Player.skill_got[17] && (Player.crown == 4 || Player.crown == 28))
{
	sprite_index = sprPathOfDestruction;
}
else if skill == 61 && (scrKrakenWeapons(Player.wep) || scrKrakenWeapons(Player.bwep))
{
	sprite_index=sprCaptainOfTheKraken;
}
else if skill == 66 && Player.bwep == 0
{
	sprite_index = sprQuickSwapper;
}
else if skill == 72 && ((Player.maxhealth < 8 && UberCont.opt_gamemode != 9) || (UberCont.opt_gamemode == 9 && Player.maxhealth < 8 + UberCont.casualModeHPIncrease))
{
	sprite_index=sprMirror;
}
else if skill == 76 && Player.ultimategamble=true
{
	sprite_index = sprUltimateGamble;
}
else if skill == 77 && Player.skill_got[0]
{
	sprite_index = sprHoardingThief;
}
else if skill == 87 && scrHasAnEmptyLife()
{
	sprite_index = sprFreakRogue;
}
else if skill == 92 && Player.wep_type[Player.wep] == 3 && Player.wep_type[Player.bwep] == 3
{
	sprite_index = sprSpikedFrog;
}
else if skill == 96 && (Player.crown == 11 || Player.crown == 25 || Player.skill_got[2]) && !Player.skill_got[17]
{
	sprite_index = sprAirLord;
}
else if skill == 97 && !Player.skill_got[13] && !Player.skill_got[16] && !Player.skill_got[17] && !Player.skill_got[15] && !Player.skill_got[14]
{
	sprite_index = sprBeeKeeper;
}
else if skill == 104 && scrHasDirector()
{
	sprite_index = sprGumpyLecture;
}
else if skill == 106 && Player.bskin == 1
{
	sprite_index = sprHotHands;
}
else if skill == 106 && Player.bskin == 2
{
	sprite_index = sprBoomHands;
}
else if Player.race == 6 && skill == 23 && scrMeleeWeapons(Player.wep) && scrMeleeWeapons(Player.bwep)
{
	sprite_index = sprYvBlasphemy;
}
