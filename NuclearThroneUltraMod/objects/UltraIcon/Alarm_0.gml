//delay before you can chose
if skill == 82 && scrIsGamemode(25)
	instance_destroy();
if skill == 0 && (Player.unlockAlternativeUltras || (scrCheckGold(Player.wep_name[Player.wep]) || scrCheckGold(Player.wep_name[Player.bwep])))
{
	sprite_index = sprCashFlow;	
}
else if skill == 4 && (Player.unlockAlternativeUltras || Player.bskin == 2)
{
	sprite_index = sprFishCanGun;
}
else if skill == 6 && (Player.unlockAlternativeUltras || (Player.curse || Player.bcurse))
{
	sprite_index = sprCrystalCursedUltra;
}
else if skill == 9 && (Player.unlockAlternativeUltras || scrHasEyesMutations())
{
	sprite_index = sprEyesStrangeStyle;
}
else if skill == 13 && (Player.unlockAlternativeUltras || Player.maxhealth == 1)
{
	sprite_index = sprDeathStare;
}
else if skill == 20 && (Player.unlockAlternativeUltras || scrIsCrown(23) && Player.skill_got[2])
{
	sprite_index = sprPlantSonicSpeed;
}
else if skill == 27 && (Player.unlockAlternativeUltras || (Player.wep == Player.bwep))
{
	sprite_index = sprSteroidsPunchSwap;
}
else if skill == 29 && (Player.unlockAlternativeUltras || Player.spr_idle == sprMutant8DIdle)
{
	sprite_index = sprExclusiveTaste
}
else if Player.race == 9 && skill == 33 && (Player.unlockAlternativeUltras || scrHasFireWeapon())
{
	sprite_index = sprPhoenix;
}
else if skill == 35 && (Player.unlockAlternativeUltras || scrIsCrown(12))//Crown of inversion
{
	sprite_index = sprReverseFocus;	
}
else if skill == 39 && (Player.unlockAlternativeUltras || (scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep]) || 
(!Player.skill_got[1] && !Player.skill_got[7] && !Player.skill_got[9]&& !Player.skill_got[25])
))
{
	sprite_index = sprBigRebel;
}
else if skill == 43 && (Player.unlockAlternativeUltras || Player.skill_got[19] && Player.skill_got[17])
{
	sprite_index = sprSniperEye;
}
else if skill == 47 && (Player.unlockAlternativeUltras || !Player.skill_got[1] && Player.skill_got[3])
{
	sprite_index = sprGreenTeam;
}
else if skill == 50 && (Player.unlockAlternativeUltras || Player.crown > Player.crownmax)
{
	sprite_index = sprSAS;
}
else if skill == 51 && (Player.unlockAlternativeUltras || !Player.skill_got[2] && !Player.skill_got[8])
{
	sprite_index = sprHynotize;
}
else if skill == 55 && (Player.unlockAlternativeUltras || (Player.skill_got[13] || Player.skill_got[34] || Player.skill_got[20]) && !Player.skill_got[5])
{
	sprite_index = sprInconsistentIncompatability;
}
else if skill == 59 && (Player.unlockAlternativeUltras || (!Player.skill_got[17] && (scrIsCrown(4) || scrIsCrown(28))))
{
	sprite_index = sprPathOfDestruction;
}
else if skill == 61 && (Player.unlockAlternativeUltras || scrKrakenWeapons(Player.wep) || scrKrakenWeapons(Player.bwep))
{
	sprite_index=sprCaptainOfTheKraken;
}
else if skill == 62 && (Player.unlockAlternativeUltras || (Player.race == 16 && !Player.skill_got[7] && !Player.skill_got[36] && !Player.skill_got[32] && !Player.skill_got[31]))
{
	sprite_index = sprLivingArmour;
}
else if skill == 66 && (Player.unlockAlternativeUltras || Player.bwep == 0)
{
	sprite_index = sprQuickSwapper;
}
else if skill == 68 && (Player.unlockAlternativeUltras || scrHasMorphMod() || scrHasMorphWeapon())
{
	sprite_index = sprEnginuity;
}
else if skill == 72 && (Player.unlockAlternativeUltras || ((Player.maxhealth < 8 && !scrIsGamemode(9)) || (scrIsGamemode(9) && Player.maxhealth < 8 + UberCont.casualModeHPIncrease)))
{
	sprite_index=sprMirror;
}
else if skill == 74 && (Player.unlockAlternativeUltras || scrHasBloodWeapon())
{
	sprite_index = sprReminisce;
}
else if skill == 76 && (Player.unlockAlternativeUltras || Player.ultimategamble=true)
{
	sprite_index = sprUltimateGamble;
}
else if skill == 77 && (Player.unlockAlternativeUltras || Player.skill_got[0])
{
	sprite_index = sprHoardingThief;
}
else if skill == 87 && scrHasAnEmptyLife()
{
	sprite_index = sprFreakRogue;
}
else if skill == 92 && (Player.unlockAlternativeUltras || Player.wep_type[Player.wep] == 3 && Player.wep_type[Player.bwep] == 3)
{
	sprite_index = sprSpikedFrog;
}
else if skill == 96 && (Player.unlockAlternativeUltras || (scrIsCrown(11) || scrIsCrown(25) || Player.skill_got[2]) && !Player.skill_got[17])
{
	sprite_index = sprAirLord;
}
else if skill == 97 && (Player.unlockAlternativeUltras || !Player.skill_got[13] && !Player.skill_got[16] && !Player.skill_got[17] && !Player.skill_got[15] && !Player.skill_got[14])
{
	sprite_index = sprBeeKeeper;
}
else if skill == 104 && (Player.unlockAlternativeUltras || scrHasDirector())
{
	sprite_index = sprGrumpyLecture;
}
else if skill == 106 && ((Player.unlockAlternativeUltras && randomHand == 1 && !Player.bskin == 1) || Player.bskin == 1)
{
	sprite_index = sprHotHands;
	with Player {
		ultra_name[106] = "HOT HANDS!"
		ultra_text[106] = "FIERY HANDS#MORE FIRE DAMAGE#HOMING FIRE#EVEN MORE FIRE DAMAGE#WHILE IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
		ultra_tips[106] = "secret b-skin ultra mutation"
	}
}
else if skill == 106 && ((Player.unlockAlternativeUltras && randomHand == 2 && !Player.bskin == 2) || Player.bskin == 2)
{
	sprite_index = sprBoomHands;
	with Player {
		ultra_name[106] = "BOOM HANDS!"
		ultra_text[106] = "EXPLOSIVE HANDS#HAND IS SLOWER#NORMAL HAND SPEED IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
		ultra_tips[106] = "secret c-skin ultra mutation"
	}
}
else if Player.race == 6 && skill == 23 && scrMeleeWeapons(Player.wep) && scrMeleeWeapons(Player.bwep)
{
	sprite_index = sprYvBlasphemy;
}
