//delay before you can chose
if skill == 82 && scrIsGamemode(25)
	instance_destroy();
if (!isAlternative && !canAlt)// && !scrIsGamemode(22) && !scrIsGamemode(30) <-Leave it bugged
{
	with instance_create(x,y - 32,UltraIcon)
	{
		skill = other.skill;
		canAlt = true;
		if (scrTranslateUltraToSecretStat(skill,Player.bskin) > -1 && UberCont.ctot_secret_ultra_found[scrTranslateUltraToSecretStat(skill,Player.bskin)])
			isAlternative = true;
	}
}
if canAlt
{
	var spr = sprite_index;
	if skill == 0 && Player.race == 21 && (Player.unlockAlternativeUltras || isAlternative || (scrCheckGold(Player.wep_name[Player.wep]) || scrCheckGold(Player.wep_name[Player.bwep])))
	{
		sprite_index = sprCashFlow;	
	}
	else if skill == 4 && Player.race == 1 && (Player.unlockAlternativeUltras || isAlternative || Player.bskin == 2)
	{
		sprite_index = sprFishCanGun;
	}
	else if skill == 6 && Player.race == 2 && (Player.unlockAlternativeUltras || isAlternative || (Player.curse || Player.bcurse))
	{
		sprite_index = sprCrystalCursedUltra;
	}
	else if skill == 9 && Player.race == 3 && (Player.unlockAlternativeUltras || isAlternative || scrHasEyesMutations())
	{
		sprite_index = sprEyesStrangeStyle;
	}
	else if skill == 10 && Player.race == 3 && (Player.unlockAlternativeUltras || isAlternative || (Player.skill_got[8] && scrIsCrown(1)))
	{
		sprite_index = sprVoidStyle;
	}
	else if skill == 13 && Player.race == 4 && (Player.unlockAlternativeUltras || isAlternative || Player.maxhealth == 1)
	{
		sprite_index = sprDeathStare;
	}
	else if skill == 18 &&  Player.race == 5 && (Player.unlockAlternativeUltras || isAlternative || scrHasHealingMutations(2))
	{
		sprite_index = sprPlantPhotosynthesis;
	}
	else if skill == 19 &&  Player.race == 5 && (Player.unlockAlternativeUltras || isAlternative || scrIsCrown(7) || scrIsCrown(28) || scrIsGamemode(39) || scrIsCrown(31) || scrIsCrown(30))
	{
		sprite_index = sprPlantKillKillKill;
	}
	else if skill == 20 &&  Player.race == 5 && (Player.unlockAlternativeUltras || isAlternative || scrIsCrown(23) && Player.skill_got[2])
	{
		sprite_index = sprPlantSonicSpeed;
	}
	else if Player.race == 6 && skill == 21 && (Player.unlockAlternativeUltras || isAlternative || scrDoesntHaveReloadMutation())
	{
		sprite_index = sprYvVenuzianAirhorn;
	}
	else if Player.race == 6 && skill == 23 && (Player.unlockAlternativeUltras || isAlternative || ((scrMeleeWeapons(Player.wep) || Player.wep == 0) && (scrMeleeWeapons(Player.bwep) || Player.bwep == 0)))
	{
		sprite_index = sprYvBlasphemy;
	}
	else if Player.race == 6 && skill == 24 && (Player.unlockAlternativeUltras || isAlternative || scrDoesntHaveDeathPrevention())
	{
		sprite_index = sprYvGodsDontDie;
	}
	else if skill == 27 &&  Player.race == 7 && (Player.unlockAlternativeUltras || isAlternative || (Player.wep_type[Player.wep] == Player.wep_type[Player.bwep]))
	{
		sprite_index = sprSteroidsPunchSwap;
	}
	else if skill == 29 &&  Player.race == 8 && (Player.unlockAlternativeUltras || isAlternative || Player.spr_idle == sprMutant8DIdle)
	{
		sprite_index = sprExclusiveTaste
	}
	else if skill == 30 &&  Player.race == 8 && (Player.unlockAlternativeUltras || isAlternative || Player.spr_idle == sprMutant8EIdle)
	{
		sprite_index = sprCursedTechonology
	}
	else if Player.race == 9 && skill == 33 && (Player.unlockAlternativeUltras || isAlternative || scrHasFireWeapon())
	{
		sprite_index = sprPhoenix;
	}
	else if skill == 35 && Player.race == 9 && (Player.unlockAlternativeUltras || isAlternative || scrIsCrown(12) || scrIsCrown(34))//Crown of inversion
	{
		sprite_index = sprReverseFocus;	
	}
	else if skill == 39 && Player.race == 10 && (Player.unlockAlternativeUltras || isAlternative || 
	(scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep]) || 
	(!Player.skill_got[32] && !Player.skill_got[7] && !Player.skill_got[9] && !Player.skill_got[36])
	))
	{
		sprite_index = sprBigRebel;
	}
	else if skill == 43 && Player.race == 11 && (Player.unlockAlternativeUltras || isAlternative || scrCanHunterSniperEye())
	{
		sprite_index = sprSniperEye;
	}
	else if skill == 47 && Player.race == 12 && (Player.unlockAlternativeUltras || isAlternative || 
	((Player.skill_got[36] && Player.skill_got[3]) || scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep])))
	{
		sprite_index = sprGreenTeam;
	}
	else if skill == 50 && Player.race == 13 && (Player.unlockAlternativeUltras || isAlternative || scrHasASecretCrown())
	{
		sprite_index = sprSAS;
	}
	else if skill == 51 && Player.race == 13 && (Player.unlockAlternativeUltras || isAlternative || !Player.skill_got[2] && !Player.skill_got[8])
	{
		sprite_index = sprHynotize;
	}
	else if skill == 55 && Player.race == 14 && (Player.unlockAlternativeUltras || isAlternative || (Player.skill_got[13] || Player.skill_got[34] || Player.skill_got[20]) && !Player.skill_got[5])
	{
		sprite_index = sprInconsistentIncompatability;
	}
	else if skill == 59 && Player.race == 15 && (Player.unlockAlternativeUltras || isAlternative || (!Player.skill_got[17] && (scrIsCrown(4) || scrIsCrown(28) || scrIsCrown(3))))
	{
		sprite_index = sprPathOfDestruction;
	}
	else if skill == 61 && Player.race == 16 && (Player.unlockAlternativeUltras || isAlternative || Player.skill_got[39] || Player.area == 101 || Player.area == 122 || scrKrakenWeapons(Player.wep) || scrIsCrown(13) || scrKrakenWeapons(Player.bwep))
	{
		sprite_index=sprCaptainOfTheKraken;
	}
	else if skill == 62 &&  Player.race == 16 && (Player.unlockAlternativeUltras || isAlternative || (!Player.skill_got[7] && !Player.skill_got[36] && !Player.skill_got[32] && !Player.skill_got[31]))
	{
		sprite_index = sprLivingArmour;
	}
	else if skill == 66 && Player.race == 17 && (Player.unlockAlternativeUltras || isAlternative || Player.bwep == 0)
	{
		sprite_index = sprQuickSwapper;
	}
	else if skill == 68 && Player.race == 17 && (Player.unlockAlternativeUltras || isAlternative || scrHasMorphMod() || scrHasMorphWeapon())
	{
		sprite_index = sprEnginuity;
	}
	else if skill == 72 && Player.race == 18 && (Player.unlockAlternativeUltras || isAlternative || ((Player.maxhealth < 8 && !scrIsGamemode(9)) || (scrIsGamemode(9) && Player.maxhealth < 8 + UberCont.casualModeHPIncrease) || scrIsCrown(32)))
	{
		sprite_index=sprMirror;
	}
	else if skill == 74 && Player.race == 19 && (Player.unlockAlternativeUltras || isAlternative || scrHasBloodWeapon())
	{
		sprite_index = sprReminisce;
	}
	else if skill == 76 && Player.race == 19 && (Player.unlockAlternativeUltras || isAlternative || Player.ultimategamble==true)
	{
		sprite_index = sprUltimateGamble;
	}
	else if skill == 77 && Player.race == 20 && (Player.unlockAlternativeUltras || isAlternative || Player.skill_got[0] || scrIsCrown(5))
	{
		sprite_index = sprHoardingThief;
	}
	else if skill == 87 && Player.race == 22 && (Player.unlockAlternativeUltras || isAlternative || scrHasAnEmptyLife())
	{
		sprite_index = sprFreakRogue;
	}
	else if skill == 92 && Player.race == 23 && (Player.unlockAlternativeUltras || isAlternative || Player.wep_type[Player.wep] == 3 && (Player.wep_type[Player.bwep] == 3 || Player.bwep == 0))
	{
		sprite_index = sprSpikedFrog;
	}
	else if skill == 93 && Player.race == 24 && (Player.unlockAlternativeUltras || isAlternative || (Player.patience > 0 || Player.guarenteedReroll > 0 || Player.skill_got[27] || Player.patienceUsed > 0))
	{
		sprite_index = sprAirLord;
	}
	else if skill == 97 && Player.race == 25 && (Player.unlockAlternativeUltras || isAlternative || !Player.skill_got[13] && !Player.skill_got[16]
	&& !Player.skill_got[17] && !Player.skill_got[15] && !Player.skill_got[14] && !Player.skill_got[42] && !Player.skill_got[43])
	{
		sprite_index = sprBeeKeeper;
	}
	else if skill == 104 && Player.race == 26 && (Player.unlockAlternativeUltras || isAlternative || (Player.humphrySkill < 1 || scrHasDirector()))
	{
		sprite_index = sprGrumpyLecture;
	}
	else if skill == 106 && Player.race == 27 && (((Player.unlockAlternativeUltras || isAlternative)) || Player.bskin == 1)
	{
		sprite_index = sprHotHands;
	}
	else if skill == 107 && Player.race == 27 && (((Player.unlockAlternativeUltras || isAlternative)) || Player.bskin == 2)
	{
		sprite_index = sprBoomHands;
	}
	
	if spr == sprite_index
		instance_destroy();
	else// if skill != 106
	{
		isAlternative = true;
		scrUltras(true,false);
		var n = ultra_name[skill];
		if !Player.altUltra && scrHasAnUltraThatsCompatibleWithAlt()
		{
			instance_destroy();
		}
		if isValidGamemodeToUnlock()
			with UberCont
			{
				ctot_secret_ultra_found[scrTranslateUltraToSecretStat(other.skill,Player.bskin)] += 1;
				if (ctot_secret_ultra_found[scrTranslateUltraToSecretStat(other.skill,Player.bskin)] == 1)
					with instance_create(x,y,UnlockPopup)
					{
						mytext="SECRET ULTRA FOUND"+unlockText
						alarm[0] += string_length(unlockText);
					}
			}
	}
}
else if skill == 76 && Player.race == 19 && UberCont.tookUnstoppable
{
	instance_destroy();
}
else if Player.altUltra && scrThisUltraIsCompatibleWithAlt(skill) && scrHasAnUltraThatsCompatibleWithAlt()
{
	instance_destroy();
}