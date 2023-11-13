function scrWeapons() {
	//WEAPONS
	wep_name[0] = ""
	wep_type[0] = 0
	wep_auto[0] = 0
	wep_load[0] = 1
	wep_cost[0] = 1
	wep_sprt[0] = sprNoGun//just nothing
	wep_area[0] = -1
	wep_text[0] = ""
	wep_swap[0] = sndSwapPistol
	wep_rad[0] = 0;

	wep_name[1] = "REVOLVER"
	wep_type[1] = 1
	wep_auto[1] = 0
	wep_load[1] = 6
	wep_cost[1] = 1
	wep_sprt[1] = sprRevolver
	wep_area[1] = -1
	wep_text[1] = "trusty old revolver"
	wep_swap[1] = sndSwapPistol
	wep_rad[1] = 0;


	wep_name[2] = "TRIPLE MACHINEGUN"
	wep_type[2] = 1
	wep_auto[2] = 1
	wep_load[2] = 4
	wep_cost[2] = 3
	wep_sprt[2] = sprTripleMachinegun
	wep_area[2] = 4
	wep_text[2] = "triple machinegun, so much fun"
	wep_swap[2] = sndSwapMachinegun
	wep_rad[2] = 0;

	wep_name[3] = "WRENCH"
	wep_type[3] = 0
	wep_auto[3] = 0
	wep_load[3] = 20
	wep_cost[3] = 0
	wep_sprt[3] = sprWrench
	wep_area[3] = 2
	wep_text[3] = "ratchet"
	wep_swap[3] = sndSwapHammer
	wep_rad[3] = 0;


	wep_name[4] = "MACHINEGUN"
	wep_type[4] = 1
	wep_auto[4] = 1
	wep_load[4] = 5
	wep_cost[4] = 1
	wep_sprt[4] = sprMachinegun
	wep_area[4] = 1
	wep_text[4] = ""
	wep_swap[4] = sndSwapMachinegun
	wep_rad[4] = 0;

	wep_name[5] = "SHOTGUN"
	wep_type[5] = 2
	wep_auto[5] = 0
	wep_load[5] = 18
	wep_cost[5] = 1
	wep_sprt[5] = sprShotgun
	wep_area[5] = 1
	wep_text[5] = ""
	wep_swap[5] = sndSwapShotgun
	wep_rad[5] = 0;

	wep_name[6] = "CROSSBOW"
	wep_type[6] = 3
	wep_auto[6] = 0
	wep_load[6] = 25
	wep_cost[6] = 1
	wep_sprt[6] = sprCrossbow
	wep_area[6] = 1
	wep_text[6] = ""
	wep_swap[6] = sndSwapBow
	wep_rad[6] = 0;

	wep_name[7] = "GRENADE LAUNCHER"
	wep_type[7] = 4
	wep_auto[7] = 0
	wep_load[7] = 20
	wep_cost[7] = 1
	wep_sprt[7] = sprNader
	wep_area[7] = 1
	wep_text[7] = "be careful with those grenades"
	wep_swap[7] = sndSwapExplosive
	wep_rad[7] = 0;

	wep_name[8] = "DOUBLE SHOTGUN"
	wep_type[8] = 2
	wep_auto[8] = 0
	wep_load[8] = 28
	wep_cost[8] = 2
	wep_sprt[8] = sprSuperShotgun
	wep_area[8] = 5
	wep_text[8] = "double shotgun, double fun"
	wep_swap[8] = sndSwapShotgun
	wep_rad[8] = 0;

	wep_name[9] = "MINIGUN"
	wep_type[9] = 1
	wep_auto[9] = 1
	wep_load[9] = 1
	wep_cost[9] = 1
	wep_sprt[9] = sprMinigun
	wep_area[9] = 6
	wep_text[9] = "time to rain bullets"
	wep_swap[9] = sndSwapMachinegun
	wep_rad[9] = 0;

	wep_name[10] = "AUTO SHOTGUN"
	wep_type[10] = 2
	wep_auto[10] = 1
	wep_load[10] = 4
	wep_cost[10] = 1
	wep_sprt[10] = sprAutoShotgun
	wep_area[10] = 6
	wep_text[10] = "just hold down the trigger"
	wep_swap[10] = sndSwapShotgun
	wep_rad[10] = 0;

	wep_name[11] = "AUTO CROSSBOW"
	wep_type[11] = 3
	wep_auto[11] = 1
	wep_load[11] = 8
	wep_cost[11] = 1
	wep_sprt[11] = sprAutoCrossbow
	wep_area[11] = 7
	wep_text[11] = "225 bolts per minute"
	wep_swap[11] = sndSwapBow
	wep_rad[11] = 0;

	wep_name[12] = "SUPER CROSSBOW"
	wep_type[12] = 3
	wep_auto[12] = 0
	wep_load[12] = 34
	wep_cost[12] = 5
	wep_sprt[12] = sprSuperCrossbow
	wep_area[12] = 7
	wep_text[12] = "5 bolts per shot"
	wep_swap[12] = sndSwapBow
	wep_rad[12] = 0;

	wep_name[13] = "SHOVEL"
	wep_type[13] = 0
	wep_auto[13] = 0
	wep_load[13] = 34
	wep_cost[13] = 0
	wep_sprt[13] = sprShovel
	wep_area[13] = 3//4 originally?
	wep_text[13] = "dig"
	wep_swap[13] = sndSwapHammer
	wep_rad[13] = 0;

	wep_name[14] = "BAZOOKA"
	wep_type[14] = 4
	wep_auto[14] = 0
	wep_load[14] = 30
	wep_cost[14] = 1
	wep_sprt[14] = sprBazooka
	wep_area[14] = 5
	wep_text[14] = ""
	wep_swap[14] = sndSwapExplosive
	wep_rad[14] = 0;

	wep_name[15] = "STICKY LAUNCHER"
	wep_type[15] = 4
	wep_auto[15] = 0
	wep_load[15] = 25
	wep_cost[15] = 1
	wep_sprt[15] = sprStickyNader
	wep_area[15] = 7
	wep_text[15] = "dont touch sticky nades"
	wep_swap[15] = sndSwapExplosive
	wep_rad[15] = 0;

	wep_name[16] = "SMG"
	wep_type[16] = 1
	wep_auto[16] = 1
	wep_load[16] = 3
	wep_cost[16] = 1
	wep_sprt[16] = sprSmg
	wep_area[16] = 3
	wep_text[16] = ""
	wep_swap[16] = sndSwapPistol
	wep_rad[16] = 0;

	wep_name[17] = "ASSAULT RIFLE"
	wep_type[17] = 1
	wep_auto[17] = 0
	wep_load[17] = 11
	wep_cost[17] = 3
	wep_sprt[17] = sprARifle
	wep_area[17] = 2
	wep_text[17] = ""
	wep_swap[17] = sndSwapMachinegun
	wep_rad[17] = 0;

	wep_name[18] = "DISC GUN"
	wep_type[18] = 3
	wep_auto[18] = 1
	wep_load[18] = 8
	wep_cost[18] = 1
	wep_sprt[18] = sprDiscGun
	wep_area[18] = 3
	wep_text[18] = "we hereby sincerely apologize"
	wep_swap[18] = sndSwapBow
	wep_rad[18] = 0;

	wep_name[19] = "LASER PISTOL"
	wep_type[19] = 5
	wep_auto[19] = 0
	wep_load[19] = 10
	wep_cost[19] = 1
	wep_sprt[19] = sprLaserGun
	wep_area[19] = 2
	wep_text[19] = "futuristic weaponry"
	wep_swap[19] = sndSwapEnergy
	wep_rad[19] = 0;

	wep_name[20] = "LASER RIFLE"
	wep_type[20] = 5
	wep_auto[20] = 1
	wep_load[20] = 7
	wep_cost[20] = 1
	wep_sprt[20] = sprLaserRifle
	wep_area[20] = 5
	wep_text[20] = ""
	wep_swap[20] = sndSwapEnergy
	wep_rad[20] = 0;

	wep_name[21] = "SLUGGER"
	wep_type[21] = 2
	wep_auto[21] = 0
	wep_load[21] = 22
	wep_cost[21] = 1
	wep_sprt[21] = sprSlugger
	wep_area[21] = 2
	wep_text[21] = ""
	wep_swap[21] = sndSwapShotgun
	wep_rad[21] = 0;

	wep_name[22] = "GATLING SLUGGER"
	wep_type[22] = 2
	wep_auto[22] = 1
	wep_load[22] = 8
	wep_cost[22] = 1
	wep_sprt[22] = sprGatlingSlugger
	wep_area[22] = 9
	wep_text[22] = "time to gatle"
	wep_swap[22] = sndSwapShotgun
	wep_rad[22] = 0;

	wep_name[23] = "ASSAULT SLUGGER"
	wep_type[23] = 2
	wep_auto[23] = 0
	wep_load[23] = 32
	wep_cost[23] = 3
	wep_sprt[23] = sprAssaultSlugger
	wep_area[23] = 5
	wep_text[23] = ""
	wep_swap[23] = sndSwapShotgun
	wep_rad[23] = 0;

	wep_name[24] = "ENERGY SWORD"
	wep_type[24] = 5
	wep_auto[24] = 0
	wep_load[24] = 11
	wep_cost[24] = 3
	wep_sprt[24] = sprEnergySword
	wep_area[24] = 11
	wep_text[24] = "zzzwwoonggg"
	wep_swap[24] = sndSwapEnergy
	wep_rad[24] = 0;

	wep_name[25] = "SUPER SLUGGER"
	wep_type[25] = 2
	wep_auto[25] = 0
	wep_load[25] = 40
	wep_cost[25] = 5
	wep_sprt[25] = sprSuperSlugger
	wep_area[25] = 10
	wep_text[25] = "no need to aim"
	wep_swap[25] = sndSwapShotgun
	wep_rad[25] = 0;

	wep_name[26] = "HYPER RIFLE"
	wep_type[26] = 1
	wep_auto[26] = 0
	wep_load[26] = 3
	wep_cost[26] = 5
	wep_sprt[26] = sprHyperRifle
	wep_area[26] = 8
	wep_text[26] = "hyper time"
	wep_swap[26] = sndSwapMachinegun
	wep_rad[26] = 0;

	wep_name[27] = "SCREWDRIVER"
	wep_type[27] = 0
	wep_auto[27] = 0
	wep_load[27] = 11
	wep_cost[27] = 0
	wep_sprt[27] = sprScrewDriver
	wep_area[27] = 1
	wep_text[27] = "screwdriver will fix it"
	wep_swap[27] = sndSwapSword
	wep_rad[27] = 0;

	wep_name[28] = "LASER MINIGUN"
	wep_type[28] = 5
	wep_auto[28] = 1
	wep_load[28] = 2
	wep_cost[28] = 0.75
	wep_sprt[28] = sprLaserMinigun
	wep_area[28] = 8
	wep_text[28] = "energy bill off the charts"
	wep_swap[28] = sndSwapEnergy
	wep_rad[28] = 0;

	wep_name[29] = "BLOOD LAUNCHER"
	wep_type[29] = 4
	wep_auto[29] = 1
	wep_load[29] = 12
	wep_cost[29] = 1
	wep_sprt[29] = sprBloodNader
	wep_area[29] = 10
	wep_text[29] = "built with spare parts"
	wep_swap[29] = sndSwapExplosive
	wep_rad[29] = 0;

	wep_name[30] = "SPLINTER GUN"
	wep_type[30] = 3
	wep_auto[30] = 0
	wep_load[30] = 18
	wep_cost[30] = 1
	wep_sprt[30] = sprSplinterGun
	wep_area[30] = 4
	wep_text[30] = "this will hurt"
	wep_swap[30] = sndSwapBow
	wep_rad[30] = 0;

	wep_name[31] = "TOXIC CROSSBOW"
	wep_type[31] = 3
	wep_auto[31] = 0
	wep_load[31] = 29
	wep_cost[31] = 1
	wep_sprt[31] = sprToxicBow
	wep_area[31] = 4
	wep_text[31] = "hold breath while firing"
	wep_swap[31] = sndSwapBow
	wep_rad[31] = 0;

	wep_name[32] = "SENTRY GUN"
	wep_type[32] = 1
	wep_auto[32] = 1
	wep_load[32] = 60
	wep_cost[32] = 24
	wep_sprt[32] = sprSentryGun
	wep_area[32] = 20
	wep_text[32] = ""
	wep_swap[32] = sndSwapMachinegun
	wep_rad[32] = 0;

	wep_name[33] = "WAVE GUN"
	wep_type[33] = 2
	wep_auto[33] = 0
	wep_load[33] = 16
	wep_cost[33] = 2
	wep_sprt[33] = sprWaveGun
	wep_area[33] = 12
	wep_text[33] = "shoot em up"
	wep_swap[33] = sndSwapShotgun
	wep_rad[33] = 0;

	wep_name[34] = "PLASMA GUN"
	wep_type[34] = 5
	wep_auto[34] = 1
	wep_load[34] = 16
	wep_cost[34] = 2
	wep_sprt[34] = sprPlasmaGun
	wep_area[34] = 5
	wep_text[34] = "fun fun"
	wep_swap[34] = sndSwapEnergy
	wep_rad[34] = 0;

	wep_name[35] = "PLASMA CANNON"
	wep_type[35] = 5
	wep_auto[35] = 0
	wep_load[35] = 45
	wep_cost[35] = 8
	wep_sprt[35] = sprPlasmaCannon
	wep_area[35] = 11
	wep_text[35] = "fun fun fun"
	wep_swap[35] = sndSwapEnergy
	wep_rad[35] = 0;

	wep_name[36] = "ENERGY HAMMER"
	wep_type[36] = 5
	wep_auto[36] = 0
	wep_load[36] = 24
	wep_cost[36] = 4.5
	wep_sprt[36] = sprEnergyHammer
	wep_area[36] = 9
	wep_text[36] = "break a leg"
	wep_swap[36] = sndSwapHammer
	wep_rad[36] = 0;

	wep_name[37] = "JACKHAMMER"
	wep_type[37] = 4
	wep_auto[37] = 1
	wep_load[37] = 12
	wep_cost[37] = 1
	wep_sprt[37] = sprJackHammer
	wep_area[37] = 6
	wep_text[37] = "break some legs"
	wep_swap[37] = sndSwapMotorized
	wep_rad[37] = 0;

	wep_name[38] = "FLAK CANNON"
	wep_type[38] = 2
	wep_auto[38] = 0
	wep_load[38] = 26
	wep_cost[38] = 2
	wep_sprt[38] = sprFlakCannon
	wep_area[38] = 6
	wep_text[38] = "10/10"
	wep_swap[38] = sndSwapExplosive
	wep_rad[38] = 0;

	wep_name[39] = "GOLDEN REVOLVER"
	wep_type[39] = 1
	wep_auto[39] = 0
	wep_load[39] = 5
	wep_cost[39] = 1
	wep_sprt[39] = sprGoldRevolver
	wep_area[39] = -1
	wep_text[39] = "B-)"
	wep_swap[39] = sndSwapPistol
	wep_rad[39] = 0;

	wep_name[40] = "GOLDEN WRENCH"
	wep_type[40] = 0
	wep_auto[40] = 0
	wep_load[40] = 18
	wep_cost[40] = 0
	wep_sprt[40] = sprGoldWrench
	wep_area[40] = 17
	wep_text[40] = "riveting"
	wep_swap[40] = sndSwapHammer
	wep_rad[40] = 0;

	wep_name[41] = "GOLDEN MACHINEGUN"
	wep_type[41] = 1
	wep_auto[41] = 1
	wep_load[41] = 5
	wep_cost[41] = 1
	wep_sprt[41] = sprGoldMachinegun
	wep_area[41] = 17
	wep_text[41] = "expensive machinegun"
	wep_swap[41] = sndSwapMachinegun
	wep_rad[41] = 0;

	wep_name[42] = "GOLDEN SHOTGUN"
	wep_type[42] = 2
	wep_auto[42] = 0
	wep_load[42] = 20
	wep_cost[42] = 1
	wep_sprt[42] = sprGoldShotgun
	wep_area[42] = 17
	wep_text[42] = "beautiful shotgun"
	wep_swap[42] = sndSwapShotgun
	wep_rad[42] = 0;

	wep_name[43] = "GOLDEN CROSSBOW"
	wep_type[43] = 3
	wep_auto[43] = 0
	wep_load[43] = 23
	wep_cost[43] = 1
	wep_sprt[43] = sprGoldCrossbow
	wep_area[43] = 17
	wep_text[43] = "velvet handles"
	wep_swap[43] = sndSwapBow
	wep_rad[43] = 0;

	wep_name[44] = "GOLDEN GRENADE LAUNCHER"
	wep_type[44] = 4
	wep_auto[44] = 0
	wep_load[44] = 20
	wep_cost[44] = 1
	wep_sprt[44] = sprGoldNader
	wep_area[44] = 17
	wep_text[44] = "even the grenades are gold"
	wep_swap[44] = sndSwapExplosive
	wep_rad[44] = 0;

	wep_name[45] = "GOLDEN LASER PISTOL"
	wep_type[45] = 5
	wep_auto[45] = 0
	wep_load[45] = 8
	wep_cost[45] = 1
	wep_sprt[45] = sprGoldLaserGun
	wep_area[45] = 17
	wep_text[45] = "this thing gets hot"
	wep_swap[45] = sndSwapEnergy
	wep_rad[45] = 0;

	wep_name[46] = "CHICKEN SWORD"
	wep_type[46] = 0
	wep_auto[46] = 0
	wep_load[46] = 25
	wep_cost[46] = 0
	wep_sprt[46] = sprSword
	wep_area[46] = -1
	wep_text[46] = "chicken loves her sword"
	wep_swap[46] = sndSwapSword
	wep_rad[46] = 0;

	wep_name[47] = "NUKE LAUNCHER"
	wep_type[47] = 4
	wep_auto[47] = 0
	wep_load[47] = 50
	wep_cost[47] = 3
	wep_sprt[47] = sprNukeLauncher
	wep_area[47] = 10
	wep_text[47] = "this is what started it all"
	wep_swap[47] = sndSwapExplosive
	wep_rad[47] = 0;

	wep_name[48] = "ION CANNON"
	wep_type[48] = 5
	wep_auto[48] = 1
	wep_load[48] = 18
	wep_cost[48] = 4
	wep_sprt[48] = sprIonCannon
	wep_area[48] = 7
	wep_text[48] = "death from above"
	wep_swap[48] = sndSwapEnergy
	wep_rad[48] = 0;

	wep_name[49] = "QUADRUPLE MACHINEGUN"
	wep_type[49] = 1
	wep_auto[49] = 1
	wep_load[49] = 4
	wep_cost[49] = 4
	wep_sprt[49] = sprQuadrupleMachinegun
	wep_area[49] = 12
	wep_text[49] = "the future is here"
	wep_swap[49] = sndSwapMachinegun
	wep_rad[49] = 0;

	wep_name[50] = "FLAMETHROWER"
	wep_type[50] = 4
	wep_auto[50] = 1
	wep_load[50] = 8
	wep_cost[50] = 1
	wep_sprt[50] = sprFlameThrower
	wep_area[50] = 5
	wep_text[50] = "burn burn burn"
	wep_swap[50] = sndSwapFlame
	wep_rad[50] = 0;

	wep_name[51] = "DRAGON"
	wep_type[51] = 4
	wep_auto[51] = 1
	wep_load[51] = 4
	wep_cost[51] = 1
	wep_sprt[51] = sprDragon
	wep_area[51] = 13
	wep_text[51] = "hot breath"
	wep_swap[51] = sndSwapDragon
	wep_rad[51] = 0;


	wep_name[52] = "FLARE GUN"
	wep_type[52] = 4
	wep_auto[52] = 0
	wep_load[52] = 25
	wep_cost[52] = 1
	wep_sprt[52] = sprFlareGun
	wep_area[52] = 6
	wep_text[52] = "signal for help"
	wep_swap[52] = sndSwapFlame
	wep_rad[52] = 0;


	wep_name[53] = "ENERGY SCREWDRIVER"
	wep_type[53] = 5
	wep_auto[53] = 0
	wep_load[53] = 5
	wep_cost[53] = 1
	wep_sprt[53] = sprEnergyScrewDriver
	wep_area[53] = 7
	wep_text[53] = "future fixing"
	wep_swap[53] = sndSwapEnergy
	wep_rad[53] = 0;


	wep_name[54] = "HYPER LAUNCHER"
	wep_type[54] = 4
	wep_auto[54] = 0
	wep_load[54] = 9
	wep_cost[54] = 2
	wep_sprt[54] = sprHyperLauncher
	wep_area[54] = 14
	wep_text[54] = "point and click"
	wep_swap[54] = sndSwapExplosive
	wep_rad[54] = 0;

	wep_name[55] = "LASER CANNON"
	wep_type[55] = 5
	wep_auto[55] = 1
	wep_load[55] = 30//32 originally
	wep_cost[55] = 3
	wep_sprt[55] = sprLaserCannon
	wep_area[55] = 7
	wep_text[55] = "oh laser cannon"
	wep_swap[55] = sndSwapEnergy
	wep_rad[55] = 0;

	wep_name[56] = "RUSTY REVOLVER"
	wep_type[56] = 1
	wep_auto[56] = 0
	wep_load[56] = 7
	wep_cost[56] = 1
	wep_sprt[56] = sprRustyRevolver
	wep_area[56] = -1
	wep_text[56] = "this revolver is ancient"
	wep_swap[56] = sndSwapPistol
	wep_rad[56] = 0;

	wep_name[57] = "LIGHTNING PISTOL"
	wep_type[57] = 5
	wep_auto[57] = 1
	wep_load[57] = 8
	wep_cost[57] = 1
	wep_sprt[57] = sprLightningPistol
	wep_area[57] = 6
	wep_text[57] = "thunder"
	wep_swap[57] = sndSwapEnergy
	wep_rad[57] = 0;

	wep_name[58] = "LIGHTNING RIFLE"
	wep_type[58] = 5
	wep_auto[58] = 1
	wep_load[58] = 23
	wep_cost[58] = 2
	wep_sprt[58] = sprLightningRifle
	wep_area[58] = 9
	wep_text[58] = "a storm is coming"
	wep_swap[58] = sndSwapEnergy
	wep_rad[58] = 0;


	wep_name[59] = "LIGHTNING SHOTGUN"
	wep_type[59] = 5
	wep_auto[59] = 1
	wep_load[59] = 25
	wep_cost[59] = 4
	wep_sprt[59] = sprLightningShotgun
	wep_area[59] = 15
	wep_text[59] = "hurricane"
	wep_swap[59] = sndSwapEnergy
	wep_rad[59] = 0;

	//BELOW THIS IS MODDED by Juul (Erdeppol/CouchPotato)
	wep_name[60] = "BLOOD LAUNCHER SHOTGUN"
	wep_type[60] = 4
	wep_auto[60] = 1
	wep_load[60] = 20
	wep_cost[60] = 3
	wep_sprt[60] = sprBloodShotgun
	wep_area[60] = 10
	wep_text[60] = "explosions from your heart"
	wep_swap[60] = sndSwapExplosive
	wep_rad[60] = 0;

	wep_name[61] = "BLOOD PISTOL"
	wep_type[61] = 1
	wep_auto[61] = 0
	wep_load[61] = 1
	wep_cost[61] = 1
	wep_sprt[61] = sprBloodPistol
	wep_area[61] = 0
	wep_text[61] = "blood weapons destroy projectiles"
	wep_swap[61] = sndSwapPistol
	wep_rad[61] = 0;

	wep_name[62] = "POP GUN"
	wep_type[62] = 1
	wep_auto[62] = 1
	wep_load[62] = 2
	wep_cost[62] = 1
	wep_sprt[62] = sprPopGun
	wep_area[62] = 1
	wep_text[62] = "not the real one"
	wep_swap[62] = sndSwapMachinegun
	wep_rad[62] = 0;

	wep_name[63] = "BLACKHOLE GENERATOR"
	wep_type[63] = 5
	wep_auto[63] = 0
	wep_load[63] = 46
	wep_cost[63] = 7
	wep_sprt[63] = sprBlackholeGenerator
	wep_area[63] = 16
	wep_text[63] = "this thing sucks"
	wep_swap[63] = sndSwapEnergy
	wep_rad[63] = 0;

	wep_name[64] = "POP RIFLE"
	wep_type[64] = 1
	wep_auto[64] = 1
	wep_load[64] = 9
	wep_cost[64] = 2
	wep_sprt[64] = sprPopRifle
	wep_area[64] = 1
	wep_text[64] = "just a copy"
	wep_swap[64] = sndSwapMachinegun
	wep_rad[64] = 0;

	wep_name[65] = "HYPER POP RIFLE"
	wep_type[65] = 1
	wep_auto[65] = 0
	wep_load[65] = 3
	wep_cost[65] = 4
	wep_sprt[65] = sprHyperPopRifle
	wep_area[65] = 8
	wep_text[65] = "hyper pop time"
	wep_swap[65] = sndSwapMachinegun
	wep_rad[65] = 0;

	wep_name[66] = "QUADRUPLE SHOTGUN"
	wep_type[66] = 2
	wep_auto[66] = 0
	wep_load[66] = 35
	wep_cost[66] = 4
	wep_sprt[66] = sprQuadrupleShotgun
	wep_area[66] = 7
	wep_text[66] = "quadruple shotgun, quadruple fun"
	wep_swap[66] = sndSwapShotgun
	wep_rad[66] = 0;

	wep_name[67] = "SWORD GUN"
	wep_type[67] = 3
	wep_auto[67] = 1
	wep_load[67] = 14
	wep_cost[67] = 2
	wep_sprt[67] = sprSwordGun
	wep_area[67] = 8
	wep_text[67] = "have you tried sword gun#with bolt marrow?#Or shotgun shoulders?"
	wep_swap[67] = sndSwapSword
	wep_rad[67] = 0;

	wep_name[68] = "AUTO GRENADE LAUNCHER"
	wep_type[68] = 4
	wep_auto[68] = 1
	wep_load[68] = 9
	wep_cost[68] = 1
	wep_sprt[68] = sprAutoNader
	wep_area[68] = 7
	wep_text[68] = "BOOM BOOM BOOM BOOM"
	wep_swap[68] = sndSwapExplosive
	wep_rad[68] = 0;

	wep_name[69] = "OOPS GUN"
	wep_type[69] = 1
	wep_auto[69] = 0
	wep_load[69] = 7
	wep_cost[69] = 1
	wep_sprt[69] = sprOopsGun
	wep_area[69] = -1
	wep_text[69] = "suicidal"
	wep_swap[69] = sndSwapPistol
	wep_rad[69] = 0;

	wep_name[70] = "MORPH-O-RAY"
	wep_type[70] = 5
	wep_auto[70] = 1
	wep_load[70] = 9
	wep_cost[70] = 1
	wep_sprt[70] = sprMorphORay
	wep_area[70] = 9
	wep_text[70] = "Eagle eyes also increases#MORPH-O-RAY's range"
	wep_swap[70] = sndSwapEnergy
	wep_rad[70] = 0;

	wep_name[71] = "SUPER BAZOOKA"
	wep_type[71] = 4
	wep_auto[71] = 0
	wep_load[71] = 34
	wep_cost[71] = 4
	wep_sprt[71] = sprSuperBazooka
	wep_area[71] = 13
	wep_text[71] = "\"JW could not resist\"#- Rami 2015"
	wep_swap[71] = sndSwapExplosive
	wep_rad[71] = 0;

	wep_name[72] = "GATLING BAZOOKA"
	wep_type[72] = 4
	wep_auto[72] = 1
	wep_load[72] = 12
	wep_cost[72] = 1
	wep_sprt[72] = sprGatlingBazooka
	wep_area[72] = 9
	wep_text[72] = ""
	wep_swap[72] = sndSwapExplosive
	wep_rad[72] = 0;

	wep_name[73] = "EXPLOSIVE MORPH-O-RAY"
	wep_type[73] = 5
	wep_auto[73] = 1
	wep_load[73] = 7
	wep_cost[73] = 1
	wep_sprt[73] = sprExplosiveMorphORay
	wep_area[73] = 12
	wep_text[73] = "butcher"
	wep_swap[73] = sndSwapEnergy
	wep_rad[73] = 0;

	wep_name[74] = "TRIPLE POP GUN"
	wep_type[74] = 1
	wep_auto[74] = 1
	wep_load[74] = 2
	wep_cost[74] = 3
	wep_sprt[74] = sprTriplePopGun
	wep_area[74] = 4
	wep_text[74] = "rapid fire!"
	wep_swap[74] = sndSwapMachinegun
	wep_rad[74] = 0;

	wep_name[75] = "IDKWID"
	wep_type[75] = 1
	wep_auto[75] = 1
	wep_load[75] = 2
	wep_cost[75] = 12
	wep_sprt[75] = sprIdkwid
	wep_area[75] = -1
	wep_text[75] = "I don't know what it does"
	wep_swap[75] = sndSwapMachinegun
	wep_rad[75] = 0;

	wep_name[76] = "PLASMA RIFLE"
	wep_type[76] = 5
	wep_auto[76] = 1
	wep_load[76] = 9
	wep_cost[76] = 2
	wep_sprt[76] = sprPlasmaRifle
	wep_area[76] = 8
	wep_text[76] = ""
	wep_swap[76] = sndSwapEnergy
	wep_rad[76] = 0;

	wep_name[77] = "PLASMA MINIGUN"
	wep_type[77] = 5
	wep_auto[77] = 1
	wep_load[77] = 3
	wep_cost[77] = 1
	wep_sprt[77] = sprPlasmaMinigun
	wep_area[77] = 16
	wep_text[77] = ""
	wep_swap[77] = sndSwapEnergy
	wep_rad[77] = 0;

	wep_name[78] = "HYPER SLUGGER"
	wep_type[78] = 2
	wep_auto[78] = 0
	wep_load[78] = 10
	wep_cost[78] = 2
	wep_sprt[78] = sprHyperSlugger
	wep_area[78] = 14
	wep_text[78] = "slagger"
	wep_swap[78] = sndSwapShotgun
	wep_rad[78] = 0;

	wep_name[79] = "SUPER PLASMA CANNON"
	wep_type[79] = 5
	wep_auto[79] = 0
	wep_load[79] = 350
	wep_cost[79] = 24
	wep_sprt[79] = sprSuperPlasmaCannon
	wep_area[79] = 18
	wep_text[79] = "SPC!"
	wep_swap[79] = sndSwapEnergy
	wep_rad[79] = 0;

	wep_name[80] = "HUNTER SNIPER"
	wep_type[80] = 1
	wep_auto[80] = 1
	wep_load[80] = 16
	wep_cost[80] = 2
	wep_sprt[80] = sprSniper
	wep_area[80] = -1
	wep_text[80] = "reliable sniper"
	wep_swap[80] = sndSwapPistol
	wep_rad[80] = 0;

	wep_name[81] = "SUPER SWORD GUN"
	wep_type[81] = 3
	wep_auto[81] = 1
	wep_load[81] = 35
	wep_cost[81] = 7
	wep_sprt[81] = sprSuperSwordGun
	wep_area[81] = 18
	wep_text[81] = "SLASH SLASH SLASH SLASH SLASH"
	wep_swap[81] = sndSwapSword
	wep_rad[81] = 0;

	wep_name[82] = "MEGA LASER PISTOL"
	wep_type[82] = 5
	wep_auto[82] = 0
	wep_load[82] = 35
	wep_cost[82] = 3
	wep_sprt[82] = sprMegaLaserPistol
	wep_area[82] = 7
	wep_text[82] = "IMA FIRIN MAH LAZOR!"
	wep_swap[82] = sndSwapEnergy
	wep_rad[82] = 0;

	wep_name[83] = "BLOOD RIFLE"
	wep_type[83] = 1
	wep_auto[83] = 1
	wep_load[83] = 3
	wep_cost[83] = 1
	wep_sprt[83] = sprBloodRifle
	wep_area[83] = 1
	wep_text[83] = "bloody hell"
	wep_swap[83] = sndSwapMachinegun
	wep_rad[83] = 0;

	wep_name[84] = "TRIPLE BLOOD RIFLE"
	wep_type[84] = 1
	wep_auto[84] = 1
	wep_load[84] = 2
	wep_cost[84] = 1.75
	wep_sprt[84] = sprTripleBloodGun
	wep_area[84] = 3
	wep_text[84] = "fueled by fleshwounds"
	wep_swap[84] = sndSwapMachinegun
	wep_rad[84] = 0;

	wep_name[85] = "ERASER"
	wep_type[85] = 2
	wep_auto[85] = 0
	wep_load[85] = 18
	wep_cost[85] = 2
	wep_sprt[85] = sprEraser
	wep_area[85] = 6
	wep_text[85] = "drawer"
	wep_swap[85] = sndSwapShotgun
	wep_rad[85] = 0;

	wep_name[86] = "SUPER ERASER"
	wep_type[86] = 2
	wep_auto[86] = 0
	wep_load[86] = 40
	wep_cost[86] = 10
	wep_sprt[86] = sprSuperEraser
	wep_area[86] = 14
	wep_text[86] = "pencils"
	wep_swap[86] = sndSwapShotgun
	wep_rad[86] = 0;

	wep_name[87] = "DOUBLE MINIGUN"
	wep_type[87] = 1
	wep_auto[87] = 1
	wep_load[87] = 1
	wep_cost[87] = 2
	wep_sprt[87] = sprDoubleMinigun
	wep_area[87] = 9
	wep_text[87] = "time to rain more bullets"
	wep_swap[87] = sndSwapMachinegun
	wep_rad[87] = 0;

	wep_name[88] = "SPLINTER PISTOL"
	wep_type[88] = 3
	wep_auto[88] = 0
	wep_load[88] = 10
	wep_cost[88] = 1
	wep_sprt[88] = sprSplinterPistol
	wep_area[88] = 6
	wep_text[88] = "wooden pieces"
	wep_swap[88] = sndSwapBow
	wep_rad[88] = 0;

	wep_name[89] = "DIRECTOR SLUGGER"
	wep_type[89] = 2
	wep_auto[89] = 0
	wep_load[89] = 23
	wep_cost[89] = 1
	wep_sprt[89] = sprDirectorSlugger
	wep_area[89] = 4
	wep_text[89] = "control"
	wep_swap[89] = sndSwapShotgun
	wep_rad[89] = 0;

	wep_name[90] = "ASSAULT PISTOL"
	wep_type[90] = 1
	wep_auto[90] = 0
	wep_load[90] = 8
	wep_cost[90] = 2
	wep_sprt[90] = sprAPistol
	wep_area[90] = 1
	wep_text[90] = "new classic"
	wep_swap[90] = sndSwapMachinegun
	wep_rad[90] = 0;

	wep_name[91] = "ASSAULT SHOTGUN"
	wep_type[91] = 2
	wep_auto[91] = 0
	wep_load[91] = 30
	wep_cost[91] = 3
	wep_sprt[91] = sprAssaultShotgun
	wep_area[91] = 5
	wep_text[91] = "burst shotgun"
	wep_swap[91] = sndSwapShotgun
	wep_rad[91] = 0;

	wep_name[92] = "BEAM SHOTGUN"
	wep_type[92] = 2
	wep_auto[92] = 1
	wep_load[92] = 8
	wep_cost[92] = 1
	wep_sprt[92] = sprBeamShotgun
	wep_area[92] = 12
	wep_text[92] = "drawer"
	wep_swap[92] = sndSwapShotgun
	wep_rad[92] = 0;

	wep_name[93] = "BOUNCER SMG"
	wep_type[93] = 1
	wep_auto[93] = 1
	wep_load[93] = 3
	wep_cost[93] = 1.5
	wep_sprt[93] = sprBouncerSMG
	wep_area[93] = 5
	wep_text[93] = "first reddit requested"
	wep_swap[93] = sndSwapPistol
	wep_rad[93] = 0;

	wep_name[94] = "BOUNCER SHOTGUN"
	wep_type[94] = 1
	wep_auto[94] = 1
	wep_load[94] = 19
	wep_cost[94] = 7
	wep_sprt[94] = sprBouncerShotgun
	wep_area[94] = 6
	wep_text[94] = "pop pop diz"
	wep_swap[94] = sndSwapShotgun
	wep_rad[94] = 0;

	wep_name[95] = "BOUNCER ASSAULT RIFLE"
	wep_type[95] = 1
	wep_auto[95] = 1
	wep_load[95] = 13
	wep_cost[95] = 3
	wep_sprt[95] = sprBouncerAssaultRifle
	wep_area[95] = 5
	wep_text[95] = "bounce shake"
	wep_swap[95] = sndSwapMachinegun
	wep_rad[95] = 0;

	wep_name[96] = "HYPER BOUNCER RIFLE"
	wep_type[96] = 1
	wep_auto[96] = 1
	wep_load[96] = 12
	wep_cost[96] = 5
	wep_sprt[96] = sprHyperBouncerRifle
	wep_area[96] = 9
	wep_text[96] = "hyper bounce time"
	wep_swap[96] = sndSwapMachinegun
	wep_rad[96] = 0;

	wep_name[97] = "BOUNCER FLAK CANNON"
	wep_type[97] = 1
	wep_auto[97] = 1
	wep_load[97] = 24
	wep_cost[97] = 10
	wep_sprt[97] = sprBouncerFlakCannon
	wep_area[97] = 6
	wep_text[97] = "10/bounce"
	wep_swap[97] = sndSwapExplosive
	wep_rad[97] = 0;

	wep_name[98] = "MORPH-O-PISTOL"
	wep_type[98] = 5
	wep_auto[98] = 0
	wep_load[98] = 23
	wep_cost[98] = 1
	wep_sprt[98] = sprMorphOPistol
	wep_area[98] = 3
	wep_text[98] = "sheeps!"
	wep_swap[98] = sndSwapEnergy
	wep_rad[98] = 0;

	wep_name[99] = "SUPER FLAK CANNON"
	wep_type[99] = 2
	wep_auto[99] = 0
	wep_load[99] = 64
	wep_cost[99] = 8
	wep_sprt[99] = sprSuperFlakCannon
	wep_area[99] = 12//5.3
	wep_text[99] = "11/10"
	wep_swap[99] = sndSwapExplosive
	wep_rad[99] = 0;

	wep_name[100] = "SLEDGEHAMMER"
	wep_type[100] = 0
	wep_auto[100] = 0
	wep_load[100] = 34
	wep_cost[100] = 0
	wep_sprt[100] = sprHammer
	wep_area[100] = 3
	wep_text[100] = "hammer time"
	wep_swap[100] = sndSwapHammer
	wep_rad[100] = 0;

	wep_name[101] = "LIGHTNING SMG"
	wep_type[101] = 5
	wep_auto[101] = 1
	wep_load[101] = 6//0.23sec?
	wep_cost[101] = 1.5
	wep_sprt[101] = sprLightningSMG
	wep_area[101] = 12
	wep_text[101] = "tornado"
	wep_swap[101] = sndSwapEnergy
	wep_rad[101] = 0;

	wep_name[102] = "FROST PISTOL"
	wep_type[102] = 1
	wep_auto[102] = 0
	wep_load[102] = 10
	wep_cost[102] = 2
	wep_sprt[102] = sprFrostPistol
	wep_area[102] = 2
	wep_text[102] = "freeze enemies"
	wep_swap[102] = sndSwapPistol
	wep_rad[102] = 0;

	wep_name[103] = "FROST MACHINEGUN"
	wep_type[103] = 1
	wep_auto[103] = 1
	wep_load[103] = 6
	wep_cost[103] = 2
	wep_sprt[103] = sprFrostMachinegun
	wep_area[103] = 5
	wep_text[103] = "freeze!"
	wep_swap[103] = sndSwapMachinegun
	wep_rad[103] = 0;

	wep_name[104] = "HEAVY REVOLVER"
	wep_type[104] = 1
	wep_auto[104] = 0
	wep_load[104] = 5
	wep_cost[104] = 2
	wep_sprt[104] = sprHeavyRevolver
	wep_area[104] = 8
	wep_text[104] = "heavy bullets"
	wep_swap[104] = sndSwapPistol
	wep_rad[104] = 0;

	wep_name[105] = "HEAVY MACHINEGUN"
	wep_type[105] = 1
	wep_auto[105] = 1
	wep_load[105] = 4
	wep_cost[105] = 2
	wep_sprt[105] = sprHeavyMachineGun
	wep_area[105] = 9
	wep_text[105] = "weight"
	wep_swap[105] = sndSwapMachinegun
	wep_rad[105] = 0;

	wep_name[106] = "HEAVY ASSAULT RIFLE"
	wep_type[106] = 1
	wep_auto[106] = 0
	wep_load[106] = 10
	wep_cost[106] = 6
	wep_sprt[106] = sprHeavyARifle
	wep_area[106] = 12
	wep_text[106] = "hefty"
	wep_swap[106] = sndSwapMachinegun
	wep_rad[106] = 0;

	wep_name[107] = "SHORTGUN"
	wep_type[107] = 2
	wep_auto[107] = 0
	wep_load[107] = 14
	wep_cost[107] = 2
	wep_sprt[107] = sprShortgun
	wep_area[107] = 0
	wep_text[107] = "thats what she said"
	wep_swap[107] = sndSwapShotgun
	wep_rad[107] = 0;

	wep_name[108] = "DEAD GLOVE"
	wep_type[108] = 4
	wep_auto[108] = 0
	wep_load[108] = 24
	wep_cost[108] = 1
	wep_sprt[108] = sprDeadGlove
	wep_area[108] = 4
	wep_text[108] = "cold touch of death"
	wep_swap[108] = sndSwapHammer
	wep_rad[108] = 0;

	wep_name[109] = "BLOOD GLOVE"
	wep_type[109] = 4
	wep_auto[109] = 0
	wep_load[109] = 18
	wep_cost[109] = 2
	wep_sprt[109] = sprBloodGlove
	wep_area[109] = 6
	wep_text[109] = "five point palm#exploding heart technique"
	wep_swap[109] = sndSwapHammer
	wep_rad[109] = 0;

	wep_name[110] = "MINI FLAME CANNON"
	wep_type[110] = 4
	wep_auto[110] = 0
	wep_load[110] = 25
	wep_cost[110] = 2
	wep_sprt[110] = sprMiniFlameCannon
	wep_area[110] = 6
	wep_text[110] = "flame family"
	wep_swap[110] = sndSwapFlame
	wep_rad[110] = 0;

	wep_name[111] = "FLAME CANNON"
	wep_type[111] = 4
	wep_auto[111] = 0
	wep_load[111] = 30
	wep_cost[111] = 5
	wep_sprt[111] = sprFlameCannon
	wep_area[111] = 12
	wep_text[111] = "fireball!"
	wep_swap[111] = sndSwapFlame
	wep_rad[111] = 0;

	wep_name[112] = "INFINITY REVOLVER"
	wep_type[112] = 1
	wep_auto[112] = 0
	wep_load[112] = 5
	wep_cost[112] = 0
	wep_sprt[112] = sprInfinityPistol
	wep_area[112] = 10
	wep_text[112] = "trusty new revolver"
	wep_swap[112] = sndSwapPistol
	wep_rad[112] = 0;

	wep_name[113] = "INFINITY MACHINEGUN"
	wep_type[113] = 1
	wep_auto[113] = 1
	wep_load[113] = 4
	wep_cost[113] = 0
	wep_sprt[113] = sprInfinityMachinegun
	wep_area[113] = 14
	wep_text[113] = "endless"
	wep_swap[113] = sndSwapMachinegun
	wep_rad[113] = 0;

	wep_name[114] = "ULTRA REVOLVER"
	wep_type[114] = 1
	wep_auto[114] = 1
	wep_load[114] = 3
	wep_cost[114] = 2
	wep_sprt[114] = sprUltraRevolver
	wep_area[114] = 19
	wep_text[114] = "radical"
	wep_swap[114] = sndSwapMachinegun
	wep_rad[114] = 4;//retail 4

	wep_name[115] = "ULTRA SHOTGUN"
	wep_type[115] = 2
	wep_auto[115] = 0
	wep_load[115] = 12
	wep_cost[115] = 3
	wep_sprt[115] = sprUltraShotgun
	wep_area[115] = 19
	wep_text[115] = "radiculous"
	wep_swap[115] = sndSwapShotgun
	wep_rad[115] = 14;//retail 14

	wep_name[116] = "ULTRA CROSSBOW"
	wep_type[116] = 3
	wep_auto[116] = 0
	wep_load[116] = 17
	wep_cost[116] = 1
	wep_sprt[116] = sprUltraCrossbow
	wep_area[116] = 19
	wep_text[116] = "green bow"
	wep_swap[116] = sndSwapShotgun
	wep_rad[116] = 12;

	wep_name[117] = "ULTRA LASER PISTOL"
	wep_type[117] = 5
	wep_auto[117] = 0
	wep_load[117] = 7
	wep_cost[117] = 3
	wep_sprt[117] = sprUltraLaserGun
	wep_area[117] = 19
	wep_text[117] = ""
	wep_swap[117] = sndSwapEnergy
	wep_rad[117] = 16;

	wep_name[118] = "ULTRA SHOVEL"
	wep_type[118] = 0
	wep_auto[118] = 0
	wep_load[118] = 14
	wep_cost[118] = 0
	wep_sprt[118] = sprUltraShovel
	wep_area[118] = 19//4 originally?
	wep_text[118] = "dig you to death"
	wep_swap[118] = sndSwapHammer
	wep_rad[118] = 15;

	wep_name[119] = "AUTO FLAK CANNON"
	wep_type[119] = 2
	wep_auto[119] = 1
	wep_load[119] = 13
	wep_cost[119] = 2
	wep_sprt[119] = sprAutoFlakCannon
	wep_area[119] = 12
	wep_text[119] = "you asked for it"
	wep_swap[119] = sndSwapExplosive
	wep_rad[119] = 0;

	wep_name[120] = "ULTRA LIGHTNING RIFLE"
	wep_type[120] = 5
	wep_auto[120] = 1
	wep_load[120] = 14
	wep_cost[120] = 3
	wep_sprt[120] = sprUltraLightningRifle
	wep_area[120] = 22
	wep_text[120] = "ultranado"
	wep_swap[120] = sndSwapEnergy
	wep_rad[120] = 16;

	wep_name[121] = "ULTRA FLAMETHROWER"
	wep_type[121] = 4
	wep_auto[121] = 1
	wep_load[121] = 3
	wep_cost[121] = 1
	wep_sprt[121] = sprUltraFlamethrower
	wep_area[121] = 22
	wep_text[121] = "ultra breath"
	wep_swap[121] = sndSwapDragon
	wep_rad[121] = 5;

	wep_name[122] = "FLARE SHOTGUN"
	wep_type[122] = 4
	wep_auto[122] = 0
	wep_load[122] = 32
	wep_cost[122] = 4
	wep_sprt[122] = sprFlareShotgun
	wep_area[122] = 9
	wep_text[122] = ""
	wep_swap[122] = sndSwapFlame
	wep_rad[122] = 0;

	wep_name[123] = "FROST GLOVE"
	wep_type[123] = 4
	wep_auto[123] = 0
	wep_load[123] = 24
	wep_cost[123] = 1
	wep_sprt[123] = sprFrostGlove
	wep_area[123] = 7
	wep_text[123] = "cold hands"
	wep_swap[123] = sndSwapHammer
	wep_rad[123] = 0;

	wep_name[124] = "LIGHTNING HAMMER"
	wep_type[124] = 0
	wep_auto[124] = 1
	wep_load[124] = 32
	wep_cost[124] = 0
	wep_sprt[124] = sprLightningHammer
	wep_area[124] = 13
	wep_text[124] = "shocking"
	wep_swap[124] = sndSwapHammer
	wep_rad[124] = 0;

	wep_name[125] = "LIGHTNING SHOVEL"
	wep_type[125] = 0
	wep_auto[125] = 1
	wep_load[125] = 48
	wep_cost[125] = 0
	wep_sprt[125] = sprLightningShovel
	wep_area[125] = 19
	wep_text[125] = "storm digger"
	wep_swap[125] = sndSwapHammer
	wep_rad[125] = 0;

	wep_name[126] = "ENERGY JACKHAMMER"
	wep_type[126] = 5
	wep_auto[126] = 1
	wep_load[126] = 5
	wep_cost[126] = 1
	wep_sprt[126] = sprEnergyJackHammer
	wep_area[126] = 10
	wep_text[126] = "electronic drilling"
	wep_swap[126] = sndSwapMotorized
	wep_rad[126] = 0;

	wep_name[127] = "ENERGY SWORD GUN"
	wep_type[127] = 5
	wep_auto[127] = 1
	wep_load[127] = 25
	wep_cost[127] = 3
	wep_sprt[127] = sprEnergySwordGun
	wep_area[127] = 18
	wep_text[127] = "bolt marrow, laser brain, shotgun shoulders and long arms!?"
	wep_swap[127] = sndSwapEnergy
	wep_rad[127] = 0;

	wep_name[128] = "SUPER ENERGY SWORD GUN"
	wep_type[128] = 5
	wep_auto[128] = 1
	wep_load[128] = 50
	wep_cost[128] = 15
	wep_sprt[128] = sprSuperEnergySwordGun
	wep_area[128] = 24
	wep_text[128] = "this is nuts"
	wep_swap[128] = sndSwapEnergy
	wep_rad[128] = 0;

	wep_name[129] = "TOXICTHROWER"
	wep_type[129] = 4
	wep_auto[129] = 1
	wep_load[129] = 6
	wep_cost[129] = 1
	wep_sprt[129] = sprToxicThrower
	wep_area[129] = 4
	wep_text[129] = "gas gas gas"
	wep_swap[129] = sndSwapFlame
	wep_rad[129] = 0;

	wep_name[130] = "TOXIC DRAGON"
	wep_type[130] = 4
	wep_auto[130] = 1
	wep_load[130] = 4
	wep_cost[130] = 1
	wep_sprt[130] = sprToxicDragon
	wep_area[130] = 10
	wep_text[130] = "stinky breath"
	wep_swap[130] = sndSwapDragon
	wep_rad[130] = 0;

	wep_name[131] = "HEAVY HYPER RIFLE"
	wep_type[131] = 1
	wep_auto[131] = 0
	wep_load[131] = 3
	wep_cost[131] = 6
	wep_sprt[131] = sprHeavyHyperRifle
	wep_area[131] = 16
	wep_text[131] = "heavy burden"
	wep_swap[131] = sndSwapMachinegun
	wep_rad[131] = 0;

	wep_name[132] = "HYPER BLOOD LAUNCHER"
	wep_type[132] = 4
	wep_auto[132] = 0
	wep_load[132] = 11
	wep_cost[132] = 2
	wep_sprt[132] = sprHyperBloodLauncher
	wep_area[132] = 15
	wep_text[132] = "born in blood"
	wep_swap[132] = sndSwapExplosive
	wep_rad[132] = 0;

	wep_name[133] = "AUTO SPLINTER GUN"
	wep_type[133] = 3
	wep_auto[133] = 1
	wep_load[133] = 10
	wep_cost[133] = 1
	wep_sprt[133] = sprAutoSplinterGun
	wep_area[133] = 8
	wep_text[133] = "225 splinters per minute"
	wep_swap[133] = sndSwapBow
	wep_rad[133] = 0;

	wep_name[134] = "DOUBLE MACHINEGUN"
	wep_type[134] = 1
	wep_auto[134] = 1
	wep_load[134] = 5
	wep_cost[134] = 2
	wep_sprt[134] = sprDoubleMachinegun
	wep_area[134] = 2
	wep_text[134] = "splitgun"
	wep_swap[134] = sndSwapMachinegun
	wep_rad[134] = 0;

	wep_name[135] = "LOLLIPOP"
	wep_type[135] = 0
	wep_auto[135] = 0
	wep_load[135] = 36
	wep_cost[135] = 0
	wep_sprt[135] = sprLollipop
	wep_area[135] = 16
	wep_text[135] = "lick it"
	wep_swap[135] = sndSwapHammer
	wep_rad[135] = 0;

	wep_name[136] = "SMART GUN"
	wep_type[136] = 1
	wep_auto[136] = 1
	wep_load[136] = 3
	wep_cost[136] = 1
	wep_sprt[136] = sprSmartGun
	wep_area[136] = 12
	wep_text[136] = "guns that think"
	wep_swap[136] = sndSwapMachinegun
	wep_rad[136] = 0;

	wep_name[137] = "SMART MINIGUN"
	wep_type[137] = 1
	wep_auto[137] = 1
	wep_load[137] = 1
	wep_cost[137] = 1
	wep_sprt[137] = sprSmartMinigun
	wep_area[137] = 17
	wep_text[137] = "guns that think FAST"
	wep_swap[137] = sndSwapMachinegun
	wep_rad[137] = 0;

	wep_name[138] = "MEGA LASER RIFLE"
	wep_type[138] = 5
	wep_auto[138] = 1
	wep_load[138] = 16
	wep_cost[138] = 3
	wep_sprt[138] = sprMegaLaserRifle
	wep_area[138] = 11//pistol = 7
	wep_text[138] = "SHOOP DA WHOOP"
	wep_swap[138] = sndSwapEnergy
	wep_rad[138] = 0;

	wep_name[139] = "SPLINTER CROSSBOW"
	wep_type[139] = 3
	wep_auto[139] = 0
	wep_load[139] = 25
	wep_cost[139] = 2
	wep_sprt[139] = sprSplinterCrossbow
	wep_area[139] = 5
	wep_text[139] = "best of both worlds"
	wep_swap[139] = sndSwapBow
	wep_rad[139] = 0;

	wep_name[140] = "HYPER PLASMA CANNON"
	wep_type[140] = 5
	wep_auto[140] = 0
	wep_load[140] = 24
	wep_cost[140] = 4
	wep_sprt[140] = sprHyperPlasmaCannon
	wep_area[140] = 16
	wep_text[140] = "bubbles"
	wep_swap[140] = sndSwapEnergy
	wep_rad[140] = 0;

	wep_name[141] = "BULLET SHOTGUN"
	wep_type[141] = 1
	wep_auto[141] = 0
	wep_load[141] = 21
	wep_cost[141] = 6
	wep_sprt[141] = sprBulletShotgun
	wep_area[141] = 3
	wep_text[141] = "shotfun"
	wep_swap[141] = sndSwapShotgun
	wep_rad[141] = 0;

	wep_name[142] = "BLOOD BULLET SHOTGUN"
	wep_type[142] = 1
	wep_auto[142] = 0
	wep_load[142] = 16
	wep_cost[142] = 5
	wep_sprt[142] = sprBloodBulletShotgun
	wep_area[142] = 3
	wep_text[142] = "spit blood"
	wep_swap[142] = sndSwapShotgun
	wep_rad[142] = 0;

	wep_name[143] = "LINE GRENADE"
	wep_type[143] = 4
	wep_auto[143] = 0
	wep_load[143] = 17
	wep_cost[143] = 2
	wep_sprt[143] = sprLineNader
	wep_area[143] = 13
	wep_text[143] = "dangerous bliss"
	wep_swap[143] = sndSwapExplosive
	wep_rad[143] = 0;

	wep_name[144] = "HYPER LIGHTNING LAUNCHER"
	wep_type[144] = 5
	wep_auto[144] = 1
	wep_load[144] = 24
	wep_cost[144] = 3
	wep_sprt[144] = sprLightningHyperRifle
	wep_area[144] = 18
	wep_text[144] = "thunder lightning ever so frightning"//payama sam reference!
	wep_swap[144] = sndSwapEnergy
	wep_rad[144] = 0;

	wep_name[145] = "FIRE LINE"
	wep_type[145] = 4
	wep_auto[145] = 0
	wep_load[145] = 15
	wep_cost[145] = 2
	wep_sprt[145] = sprLineFire
	wep_area[145] = 8
	wep_text[145] = "don't get in the line of fire"
	wep_swap[145] = sndSwapFlame
	wep_rad[145] = 0;

	wep_name[146] = "TOXIC LINE"
	wep_type[146] = 4
	wep_auto[146] = 0
	wep_load[146] = 15
	wep_cost[146] = 2
	wep_sprt[146] = sprLineToxic
	wep_area[146] = 4
	wep_text[146] = "farts"
	wep_swap[146] = sndSwapFlame
	wep_rad[146] = 0;

	wep_name[147] = "FROST SHOTGUN"
	wep_type[147] = 1
	wep_auto[147] = 0
	wep_load[147] = 22
	wep_cost[147] = 14
	wep_sprt[147] = sprFrostShotgun
	wep_area[147] = 9
	wep_text[147] = "breezer"
	wep_swap[147] = sndSwapShotgun
	wep_rad[147] = 0;

	wep_name[148] = "HAND SHOTGUN"
	wep_type[148] = 2
	wep_auto[148] = 0
	wep_load[148] = 30
	wep_cost[148] = 2
	wep_sprt[148] = sprPistole
	wep_area[148] = -1
	wep_text[148] = "shotgun pistol"
	wep_swap[148] = sndSwapPistol
	wep_rad[148] = 0;

	wep_name[149] = "HYPER ASSAULT SHOTGUN"
	wep_type[149] = 2
	wep_auto[149] = 0
	wep_load[149] = 3
	wep_cost[149] = 4
	wep_sprt[149] = sprHyperBurstShotgun
	wep_area[149] = 13
	wep_text[149] = "hyper everything"
	wep_swap[149] = sndSwapShotgun
	wep_rad[149] = 0;

	wep_name[150] = "HYPER ASSAULT SLUGGER"
	wep_type[150] = 2
	wep_auto[150] = 0
	wep_load[150] = 20
	wep_cost[150] = 4
	wep_sprt[150] = sprHyperBurstSlugger
	wep_area[150] = 11
	wep_text[150] = "where's your gatling slugger now?!"
	wep_swap[150] = sndSwapShotgun
	wep_rad[150] = 0;

	wep_name[151] = "INFINITY SHOTGUN"
	wep_type[151] = 2
	wep_auto[151] = 0
	wep_load[151] = 19//18
	wep_cost[151] = 0
	wep_sprt[151] = sprInfinityShotgun
	wep_area[151] = 14
	wep_text[151] = "eternal"
	wep_swap[151] = sndSwapShotgun
	wep_rad[151] = 0;

	wep_name[152] = "INFINITY CROSSBOW"
	wep_type[152] = 3
	wep_auto[152] = 0
	wep_load[152] = 24//25
	wep_cost[152] = 0
	wep_sprt[152] = sprInfinityCrossbow
	wep_area[152] = 14
	wep_text[152] = "forever"
	wep_swap[152] = sndSwapBow
	wep_rad[152] = 0;

	wep_name[153] = "INCINERATOR"
	wep_type[153] = 1
	wep_auto[153] = 1
	wep_load[153] = 2
	wep_cost[153] = 2
	wep_sprt[153] = sprIncinerator
	wep_area[153] = 14
	wep_text[153] = "firestarter"
	wep_swap[153] = sndSwapFlame
	wep_rad[153] = 0;

	wep_name[154] = "FLAME POP GUN"
	wep_type[154] = 1
	wep_auto[154] = 1
	wep_load[154] = 3
	wep_cost[154] = 1
	wep_sprt[154] = sprFlamePopGun
	wep_area[154] = 6
	wep_text[154] = "thy shall burn"
	wep_swap[154] = sndSwapFlame
	wep_rad[154] = 0;

	wep_name[155] = "MINI INCINERATOR"
	wep_type[155] = 1
	wep_auto[155] = 1
	wep_load[155] = 3
	wep_cost[155] = 2
	wep_sprt[155] = sprMiniIncinerator
	wep_area[155] = 8
	wep_text[155] = "junior firestarter"
	wep_swap[155] = sndSwapFlame
	wep_rad[155] = 0;

	wep_name[156] = "FLAME SHOTGUN"
	wep_type[156] = 2
	wep_auto[156] = 0
	wep_load[156] = 19
	wep_cost[156] = 1
	wep_sprt[156] = sprFlameShotgun
	wep_area[156] = 4
	wep_text[156] = "burn baby burn"
	wep_swap[156] = sndSwapShotgun
	wep_rad[156] = 0;

	wep_name[157] = "DOUBLE FLAME SHOTGUN"
	wep_type[157] = 2
	wep_auto[157] = 0
	wep_load[157] = 28
	wep_cost[157] = 2
	wep_sprt[157] = sprDoubleFlameShotgun
	wep_area[157] = 6
	wep_text[157] = "double burn, double furn"
	wep_swap[157] = sndSwapShotgun
	wep_rad[157] = 0;

	wep_name[158] = "AUTO FLAME SHOTGUN"
	wep_type[158] = 2
	wep_auto[158] = 1
	wep_load[158] = 5
	wep_cost[158] = 1
	wep_sprt[158] = sprAutoFlameShotgun
	wep_area[158] = 9
	wep_text[158] = "feel the burn"
	wep_swap[158] = sndSwapShotgun
	wep_rad[158] = 0;

	wep_name[159] = "QUADRUPLE FLAME SHOTGUN"
	wep_type[159] = 2
	wep_auto[159] = 0
	wep_load[159] = 35
	wep_cost[159] = 4
	wep_sprt[159] = sprQuadrupleFlameShotgun
	wep_area[159] = 8
	wep_text[159] = "quad"
	wep_swap[159] = sndSwapShotgun
	wep_rad[159] = 0;

	wep_name[160] = "FLAME ERASER"
	wep_type[160] = 2
	wep_auto[160] = 0
	wep_load[160] = 20
	wep_cost[160] = 2
	wep_sprt[160] = sprFlameEraser
	wep_area[160] = 8//6 ERASER
	wep_text[160] = "buuuuuuuuuuuuurrrrrn"
	wep_swap[160] = sndSwapShotgun
	wep_rad[160] = 0;

	wep_name[161] = "SUPER FLAME ERASER"
	wep_type[161] = 2
	wep_auto[161] = 0
	wep_load[161] = 50
	wep_cost[161] = 8
	wep_sprt[161] = sprSuperFlameEraser
	wep_area[161] = 16//14 SUPER ERASER
	wep_text[161] = "vaporize"
	wep_swap[161] = sndSwapShotgun
	wep_rad[161] = 0;

	wep_name[162] = "MEGA INCINERATOR"
	wep_type[162] = 1
	wep_auto[162] = 1
	wep_load[162] = 2
	wep_cost[162] = 3
	wep_sprt[162] = sprMegaIncinerator
	wep_area[162] = 17//15 quadripple machinegun
	wep_text[162] = "senior firestarter"
	wep_swap[162] = sndSwapShotgun
	wep_rad[162] = 0;

	wep_name[163] = "QUADRUPLE POP GUN"
	wep_type[163] = 1
	wep_auto[163] = 1
	wep_load[163] = 2
	wep_cost[163] = 3
	wep_sprt[163] = sprQuadruplePopGun
	wep_area[163] = 16//15 quadripple machinegun
	wep_text[163] = "omg"
	wep_swap[163] = sndSwapMachinegun
	wep_rad[163] = 0;

	wep_name[164] = "BLOOD LINE"
	wep_type[164] = 4
	wep_auto[164] = 0
	wep_load[164] = 15
	wep_cost[164] = 2
	wep_sprt[164] = sprLineBloodNader
	wep_area[164] = 9
	wep_text[164] = "it's a bloody blood bath"
	wep_swap[164] = sndSwapExplosive
	wep_rad[164] = 0;

	wep_name[165] = "EXPLOSIVE CROSSBOW"
	wep_type[165] = 3
	wep_auto[165] = 0
	wep_load[165] = 25
	wep_cost[165] = 2
	wep_sprt[165] = sprExplosiveBow
	wep_area[165] = 6
	wep_text[165] = "the year of the bow"
	wep_swap[165] = sndSwapBow
	wep_rad[165] = 0;

	wep_name[166] = "SLASH SHOTGUN"
	wep_type[166] = 2
	wep_auto[166] = 0
	wep_load[166] = 23
	wep_cost[166] = 2
	wep_sprt[166] = sprSlashShotgun
	wep_area[166] = 4
	wep_text[166] = "shoot them out of there cover"
	wep_swap[166] = sndSwapShotgun
	wep_rad[166] = 0;

	wep_name[167] = "SPIRAL SLASH SHOTGUN"
	wep_type[167] = 2
	wep_auto[167] = 0
	wep_load[167] = 28
	wep_cost[167] = 5
	wep_sprt[167] = sprSpiralSlashShotgun
	wep_area[167] = 7
	wep_text[167] = "spinning"
	wep_swap[167] = sndSwapShotgun
	wep_rad[167] = 0;

	wep_name[168] = "SLASH ERASER"
	wep_type[168] = 2
	wep_auto[168] = 0
	wep_load[168] = 40
	wep_cost[168] = 10
	wep_sprt[168] = sprSlashEraser
	wep_area[168] = 15
	wep_text[168] = "7 erasers for the cost of 5"
	wep_swap[168] = sndSwapShotgun
	wep_rad[168] = 0;

	wep_name[169] = "SUPER SPIRAL SLASH SHOTGUN"
	wep_type[169] = 2
	wep_auto[169] = 0
	wep_load[169] = 60
	wep_cost[169] = 11
	wep_sprt[169] = sprSuperSpiralSlashShotgun
	wep_area[169] = 12
	wep_text[169] = "vomit"
	wep_swap[169] = sndSwapShotgun
	wep_rad[169] = 0;

	wep_name[170] = "DIRECTOR SHOTGUN"
	wep_type[170] = 2
	wep_auto[170] = 0
	wep_load[170] = 19
	wep_cost[170] = 1
	wep_sprt[170] = sprDirectorShotgun
	wep_area[170] = 3//1
	wep_text[170] = "click, click again to change direction"
	wep_swap[170] = sndSwapShotgun
	wep_rad[170] = 0;

	wep_name[171] = "DOUBLE DIRECTOR SHOTGUN"
	wep_type[171] = 2
	wep_auto[171] = 0
	wep_load[171] = 28
	wep_cost[171] = 2
	wep_sprt[171] = sprDoubleDirectorShotgun
	wep_area[171] = 5
	wep_text[171] = "I changed my mind"
	wep_swap[171] = sndSwapShotgun
	wep_rad[171] = 0;

	wep_name[172] = "QUADRUPLE DIRECTOR SHOTGUN"
	wep_type[172] = 2
	wep_auto[172] = 0
	wep_load[172] = 35
	wep_cost[172] = 4
	wep_sprt[172] = sprQuadrupleDirectorShotgun
	wep_area[172] = 7
	wep_text[172] = "one direction"
	wep_swap[172] = sndSwapShotgun
	wep_rad[172] = 0;

	wep_name[173] = "DIRECTOR RIFLE"
	wep_type[173] = 1
	wep_auto[173] = 0
	wep_load[173] = 20
	wep_cost[173] = 5
	wep_sprt[173] = sprDirectorRifle
	wep_area[173] = 2
	wep_text[173] = "click to change direction!"
	wep_swap[173] = sndSwapMachinegun
	wep_rad[173] = 0;

	wep_name[174] = "FLAME DIRECTOR SHOTGUN"
	wep_type[174] = 2
	wep_auto[174] = 0
	wep_load[174] = 20
	wep_cost[174] = 1
	wep_sprt[174] = sprFlameDirectorShotgun
	wep_area[174] = 5
	wep_text[174] = "heatflow"
	wep_swap[174] = sndSwapShotgun
	wep_rad[174] = 0;

	wep_name[175] = "DOUBLE FLAME DIRECTOR SHOTGUN"
	wep_type[175] = 2
	wep_auto[175] = 0
	wep_load[175] = 28
	wep_cost[175] = 2
	wep_sprt[175] = sprDoubleFlameDirectorShotgun
	wep_area[175] = 7
	wep_text[175] = "two directions"
	wep_swap[175] = sndSwapShotgun
	wep_rad[175] = 0;

	wep_name[176] = "QUADRUPLE FLAME DIRECTOR SHOTGUN"
	wep_type[176] = 2
	wep_auto[176] = 0
	wep_load[176] = 35
	wep_cost[176] = 4
	wep_sprt[176] = sprQuadrupleFlameDirectorShotgun
	wep_area[176] = 10
	wep_text[176] = "condensed fire"
	wep_swap[176] = sndSwapShotgun
	wep_rad[176] = 0;

	wep_name[177] = "TIMETHROWER (REMOVED)"
	wep_type[177] = 0
	wep_auto[177] = 1
	wep_load[177] = 6
	wep_cost[177] = 0
	wep_sprt[177] = sprTimeThrower
	wep_area[177] = -2
	wep_text[177] = "time is ticking"
	wep_swap[177] = sndSwapFlame
	wep_rad[177] = 0;

	wep_name[178] = "HEAVY ASSAULT PISTOL"
	wep_type[178] = 1
	wep_auto[178] = 0
	wep_load[178] = 10
	wep_cost[178] = 4
	wep_sprt[178] = sprHeavyAPistol
	wep_area[178] = 9
	wep_text[178] = "fan of heavy bullets <3"
	wep_swap[178] = sndSwapMachinegun
	wep_rad[178] = 0;

	wep_name[179] = "AUTO FLARE GUN"
	wep_type[179] = 4
	wep_auto[179] = 1
	wep_load[179] = 10
	wep_cost[179] = 0.5
	wep_sprt[179] = sprAutoFlareGun
	wep_area[179] = 11
	wep_text[179] = "automatic signalling"
	wep_swap[179] = sndSwapFlame
	wep_rad[179] = 0;

	wep_name[180] = "AUTO FLARE SHOTGUN"
	wep_type[180] = 4
	wep_auto[180] = 1
	wep_load[180] = 14
	wep_cost[180] = 4
	wep_sprt[180] = sprAutoFlareShotgun
	wep_area[180] = 17
	wep_text[180] = "signal in your face"
	wep_swap[180] = sndSwapFlame
	wep_rad[180] = 0;

	wep_name[181] = "CAR THROWER"
	wep_type[181] = 4
	wep_auto[181] = 1
	wep_load[181] = 32
	wep_cost[181] = 2.5
	wep_sprt[181] = sprCarThrower
	wep_area[181] = 9
	wep_text[181] = "amputated arm"
	wep_swap[181] = sndSwapMotorized
	wep_rad[181] = 0;

	wep_name[182] = "DIRECTOR ERASER"
	wep_type[182] = 2
	wep_auto[182] = 0
	wep_load[182] = 22
	wep_cost[182] = 2
	wep_sprt[182] = sprDirectorEraser
	wep_area[182] = 7//6
	wep_text[182] = "directing"
	wep_swap[182] = sndSwapShotgun
	wep_rad[182] = 0;

	wep_name[183] = "FLAME DIRECTOR ERASER"
	wep_type[183] = 2
	wep_auto[183] = 0
	wep_load[183] = 23
	wep_cost[183] = 2
	wep_sprt[183] = sprFlameDirectorEraser
	wep_area[183] = 10//6
	wep_text[183] = "redirecting"
	wep_swap[183] = sndSwapShotgun
	wep_rad[183] = 0;

	wep_name[184] = "SEEKER PISTOL"
	wep_type[184] = 3
	wep_auto[184] = 0
	wep_load[184] = 24
	wep_cost[184] = 1
	wep_sprt[184] = sprSeekerPistol
	wep_area[184] = 6
	wep_text[184] = "eagle eyes makes seekers cleverer"
	wep_swap[184] = sndSwapBow
	wep_rad[184] = 0;

	wep_name[185] = "SEEKER SHOTGUN"
	wep_type[185] = 3
	wep_auto[185] = 0
	wep_load[185] = 42
	wep_cost[185] = 3
	wep_sprt[185] = sprSeekerShotgun
	wep_area[185] = 8
	wep_text[185] = "bolt marrow makes seekers faster"
	wep_swap[185] = sndSwapBow
	wep_rad[185] = 0;

	wep_name[186] = "AUTO SEEKER PISTOL"
	wep_type[186] = 3
	wep_auto[186] = 1
	wep_load[186] = 10
	wep_cost[186] = 1
	wep_sprt[186] = sprAutoSeekerPistol
	wep_area[186] = 10
	wep_text[186] = "eagle eyes + bolt marrow#allows seekers to bounce off walls"
	wep_swap[186] = sndSwapBow
	wep_rad[186] = 0;

	wep_name[187] = "ASSAULT SEEKER SHOTGUN"
	wep_type[187] = 3
	wep_auto[187] = 0
	wep_load[187] = 90
	wep_cost[187] = 9
	wep_sprt[187] = sprAssaultSeekerShotgun
	wep_area[187] = 13
	wep_text[187] = "have you tried eagle eyes+bolt marrow?"
	wep_swap[187] = sndSwapBow
	wep_rad[187] = 0;

	wep_name[188] = "GRENADE REVOLVER"
	wep_type[188] = 4
	wep_auto[188] = 0
	wep_load[188] = 14
	wep_cost[188] = 1
	wep_sprt[188] = sprGrenadePistol
	wep_area[188] = 3
	wep_text[188] = "tiny"
	wep_swap[188] = sndSwapExplosive
	wep_rad[188] = 0;

	wep_name[189] = "SPLINTER SEEKER"
	wep_type[189] = 3
	wep_auto[189] = 0
	wep_load[189] = 25
	wep_cost[189] = 2
	wep_sprt[189] = sprSplinterSeeker
	wep_area[189] = 7
	wep_text[189] = "hybrid"
	wep_swap[189] = sndSwapBow
	wep_rad[189] = 0;

	wep_name[190] = "SEEKER CROSSBOW"
	wep_type[190] = 3
	wep_auto[190] = 0
	wep_load[190] = 25
	wep_cost[190] = 2
	wep_sprt[190] = sprSeekerCrossbow
	wep_area[190] = 7
	wep_text[190] = "bolts of all kind"
	wep_swap[190] = sndSwapBow
	wep_rad[190] = 0;

	wep_name[191] = "SUPER AUTO CROSSBOW"
	wep_type[191] = 3
	wep_auto[191] = 1
	wep_load[191] = 18
	wep_cost[191] = 5
	wep_sprt[191] = sprSuperAutoCrossbow
	wep_area[191] = 19
	wep_text[191] = "this is mental!"
	wep_swap[191] = sndSwapBow
	wep_rad[191] = 0;

	wep_name[192] = "TIME BOMB"
	wep_type[192] = 4
	wep_auto[192] = 0
	wep_load[192] = 20
	wep_cost[192] = 1
	wep_sprt[192] = sprTimeLauncher
	wep_area[192] = -1
	wep_text[192] = "feels like it is lagging"
	wep_swap[192] = sndSwapExplosive
	wep_rad[192] = 0;

	wep_name[193] = "ULTRA BLADE GUN"
	wep_type[193] = 3
	wep_auto[193] = 1
	wep_load[193] = 30
	wep_cost[193] = 12//8
	wep_sprt[193] = sprUltraBladeGun
	wep_area[193] = 22
	wep_text[193] = "ultra sharp"
	wep_swap[193] = sndSwapBow
	wep_rad[193] = 20;

	wep_name[194] = "KRAKEN GUN"
	wep_type[194] = 4
	wep_auto[194] = 0
	wep_load[194] = 14//10
	wep_cost[194] = 2
	wep_sprt[194] = sprKrakenGun
	wep_area[194] = 4
	wep_text[194] = "sea monster"
	wep_swap[194] = sndSwapDragon
	wep_rad[194] = 0;

	wep_name[195] = "BIG KRAKEN GUN"
	wep_type[195] = 4
	wep_auto[195] = 0
	wep_load[195] = 21//10
	wep_cost[195] = 2.5
	wep_sprt[195] = sprBigKrakenGun
	wep_area[195] = 6
	wep_text[195] = "hentai gun"
	wep_swap[195] = sndSwapDragon
	wep_rad[195] = 0;

	wep_name[196] = "KRAKEN LAUNCHER"
	wep_type[196] = 4
	wep_auto[196] = 0
	wep_load[196] = 28
	wep_cost[196] = 3
	wep_sprt[196] = sprKrakenLauncher
	wep_area[196] = 11
	wep_text[196] = "release the kraken"
	wep_swap[196] = sndSwapDragon
	wep_rad[196] = 0;

	wep_name[197] = "DOUBLE SUPER PLASMA CANNON"
	wep_type[197] = 5
	wep_auto[197] = 0
	wep_load[197] = 670//350
	wep_cost[197] = 48//24
	wep_sprt[197] = sprDoubleSuperPlasmaCannon
	wep_area[197] = 29
	wep_text[197] = "this will break your game"
	wep_swap[197] = sndSwapEnergy
	wep_rad[197] = 0;

	wep_name[198] = "MORPH HAMMER"
	wep_type[198] = 5
	wep_auto[198] = 0
	wep_load[198] = 24
	wep_cost[198] = 1
	wep_sprt[198] = sprMorphHammer
	wep_area[198] = 10
	wep_text[198] = "peacekeeper"
	wep_swap[198] = sndSwapEnergy
	wep_rad[198] = 0;

	wep_name[199] = "ULTRA SEEKER PISTOL"
	wep_type[199] = 3
	wep_auto[199] = 0
	wep_load[199] = 16
	wep_cost[199] = 2
	wep_sprt[199] = sprUltraSeekerPistol
	wep_area[199] = 19
	wep_text[199] = "ultra seekers can destroy projectiles"
	wep_swap[199] = sndSwapBow
	wep_rad[199] = 19;

	wep_name[200] = "PANDA STICK"
	wep_type[200] = 0
	wep_auto[200] = 0
	wep_load[200] = 10//18 usual new chicken 16
	wep_cost[200] = 0
	wep_sprt[200] = sprStick
	wep_area[200] = -1
	wep_text[200] = "panda does not like using weapons"
	wep_swap[200] = sndSwapHammer
	wep_rad[200] = 0;

	wep_name[201] = "SUPERHOT REVOLVER"
	wep_type[201] = 1
	wep_auto[201] = 0
	wep_load[201] = 10
	wep_cost[201] = 3
	wep_sprt[201] = sprSuperHotRevolver
	wep_area[201] = choose(-2,-1,8,9)
	wep_text[201] = "try standing still with this gun"
	wep_swap[201] = sndSwapSuperHot
	wep_rad[201] = 0;

	wep_name[202] = "SUPERHOT ASSAULT RIFLE"
	wep_type[202] = 1
	wep_auto[202] = 0
	wep_load[202] = 16//10
	wep_cost[202] = 8//6
	wep_sprt[202] = sprSuperHotAssaultRifle
	wep_area[202] = -1;//11//12
	wep_text[202] = "SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!#SUPER! HOT!"
	wep_swap[202] = sndSwapSuperHot
	wep_rad[202] = 0;

	wep_name[203] = "FLAME WAVE GUN"
	wep_type[203] = 2
	wep_auto[203] = 0
	wep_load[203] = 19//17
	wep_cost[203] = 3//2
	wep_sprt[203] = sprFlameWaveGun
	wep_area[203] = 14//12
	wep_text[203] = "stef gun 2.0"
	wep_swap[203] = sndSwapShotgun
	wep_rad[203] = 0;

	wep_name[204] = "SPLINTER SEEKER CROSSBOW"
	wep_type[204] = 3
	wep_auto[204] = 0
	wep_load[204] = 28
	wep_cost[204] = 3
	wep_sprt[204] = sprSplinterSeekerCrossbow
	wep_area[204] = 10
	wep_text[204] = "ultimate hybrid"
	wep_swap[204] = sndSwapBow
	wep_rad[204] = 0;

	wep_name[205] = "PLASMA SHOTGUN"
	wep_type[205] = 5
	wep_auto[205] = 1
	wep_load[205] = 29
	wep_cost[205] = 7
	wep_sprt[205] = sprPlasmaShotGun
	wep_area[205] = 10
	wep_text[205] = ""
	wep_swap[205] = sndSwapEnergy
	wep_rad[205] = 0;

	wep_name[206] = "SMALL MISSILE LAUNCHER"
	wep_type[206] = 4
	wep_auto[206] = 0
	wep_load[206] = 26
	wep_cost[206] = 2
	wep_sprt[206] = sprSmallMissileLauncher
	wep_area[206] = 9
	wep_text[206] = "theres a bigger one"
	wep_swap[206] = sndSwapExplosive
	wep_rad[206] = 0;

	wep_name[207] = "MISSILE LAUNCHER"
	wep_type[207] = 4
	wep_auto[207] = 0
	wep_load[207] = 48
	wep_cost[207] = 4
	wep_sprt[207] = sprMissileLauncher
	wep_area[207] = 11
	wep_text[207] = "you should really try eagle eyes#with this gun"
	wep_swap[207] = sndSwapExplosive
	wep_rad[207] = 0;

	wep_name[208] = "MINI PLASMA SHOTGUN"
	wep_type[208] = 5
	wep_auto[208] = 1
	wep_load[208] = 20
	wep_cost[208] = 4
	wep_sprt[208] = sprMiniPlasmaShotgun
	wep_area[208] = 6
	wep_text[208] = "as requested"
	wep_swap[208] = sndSwapShotgun
	wep_rad[208] = 0;

	wep_name[209] = "MINI PLASMA MINIGUN"
	wep_type[209] = 5
	wep_auto[209] = 1
	wep_load[209] = 3
	wep_cost[209] = 0.5
	wep_sprt[209] = sprMiniPlasmaMinigun
	wep_area[209] = 11
	wep_text[209] = "orbs of death"
	wep_swap[209] = sndSwapEnergy
	wep_rad[209] = 0;

	wep_name[210] = "BIG MISSILE LAUNCHER"
	wep_type[210] = 4
	wep_auto[210] = 0
	wep_load[210] = 50
	wep_cost[210] = 12
	wep_sprt[210] = sprBigMissileLauncher
	wep_area[210] = 14
	wep_text[210] = "R.Y.N.O."
	wep_swap[210] = sndSwapExplosive
	wep_rad[210] = 0;

	wep_name[211] = "MINI PLASMA RIFLE"
	wep_type[211] = 5
	wep_auto[211] = 1
	wep_load[211] = 6
	wep_cost[211] = 1
	wep_sprt[211] = sprMiniPlasmaRifle
	wep_area[211] = 6
	wep_text[211] = "fast bubbles"
	wep_swap[211] = sndSwapEnergy
	wep_rad[211] = 0;

	wep_name[212] = "SUPER ION CANNON"
	wep_type[212] = 5
	wep_auto[212] = 0
	wep_load[212] = 40
	wep_cost[212] = 15
	wep_sprt[212] = sprSuperIonCannon
	wep_area[212] = 16
	wep_text[212] = "raining hell"
	wep_swap[212] = sndSwapEnergy
	wep_rad[212] = 0;

	wep_name[213] = "SUPER NUKE LAUNCHER"
	wep_type[213] = 4
	wep_auto[213] = 0
	wep_load[213] = 90
	wep_cost[213] = 12
	wep_sprt[213] = sprSuperNukeLauncher
	wep_area[213] = 13
	wep_text[213] = "true power"
	wep_swap[213] = sndSwapExplosive
	wep_rad[213] = 0;

	wep_name[214] = "VIKING GREAT AXE"
	wep_type[214] = 0
	wep_auto[214] = 0
	wep_load[214] = 30
	wep_cost[214] = 0
	wep_sprt[214] = sprVikingAxe
	wep_area[214] = -1
	wep_text[214] = "not for woodchopping"
	wep_swap[214] = sndSwapHammer
	wep_rad[214] = 0;

	wep_name[215] = "VIKING AXE"
	wep_type[215] = 0
	wep_auto[215] = 0
	wep_load[215] = 30
	wep_cost[215] = 0
	wep_sprt[215] = sprVikingSmallAxe
	wep_area[215] = -1
	wep_text[215] = "serpent axe"
	wep_swap[215] = sndSwapHammer
	wep_rad[215] = 0;

	wep_name[216] = "GRENADE SHOTGUN"
	wep_type[216] = 4
	wep_auto[216] = 0
	wep_load[216] = 17
	wep_cost[216] = 1
	wep_sprt[216] = sprGrenadeShotgun
	wep_area[216] = 6
	wep_text[216] = "dangerzone"
	wep_swap[216] = sndSwapExplosive
	wep_rad[216] = 0;

	wep_name[217] = "AUTO GRENADE SHOTGUN"
	wep_type[217] = 4
	wep_auto[217] = 1
	wep_load[217] = 9
	wep_cost[217] = 1
	wep_sprt[217] = sprAutoGrenadeShotgun
	wep_area[217] = 12
	wep_text[217] = "rapid fire dangerzone"
	wep_swap[217] = sndSwapExplosive
	wep_rad[217] = 0;

	wep_name[218] = "GRENADE RIFLE"
	wep_type[218] = 4
	wep_auto[218] = 0
	wep_load[218] = 10
	wep_cost[218] = 1
	wep_sprt[218] = sprGrenadeRifle
	wep_area[218] = 9
	wep_text[218] = "most reliable!"
	wep_swap[218] = sndSwapExplosive
	wep_rad[218] = 0;

	wep_name[219] = "HYPER GRENADE RIFLE"
	wep_type[219] = 4
	wep_auto[219] = 0
	wep_load[219] = 5
	wep_cost[219] = 3
	wep_sprt[219] = sprHyperGrenadeRifle
	wep_area[219] = 13
	wep_text[219] = "not the hyper launcher"
	wep_swap[219] = sndSwapExplosive
	wep_rad[219] = 0;

	wep_name[220] = "GHETTO BLASTER"
	wep_type[220] = 5
	wep_auto[220] = 0
	wep_load[220] = 12
	wep_cost[220] = 2
	wep_sprt[220] = sprGhettoBlaster
	wep_area[220] = 12
	wep_text[220] = "BLAST THE SOUND SYSTEMS! WOOOOOOOOOO"
	wep_swap[220] = sndSwapMotorized
	wep_rad[220] = 0;

	wep_name[221] = "DOOM LAUNCHER"
	wep_type[221] = 4
	wep_auto[221] = 0
	wep_load[221] = 20
	wep_cost[221] = 3
	wep_sprt[221] = sprDoomLauncher
	wep_area[221] = 12
	wep_text[221] = "let's launch some doom!"
	wep_swap[221] = sndSwapMotorized
	wep_rad[221] = 0;

	wep_name[222] = "LASER SWORD"
	wep_type[222] = 5
	wep_auto[222] = 0
	wep_load[222] = 14
	wep_cost[222] = 3
	wep_sprt[222] = sprLaserSword
	wep_area[222] = 10
	wep_text[222] = "how does this thing even work?"
	wep_swap[222] = sndSwapEnergy
	wep_rad[222] = 0;

	wep_name[223] = "BULLET SWORD"
	wep_type[223] = 1
	wep_auto[223] = 0
	wep_load[223] = 12
	wep_cost[223] = 5
	wep_sprt[223] = sprBulletSword
	wep_area[223] = 12
	wep_text[223] = "bullet bullet bullet bullet sword sword sword sword"
	wep_swap[223] = sndSwapSword
	wep_rad[223] = 0;

	wep_name[224] = "GOLDEN CAR THROWER"
	wep_type[224] = 4
	wep_auto[224] = 1
	wep_load[224] = 30
	wep_cost[224] = 2.5
	wep_sprt[224] = sprGoldenCarThrower
	wep_area[224] = 20
	wep_text[224] = "golden hand"
	wep_swap[224] = sndSwapMotorized
	wep_rad[224] = 0;

	wep_name[225] = "GOLDEN PLASMA GUN"
	wep_type[225] = 5
	wep_auto[225] = 1
	wep_load[225] = 14
	wep_cost[225] = 2
	wep_sprt[225] = sprGoldenPlasmaGun
	wep_area[225] = 19
	wep_text[225] = "solid gold baby!"
	wep_swap[225] = sndSwapEnergy
	wep_rad[225] = 0;

	wep_name[226] = "GOLDEN SLUGGER"
	wep_type[226] = 2
	wep_auto[226] = 0
	wep_load[226] = 21
	wep_cost[226] = 1
	wep_sprt[226] = sprGoldenSlugger
	wep_area[226] = 19
	wep_text[226] = "blast of gold"
	wep_swap[226] = sndSwapShotgun
	wep_rad[226] = 0;

	wep_name[227] = "GOLDEN ASSAULT RIFLE"
	wep_type[227] = 1
	wep_auto[227] = 0
	wep_load[227] = 9
	wep_cost[227] = 3
	wep_sprt[227] = sprGoldenARifle
	wep_area[227] = 19
	wep_text[227] = "burst of gold"
	wep_swap[227] = sndSwapMachinegun
	wep_rad[227] = 0;

	wep_name[228] = "GOLDEN SPLINTER GUN"
	wep_type[228] = 3
	wep_auto[228] = 0
	wep_load[228] = 17
	wep_cost[228] = 1
	wep_sprt[228] = sprGoldenSplinterGun
	wep_area[228] = 19
	wep_text[228] = "shiny splinters"
	wep_swap[228] = sndSwapBow
	wep_rad[228] = 0;

	wep_name[229] = "GOLDEN BAZOOKA"
	wep_type[229] = 4
	wep_auto[229] = 0
	wep_load[229] = 26
	wep_cost[229] = 1
	wep_sprt[229] = sprGoldenBazooka
	wep_area[229] = 19
	wep_text[229] = "GOLDEN ROCKETS"
	wep_swap[229] = sndSwapExplosive
	wep_rad[229] = 0;

	wep_name[230] = "GOLDEN SCREWDRIVER"
	wep_type[230] = 0
	wep_auto[230] = 0
	wep_load[230] = 9//11
	wep_cost[230] = 0
	wep_sprt[230] = sprGoldenScrewdriver
	wep_area[230] = 19
	wep_text[230] = "expensive fixing"
	wep_swap[230] = sndSwapSword
	wep_rad[230] = 0;

	wep_name[231] = "GUITAR"
	wep_type[231] = 0
	wep_auto[231] = 0
	wep_load[231] = 19
	wep_cost[231] = 0
	wep_sprt[231] = sprGuitar
	wep_area[231] = -1
	wep_text[231] = "good music"
	wep_swap[231] = sndSwapGuitar
	wep_rad[231] = 0;

	wep_name[232] = "HEAVY CROSSBOW"
	wep_type[232] = 3
	wep_auto[232] = 0
	wep_load[232] = 45
	wep_cost[232] = 2
	wep_sprt[232] = sprHeavyCrossbow
	wep_area[232] = 4
	wep_text[232] = "sometimes in life, we don't have access to all of our braincells"
	wep_swap[232] = sndSwapBow
	wep_rad[232] = 0;

	wep_name[233] = "BLADE GUN"
	wep_type[233] = 3
	wep_auto[233] = 1
	wep_load[233] = 12
	wep_cost[233] = 1
	wep_sprt[233] = sprBladeGun
	wep_area[233] = 5
	wep_text[233] = "blades don't hurt you"
	wep_swap[233] = sndSwapBow
	wep_rad[233] = 0;

	wep_name[234] = "HEAVY AUTO CROSSBOW"
	wep_type[234] = 3
	wep_auto[234] = 1
	wep_load[234] = 15
	wep_cost[234] = 2
	wep_sprt[234] = sprHeavyAutoCrossbow
	wep_area[234] = 15
	wep_text[234] = "this one works well with bolt marrow!"
	wep_swap[234] = sndSwapBow
	wep_rad[234] = 0;

	wep_name[235] = "SUPER HEAVY CROSSBOW"
	wep_type[235] = 3
	wep_auto[235] = 0
	wep_load[235] = 62//34
	wep_cost[235] = 9
	wep_sprt[235] = sprSuperHeavyCrossbow
	wep_area[235] = 20
	wep_text[235] = "5 heavy bolts per shot"
	wep_swap[235] = sndSwapBow
	wep_rad[235] = 0;

	wep_name[236] = "SUPER HEAVY AUTO CROSSBOW"
	wep_type[236] = 3
	wep_auto[236] = 1
	wep_load[236] = 26
	wep_cost[236] = 10
	wep_sprt[236] = sprSuperHeavyAutoCrossbow
	wep_area[236] = 28//thats the last weapon LABS LOOP
	wep_text[236] = "this is just ridiculous!"
	wep_swap[236] = sndSwapBow
	wep_rad[236] = 0;

	wep_name[237] = "SPIRAL SLASH DIRECTOR SHOTGUN"
	wep_type[237] = 2
	wep_auto[237] = 0
	wep_load[237] = 38
	wep_cost[237] = 4
	wep_sprt[237] = sprSpiralSlashDirectorShotgun
	wep_area[237] = 9
	wep_text[237] = "click click click"
	wep_swap[237] = sndSwapShotgun
	wep_rad[237] = 0;

	wep_name[238] = "SPLIT BLADE GUN"
	wep_type[238] = 3
	wep_auto[238] = 1
	wep_load[238] = 8
	wep_cost[238] = 2
	wep_sprt[238] = sprSplitBladeGun
	wep_area[238] = 11
	wep_text[238] = "the blades split..."
	wep_swap[238] = sndSwapBow
	wep_rad[238] = 0;

	wep_name[239] = "ROCKET GLOVE"
	wep_type[239] = 4
	wep_auto[239] = 0
	wep_load[239] = 23
	wep_cost[239] = 1
	wep_sprt[239] = sprRocketGlove
	wep_area[239] = 12
	wep_text[239] = "ROCKET PWUNCH!"
	wep_swap[239] = sndSwapHammer
	wep_rad[239] = 0;

	wep_name[240] = "SWARM GUN"
	wep_type[240] = 3
	wep_auto[240] = 1
	wep_load[240] = 6
	wep_cost[240] = 1
	wep_sprt[240] = sprSwarmGun
	wep_area[240] = 13
	wep_text[240] = "beeeeeeeeeees!!!"
	wep_swap[240] = sndSwapBow
	wep_rad[240] = 0;

	wep_name[241] = "INFINITY SLUGGER"
	wep_type[241] = 2
	wep_auto[241] = 0
	wep_load[241] = 21//22
	wep_cost[241] = 0
	wep_sprt[241] = sprInfinitySlugger
	wep_area[241] = 14
	wep_text[241] = "8"
	wep_swap[241] = sndSwapShotgun
	wep_rad[241] = 0;

	wep_name[242] = "INFINITY LASER PISTOL"
	wep_type[242] = 5
	wep_auto[242] = 0
	wep_load[242] = 9//10
	wep_cost[242] = 0
	wep_sprt[242] = sprInfinityLaserGun
	wep_area[242] = 14
	wep_text[242] = "boundlessness"
	wep_swap[242] = sndSwapEnergy
	wep_rad[242] = 0;

	wep_name[243] = "SWARM SHOTGUN"
	wep_type[243] = 3
	wep_auto[243] = 0
	wep_load[243] = 22
	wep_cost[243] = 4
	wep_sprt[243] = sprSwarmShotgun
	wep_area[243] = 12
	wep_text[243] = "honeybee"
	wep_swap[243] = sndSwapBow
	wep_rad[243] = 0;

	wep_name[244] = "ULTRA SUPER LASER PISTOL"
	wep_type[244] = 5
	wep_auto[244] = 0
	wep_load[244] = 50
	wep_cost[244] = 10
	wep_sprt[244] = sprSuperUltraMegaLaserPistol
	wep_area[244] = 26
	wep_text[244] = "the tam gun"
	wep_swap[244] = sndSwapEnergy
	wep_rad[244] = 24;

	wep_name[245] = "LIGHTNING MINIGUN"
	wep_type[245] = 5
	wep_auto[245] = 1
	wep_load[245] = 3
	wep_cost[245] = 1.5
	wep_sprt[245] = sprLightningMinigun
	wep_area[245] = 17
	wep_text[245] = "lightning doesn't hit#the same place twice"
	wep_swap[245] = sndSwapEnergy
	wep_rad[245] = 0;

	wep_name[246] = "SUPER SPLIT BLADE GUN"
	wep_type[246] = 3
	wep_auto[246] = 1
	wep_load[246] = 12
	wep_cost[246] = 5//4
	wep_sprt[246] = sprSuperSplitBladeGun
	wep_area[246] = 17
	wep_text[246] = "very sharp"
	wep_swap[246] = sndSwapBow
	wep_rad[246] = 0;

	wep_name[247] = "BOMB LAUNCHER"
	wep_type[247] = 4
	wep_auto[247] = 0
	wep_load[247] = 20
	wep_cost[247] = 2
	wep_sprt[247] = sprBombLauncher
	wep_area[247] = 5
	wep_text[247] = "bomberman"
	wep_swap[247] = sndSwapExplosive
	wep_rad[247] = 0;

	wep_name[248] = "ULTRA POP GUN"
	wep_type[248] = 1
	wep_auto[248] = 1
	wep_load[248] = 2
	wep_cost[248] = 1
	wep_sprt[248] = sprUltraPopGun
	wep_area[248] = 18
	wep_text[248] = "hey friend"
	wep_swap[248] = sndSwapMachinegun
	wep_rad[248] = 2;

	wep_name[249] = "HEAVY SLUGGER"
	wep_type[249] = 2
	wep_auto[249] = 0
	wep_load[249] = 10
	wep_cost[249] = 2
	wep_sprt[249] = sprHeavySlugger
	wep_area[249] = 9
	wep_text[249] = "such weight"
	wep_swap[249] = sndSwapShotgun
	wep_rad[249] = 0;

	wep_name[250] = "AUTO EXPLOSIVE CROSSBOW"
	wep_type[250] = 3
	wep_auto[250] = 1
	wep_load[250] = 11
	wep_cost[250] = 2
	wep_sprt[250] = sprAutoExploBow
	wep_area[250] = 9
	wep_text[250] = ""
	wep_swap[250] = sndSwapBow
	wep_rad[250] = 0;

	wep_name[251] = "YOYO GUN"
	wep_type[251] = 3
	wep_auto[251] = 1
	wep_load[251] = 18
	wep_cost[251] = 2
	wep_sprt[251] = sprYoyoGun
	wep_area[251] = 3
	wep_text[251] = "away! and return!"
	wep_swap[251] = sndSwapBow
	wep_rad[251] = 0;

	wep_name[252] = "SUPER YOYO GUN"
	wep_type[252] = 3
	wep_auto[252] = 1
	wep_load[252] = 12
	wep_cost[252] = 6
	wep_sprt[252] = sprSuperYoyoGun
	wep_area[252] = 7
	wep_text[252] = "cutting edge technology"
	wep_swap[252] = sndSwapBow
	wep_rad[252] = 0;

	wep_name[253] = "SHANK GUN"
	wep_type[253] = 3
	wep_auto[253] = 1
	wep_load[253] = 12
	wep_cost[253] = 2
	wep_sprt[253] = sprShankGun
	wep_area[253] = 8
	wep_text[253] = "long arms, bolt marrow and shotgun shoulders#all work on this gun"
	wep_swap[253] = sndSwapSword
	wep_rad[253] = 0;

	wep_name[254] = "SUPER SHANK GUN"
	wep_type[254] = 3
	wep_auto[254] = 1
	wep_load[254] = 35
	wep_cost[254] = 7
	wep_sprt[254] = sprSuperShankGun
	wep_area[254] = 17
	wep_text[254] = "shank them to dead"
	wep_swap[254] = sndSwapSword
	wep_rad[254] = 0;

	wep_name[255] = "ENERGY SHANK GUN"
	wep_type[255] = 5
	wep_auto[255] = 1
	wep_load[255] = 25
	wep_cost[255] = 3
	wep_sprt[255] = sprEnergyShankGun
	wep_area[255] = 15
	wep_text[255] = "works with all weapon specific mutations"
	wep_swap[255] = sndSwapEnergy
	wep_rad[255] = 0;

	wep_name[256] = "SUPER ENERGY SHANK GUN"
	wep_type[256] = 5
	wep_auto[256] = 1
	wep_load[256] = 50
	wep_cost[256] = 14
	wep_sprt[256] = sprSuperEnergyShankGun
	wep_area[256] = 21
	wep_text[256] = "new meta"
	wep_swap[256] = sndSwapEnergy
	wep_rad[256] = 0;

	wep_name[257] = "LIGHTNING CROSSBOW"
	wep_type[257] = 3
	wep_auto[257] = 1
	wep_load[257] = 24
	wep_cost[257] = 1.5
	wep_sprt[257] = sprLightningCrossbow
	wep_area[257] = 5
	wep_text[257] = "lightning jolt!"
	wep_swap[257] = sndSwapBow
	wep_rad[257] = 0;

	wep_name[258] = "SHOTGUN RIFLE"
	wep_type[258] = 2
	wep_auto[258] = 0
	wep_load[258] = 17
	wep_cost[258] = 1
	wep_sprt[258] = sprShotgunRifle1
	wep_area[258] = 3
	wep_text[258] = "true hybrid gun"
	wep_swap[258] = sndSwapShotgun
	wep_rad[258] = 0;

	wep_name[259] = "BULLET POPPER"
	wep_type[259] = 1
	wep_auto[259] = 1
	wep_load[259] = 4
	wep_cost[259] = 1
	wep_sprt[259] = sprBulletPopper1
	wep_area[259] = 2
	wep_text[259] = "make a decision, gun!"
	wep_swap[259] = sndSwapMachinegun
	wep_rad[259] = 0;

	wep_name[260] = "HYPER HEAVY SLUGGER"
	wep_type[260] = 2
	wep_auto[260] = 0
	wep_load[260] = 14
	wep_cost[260] = 3
	wep_sprt[260] = sprHyperHeavySlugger
	wep_area[260] = 18
	wep_text[260] = "heavy slugger with infinite range!"
	wep_swap[260] = sndSwapShotgun
	wep_rad[260] = 0;

	wep_name[261] = "HYPER MACHINEGUN"
	wep_type[261] = 1
	wep_auto[261] = 1
	wep_load[261] = 5
	wep_cost[261] = 3
	wep_sprt[261] = sprHyperMachinegun
	wep_area[261] = 15
	wep_text[261] = "hyper machinegun shoots through walls"
	wep_swap[261] = sndSwapShotgun
	wep_rad[261] = 0;

	wep_name[262] = "SPIRAL YOYO GUN"
	wep_type[262] = 3
	wep_auto[262] = 1
	wep_load[262] = 12
	wep_cost[262] = 6
	wep_sprt[262] = sprSpiralYoyoGun
	wep_area[262] = 6
	wep_text[262] = "this looks stupid"
	wep_swap[262] = sndSwapBow
	wep_rad[262] = 0;

	wep_name[263] = "ELECTRIC GUITAR"
	wep_type[263] = 0
	wep_auto[263] = 0
	wep_load[263] = 15
	wep_cost[263] = 0
	wep_sprt[263] = sprElectricGuitar
	wep_area[263] = -1
	wep_text[263] = "let's rock"
	wep_swap[263] = sndSwapGuitar
	wep_rad[263] = 0;

	wep_name[264] = "BROKEN STER GUN"
	wep_type[264] = 4
	wep_auto[264] = 0
	wep_load[264] = 300
	wep_cost[264] = 30
	wep_sprt[264] = sprBrokenSterGun
	wep_area[264] = -1
	wep_text[264] = "you broke the game"
	wep_swap[264] = sndSwapExplosive
	wep_rad[264] = 0;

	wep_name[265] = "HEAVY MINIGUN"
	wep_type[265] = 1
	wep_auto[265] = 1
	wep_load[265] = 1
	wep_cost[265] = 2
	wep_sprt[265] = sprHeavyMinigun
	wep_area[265] = 16
	wep_text[265] = "AAW YEA SON DAT SHI DOPE"
	wep_swap[265] = sndSwapMachinegun
	wep_rad[265] = 0;

	wep_name[266] = "HEAVY DOUBLE MINIGUN"
	wep_type[266] = 1
	wep_auto[266] = 1
	wep_load[266] = 1
	wep_cost[266] = 3
	wep_sprt[266] = sprHeavyDoubleMinigun
	wep_area[266] = 21
	wep_text[266] = "to those who can't hear me I say"
	wep_swap[266] = sndSwapMachinegun
	wep_rad[266] = 0;

	wep_name[267] = "FAT REVOLVER"
	wep_type[267] = 1
	wep_auto[267] = 0
	wep_load[267] = 5
	wep_cost[267] = 4
	wep_sprt[267] = sprFatRevolver
	wep_area[267] = 15
	wep_text[267] = "CHUBBY GUN"
	wep_swap[267] = sndSwapPistol
	wep_rad[267] = 0;

	wep_name[268] = "FAT MACHINEGUN"
	wep_type[268] = 1
	wep_auto[268] = 1
	wep_load[268] = 5
	wep_cost[268] = 5
	wep_sprt[268] = sprFatMachinegun
	wep_area[268] = 16
	wep_text[268] = "BIG AND FAT"
	wep_swap[268] = sndSwapMachinegun
	wep_rad[268] = 0;

	wep_name[269] = "BOUNCER LASER PISTOL"
	wep_type[269] = 5
	wep_auto[269] = 0
	wep_load[269] = 11
	wep_cost[269] = 1
	wep_sprt[269] = sprBouncerLaserGun
	wep_area[269] = 9
	wep_text[269] = "unpredictable"
	wep_swap[269] = sndSwapEnergy
	wep_rad[269] = 0;

	wep_name[270] = "BOUNCER LASER RIFLE"
	wep_type[270] = 5
	wep_auto[270] = 1
	wep_load[270] = 8
	wep_cost[270] = 1
	wep_sprt[270] = sprBouncerLaserRifle
	wep_area[270] = 12
	wep_text[270] = "all over the place"
	wep_swap[270] = sndSwapEnergy
	wep_rad[270] = 0;

	wep_name[271] = "FAT SMG"
	wep_type[271] = 1
	wep_auto[271] = 1
	wep_load[271] = 4
	wep_cost[271] = 4
	wep_sprt[271] = sprFatSmg
	wep_area[271] = 20
	wep_text[271] = "DEEP PENETRATION"
	wep_swap[271] = sndSwapPistol
	wep_rad[271] = 0;

	wep_name[272] = "GHOST BLADE"
	wep_type[272] = 0
	wep_auto[272] = 0
	wep_load[272] = 26
	wep_cost[272] = 0
	wep_sprt[272] = sprGhostBlade
	wep_area[272] = 16
	wep_text[272] = "spooky"
	wep_swap[272] = sndSwapSword
	wep_rad[272] = 0;

	wep_name[273] = "GYRO BURSTER"
	wep_type[273] = 1
	wep_auto[273] = 0
	wep_load[273] = 55
	wep_cost[273] = 30
	wep_sprt[273] = sprGyroBurster
	wep_area[273] = 18
	wep_text[273] = "bwbwpebffpwefnowobfo"
	wep_swap[273] = sndSwapPistol
	wep_rad[273] = 0;

	wep_name[274] = "INFUSER"
	wep_type[274] = 3
	wep_auto[274] = 0
	wep_load[274] = 19
	wep_cost[274] = 1
	wep_sprt[274] = sprNewInfuser
	wep_area[274] = 5
	wep_text[274] = "sucks out the blood"
	wep_swap[274] = sndSwapBow
	wep_rad[274] = 0;

	wep_name[275] = "GHOST SHOVEL"
	wep_type[275] = 0
	wep_auto[275] = 0
	wep_load[275] = 38
	wep_cost[275] = 0
	wep_sprt[275] = sprGhostShovel
	wep_area[275] = 18
	wep_text[275] = "digging up graves"
	wep_swap[275] = sndSwapHammer
	wep_rad[275] = 0;

	wep_name[276] = "GOLDEN FLAMETHROWER"
	wep_type[276] = 4
	wep_auto[276] = 1
	wep_load[276] = 8
	wep_cost[276] = 1
	wep_sprt[276] = sprGoldenFlameThrower
	wep_area[276] = 18
	wep_text[276] = "shiny flames"
	wep_swap[276] = sndSwapFlame
	wep_rad[276] = 0;

	wep_name[277] = "GOLDEN SLEDGEHAMMER"
	wep_type[277] = 0
	wep_auto[277] = 0
	wep_load[277] = 32
	wep_cost[277] = 0
	wep_sprt[277] = sprGoldHammer
	wep_area[277] = 20
	wep_text[277] = "hammer time"
	wep_swap[277] = sndSwapHammer
	wep_rad[277] = 0;

	wep_name[278] = "GOLDEN SHOVEL"
	wep_type[278] = 0
	wep_auto[278] = 0
	wep_load[278] = 32
	wep_cost[278] = 0
	wep_sprt[278] = sprGoldenShovel
	wep_area[278] = 20
	wep_text[278] = "gold digger"
	wep_swap[278] = sndSwapHammer
	wep_rad[278] = 0;

	wep_name[279] = "GOLDEN EXPLOSIVE CROSSBOW"
	wep_type[279] = 3
	wep_auto[279] = 0
	wep_load[279] = 23
	wep_cost[279] = 2
	wep_sprt[279] = sprGoldenExplosiveBow
	wep_area[279] = 20
	wep_text[279] = "golden explosives"
	wep_swap[279] = sndSwapBow
	wep_rad[279] = 0;

	wep_name[280] = "GOLDEN ASSAULT PISTOL"
	wep_type[280] = 1
	wep_auto[280] = 0
	wep_load[280] = 7
	wep_cost[280] = 2
	wep_sprt[280] = sprGoldenAPistol
	wep_area[280] = 18
	wep_text[280] = "red velvet cake"
	wep_swap[280] = sndSwapMachinegun
	wep_rad[280] = 0;

	wep_name[281] = "GOLDEN SHORTGUN"
	wep_type[281] = 2
	wep_auto[281] = 0
	wep_load[281] = 13
	wep_cost[281] = 2
	wep_sprt[281] = sprGoldenShortgun
	wep_area[281] = 17
	wep_text[281] = "no golden sex jokes"
	wep_swap[281] = sndSwapShotgun
	wep_rad[281] = 0;

	wep_name[282] = "GOLDEN BULLET SHOTGUN"
	wep_type[282] = 1
	wep_auto[282] = 0
	wep_load[282] = 19
	wep_cost[282] = 6
	wep_sprt[282] = sprGoldenBulletShotgun
	wep_area[282] = 20
	wep_text[282] = "maroon fiber"
	wep_swap[282] = sndSwapShotgun
	wep_rad[282] = 0;

	wep_name[283] = "REMOVED GOLDEN PISTOLE"
	wep_type[283] = 2
	wep_auto[283] = 0
	wep_load[283] = 26
	wep_cost[283] = 2
	wep_sprt[283] = sprGoldenPistole
	wep_area[283] = -1
	wep_text[283] = "pistole is not a typo"
	wep_swap[283] = sndSwapPistol
	wep_rad[283] = 0;

	wep_name[284] = "GOLDEN POP GUN"
	wep_type[284] = 1
	wep_auto[284] = 1
	wep_load[284] = 2
	wep_cost[284] = 1
	wep_sprt[284] = sprGoldenPopGun
	wep_area[284] = 17
	wep_text[284] = "more range"
	wep_swap[284] = sndSwapMachinegun
	wep_rad[284] = 0;

	wep_name[285] = "GOLDEN POP RIFLE"
	wep_type[285] = 1
	wep_auto[285] = 1
	wep_load[285] = 7
	wep_cost[285] = 2
	wep_sprt[285] = sprGoldenPopRifle
	wep_area[285] = 17
	wep_text[285] = "gold infused pellets"
	wep_swap[285] = sndSwapMachinegun
	wep_rad[285] = 0;

	wep_name[286] = "GOLDEN GLOVE"
	wep_type[286] = 4
	wep_auto[286] = 0
	wep_load[286] = 22
	wep_cost[286] = 1
	wep_sprt[286] = sprGoldenGlove
	wep_area[286] = 18
	wep_text[286] = "gold touch of death"
	wep_swap[286] = sndSwapHammer
	wep_rad[286] = 0;

	wep_name[287] = "GOLDEN FLARE GUN"
	wep_type[287] = 4
	wep_auto[287] = 0
	wep_load[287] = 24
	wep_cost[287] = 1
	wep_sprt[287] = sprGoldenFlareGun
	wep_area[287] = 18
	wep_text[287] = "thats a fancy signal"
	wep_swap[287] = sndSwapFlame
	wep_rad[287] = 0;

	wep_name[288] = "GOLDEN SMG"
	wep_type[288] = 1
	wep_auto[288] = 1
	wep_load[288] = 2.75
	wep_cost[288] = 1
	wep_sprt[288] = sprGoldenSmg
	wep_area[288] = 18
	wep_text[288] = "gold infused bullets"
	wep_swap[288] = sndSwapPistol
	wep_rad[288] = 0;

	wep_name[289] = "ULTRA SLUGGER"
	wep_type[289] = 2
	wep_auto[289] = 0
	wep_load[289] = 17//22
	wep_cost[289] = 2
	wep_sprt[289] = sprUltraSlugger
	wep_area[289] = 25
	wep_text[289] = "biological slugs"
	wep_swap[289] = sndSwapShotgun
	wep_rad[289] = 12;

	wep_name[290] = "GOLDEN BOUNCER SMG"
	wep_type[290] = 1
	wep_auto[290] = 1
	wep_load[290] = 3
	wep_cost[290] = 1.5
	wep_sprt[290] = sprGoldenBouncerSMG
	wep_area[290] = 18
	wep_text[290] = "fast bouncing"
	wep_swap[290] = sndSwapPistol
	wep_rad[290] = 0;

	wep_name[291] = "ENERGY GLOVE"
	wep_type[291] = 5
	wep_auto[291] = 0
	wep_load[291] = 26
	wep_cost[291] = 3
	wep_sprt[291] = sprEnergyGlove
	wep_area[291] = 9
	wep_text[291] = "batteries inlcuded"
	wep_swap[291] = sndSwapHammer
	wep_rad[291] = 0;

	wep_name[292] = "SEEKER WAVE GUN"
	wep_type[292] = 3
	wep_auto[292] = 0
	wep_load[292] = 60
	wep_cost[292] = 12
	wep_sprt[292] = sprSeekerWaveGun
	wep_area[292] = 15
	wep_text[292] = "spray and pray"
	wep_swap[292] = sndSwapBow
	wep_rad[292] = 0;

	wep_name[293] = "SUPER DIRECTOR SLUGGER"
	wep_type[293] = 2
	wep_auto[293] = 0
	wep_load[293] = 40
	wep_cost[293] = 5
	wep_sprt[293] = sprSuperDirectorSlugger
	wep_area[293] = 10
	wep_text[293] = "focus all force#onto one point"
	wep_swap[293] = sndSwapShotgun
	wep_rad[293] = 0;

	wep_name[294] = "CHARGE SHOTGUN"
	wep_type[294] = 2
	wep_auto[294] = 0
	wep_load[294] = 28
	wep_cost[294] = 1
	wep_sprt[294] = sprChargeShotgun
	wep_area[294] = 3
	wep_text[294] = "get a load of this"
	wep_swap[294] = sndSwapShotgun
	wep_rad[294] = 0;

	wep_name[295] = "CHARGE LASER"
	wep_type[295] = 5
	wep_auto[295] = 0
	wep_load[295] = 28
	wep_cost[295] = 1
	wep_sprt[295] = sprChargeLaserGun
	wep_area[295] = 3
	wep_text[295] = "wind it up"
	wep_swap[295] = sndSwapEnergy
	wep_rad[295] = 0;

	wep_name[296] = "CHARGE FLAK CANNON"
	wep_type[296] = 2
	wep_auto[296] = 0
	wep_load[296] = 40
	wep_cost[296] = 1
	wep_sprt[296] = sprChargeFlakCannon
	wep_area[296] = 7
	wep_text[296] = "more pellets"
	wep_swap[296] = sndSwapExplosive
	wep_rad[296] = 0;

	wep_name[297] = "ULTRA FLAK CANNON"
	wep_type[297] = 2
	wep_auto[297] = 0
	wep_load[297] = 24
	wep_cost[297] = 3.5
	wep_sprt[297] = sprUltraFlakCannon
	wep_area[297] = 21
	wep_text[297] = "green ball of green pellets"
	wep_swap[297] = sndSwapExplosive
	wep_rad[297] = 19;//14ultrashotgun

	wep_name[298] = "GOLDEN OOPS GUN"
	wep_type[298] = 1
	wep_auto[298] = 0
	wep_load[298] = 7
	wep_cost[298] = 1
	wep_sprt[298] = sprGoldenOopsGun
	wep_area[298] = -1
	wep_text[298] = "you are not supposed to live"
	wep_swap[298] = sndSwapPistol
	wep_rad[298] = 0;

	wep_name[299] = "ULTRA WAVE GUN"
	wep_type[299] = 2
	wep_auto[299] = 0
	wep_load[299] = 15
	wep_cost[299] = 3
	wep_sprt[299] = sprUltraWaveGun
	wep_area[299] = 20
	wep_text[299] = "ultra wave fun"
	wep_swap[299] = sndSwapShotgun
	wep_rad[299] = 16;

	wep_name[300] = "LASER WAVE GUN"
	wep_type[300] = 5
	wep_auto[300] = 1
	wep_load[300] = 21
	wep_cost[300] = 5
	wep_sprt[300] = sprLaserWaveGun
	wep_area[300] = 14
	wep_text[300] = "hands in de aihr"
	wep_swap[300] = sndSwapEnergy
	wep_rad[300] = 0;

	wep_name[301] = "ULTRA GLOVE"
	wep_type[301] = 4
	wep_auto[301] = 0
	wep_load[301] = 14
	wep_cost[301] = 1
	wep_sprt[301] = sprUltraGlove
	wep_area[301] = 19
	wep_text[301] = "ultra fingers"
	wep_swap[301] = sndSwapHammer
	wep_rad[301] = 12;//ultra shovel 14

	wep_name[302] = "ULTRA SPLINTER GUN"
	wep_type[302] = 3
	wep_auto[302] = 0
	wep_load[302] = 18
	wep_cost[302] = 1
	wep_sprt[302] = sprUltraSplinterGun
	wep_area[302] = 20
	wep_text[302] = "dodge this"
	wep_swap[302] = sndSwapBow
	wep_rad[302] = 12;//crossbow 12

	wep_name[303] = "ULTRA SUPER CROSSBOW"
	wep_type[303] = 3
	wep_auto[303] = 0
	wep_load[303] = 24
	wep_cost[303] = 5
	wep_sprt[303] = sprUltraSuperCrossbow
	wep_area[303] = 23
	wep_text[303] = "this will waste your rads"
	wep_swap[303] = sndSwapBow
	wep_rad[303] = 48;//ultra bo

	wep_name[304] = "ULTRA INFUSER"
	wep_type[304] = 3
	wep_auto[304] = 0
	wep_load[304] = 16
	wep_cost[304] = 1
	wep_sprt[304] = sprNewUltraInfuser
	wep_area[304] = 20
	wep_text[304] = "sucks out the rads"
	wep_swap[304] = sndSwapBow
	wep_rad[304] = 15;

	wep_name[305] = "FROST BLOWER"
	wep_type[305] = 4
	wep_auto[305] = 1
	wep_load[305] = 4
	wep_cost[305] = 1
	wep_sprt[305] = sprSnowBlower
	wep_area[305] = 10
	wep_text[305] = "burn burn burn"
	wep_swap[305] = sndSwapFlame
	wep_rad[305] = 0;

	wep_name[306] = "BULLET DISPERSE GUN"
	wep_type[306] = 1
	wep_auto[306] = 1
	wep_load[306] = 14
	wep_cost[306] = 6
	wep_sprt[306] = sprBulletDisperseGun
	wep_area[306] = 11
	wep_text[306] = "no sense was made"
	wep_swap[306] = sndSwapPistol
	wep_rad[306] = 0;

	wep_name[307] = "FROST FLARE GUN"
	wep_type[307] = 4
	wep_auto[307] = 0
	wep_load[307] = 26
	wep_cost[307] = 1
	wep_sprt[307] = sprFrostFlareGun
	wep_area[307] = 8
	wep_text[307] = "signal for yeti"
	wep_swap[307] = sndSwapFlame
	wep_rad[307] = 0;

	wep_name[308] = "BULLET DISPERSE MACHINEGUN"
	wep_type[308] = 1
	wep_auto[308] = 1
	wep_load[308] = 11
	wep_cost[308] = 18
	wep_sprt[308] = sprBulletDisperseMachinegun
	wep_area[308] = 18
	wep_text[308] = "rapid fire goodness"
	wep_swap[308] = sndSwapPistol
	wep_rad[308] = 0;

	wep_name[309] = "POP DISPERSE GUN"
	wep_type[309] = 1
	wep_auto[309] = 1
	wep_load[309] = 14
	wep_cost[309] = 6
	wep_sprt[309] = sprPopDisperseGun
	wep_area[309] = 14
	wep_text[309] = "no sense was made"
	wep_swap[309] = sndSwapShotgun
	wep_rad[309] = 0;

	wep_name[310] = "LASER DISPERSE GUN"
	wep_type[310] = 5
	wep_auto[310] = 1
	wep_load[310] = 10
	wep_cost[310] = 5
	wep_sprt[310] = sprLaserDisperseGun
	wep_area[310] = 15
	wep_text[310] = "no sense was made"
	wep_swap[310] = sndSwapEnergy
	wep_rad[310] = 0;

	wep_name[311] = "POTATO CANNON"
	wep_type[311] = 5
	wep_auto[311] = 1
	wep_load[311] = 4
	wep_cost[311] = 1
	wep_sprt[311] = sprPotatoCannon
	wep_area[311] = -1
	wep_text[311] = "look mummy its me"
	wep_swap[311] = sndSwapMotorized
	wep_rad[311] = 0;

	wep_name[312] = "ROGUE RIFLE"
	wep_type[312] = 1
	wep_auto[312] = 0
	wep_load[312] = 6
	wep_cost[312] = 2
	wep_sprt[312] = sprRogueRifle
	wep_area[312] = -1
	wep_text[312] = "popo nono"
	wep_swap[312] = sndSwapMachinegun
	wep_rad[312] = 0;

	wep_name[313] = "HYPER INFUSER"
	wep_type[313] = 3
	wep_auto[313] = 1
	wep_load[313] = 4
	wep_cost[313] = 2
	wep_sprt[313] = sprHyperInfuser
	wep_area[313] = 18
	wep_text[313] = "shoot through walls"
	wep_swap[313] = sndSwapShotgun
	wep_rad[313] = 0;

	wep_name[314] = "CHARGE SPLINTERGUN"
	wep_type[314] = 3
	wep_auto[314] = 0
	wep_load[314] = 25
	wep_cost[314] = 1
	wep_sprt[314] = sprChargeSplinterGun
	wep_area[314] = 9
	wep_text[314] = "hold and hold longer"
	wep_swap[314] = sndSwapShotgun
	wep_rad[314] = 0;

	wep_name[315] = "MONEY GUN"
	wep_type[315] = 1
	wep_auto[315] = 1
	wep_load[315] = 1
	wep_cost[315] = 1
	wep_sprt[315] = sprMoneyGun
	wep_area[315] = -1
	wep_text[315] = "phat stax"
	wep_swap[315] = sndSwapPistol
	wep_rad[315] = 0;

	wep_name[316] = "HUNTER HEAVY SNIPER"
	wep_type[316] = 1
	wep_auto[316] = 1
	wep_load[316] = 11
	wep_cost[316] = 7
	wep_sprt[316] = sprHeavySniper
	wep_area[316] = -1
	wep_text[316] = "efficiency is on par"
	wep_swap[316] = sndSwapPistol
	wep_rad[316] = 0;

	wep_name[317] = "AUTO TOXIC CROSSBOW"
	wep_type[317] = 3
	wep_auto[317] = 1
	wep_load[317] = 9
	wep_cost[317] = 1
	wep_sprt[317] = sprAutoToxicBow
	wep_area[317] = 7
	wep_text[317] = "so many farts"
	wep_swap[317] = sndSwapBow
	wep_rad[317] = 0;

	wep_name[318] = "SUPER TOXIC CROSSBOW"
	wep_type[318] = 3
	wep_auto[318] = 0
	wep_load[318] = 34
	wep_cost[318] = 5
	wep_sprt[318] = sprSuperToxicBow
	wep_area[318] = 7
	wep_text[318] = "diarrhea"
	wep_swap[318] = sndSwapBow
	wep_rad[318] = 0;

	wep_name[319] = "TOXIC ION CANNON"
	wep_type[319] = 4
	wep_auto[319] = 1
	wep_load[319] = 16
	wep_cost[319] = 2
	wep_sprt[319] = sprToxicIonCannon
	wep_area[319] = 6
	wep_text[319] = "shit from above"
	wep_swap[319] = sndSwapExplosive
	wep_rad[319] = 0;

	wep_name[320] = "DISPERSE BAZOOKA"
	wep_type[320] = 4
	wep_auto[320] = 1
	wep_load[320] = 30
	wep_cost[320] = 12
	wep_sprt[320] = sprDisperseBazooka
	wep_area[320] = 20
	wep_text[320] = "medicinal herb gun"
	wep_swap[320] = sndSwapExplosive
	wep_rad[320] = 0;

	wep_name[321] = "LIGHTNING SCREWDRIVER"
	wep_type[321] = 0
	wep_auto[321] = 1
	wep_load[321] = 9
	wep_cost[321] = 0
	wep_sprt[321] = sprLightningScrewDriver
	wep_area[321] = 7
	wep_text[321] = "electrical engineering"
	wep_swap[321] = sndSwapEnergy
	wep_rad[321] = 0;

	wep_name[322] = "FROST DRAGON"
	wep_type[322] = 4
	wep_auto[322] = 1
	wep_load[322] = 4
	wep_cost[322] = 1
	wep_sprt[322] = sprSnowDragon
	wep_area[322] = 14
	wep_text[322] = "cold breath"
	wep_swap[322] = sndSwapDragon
	wep_rad[322] = 0;

	wep_name[323] = "THUNDER KRAKEN"
	wep_type[323] = 5
	wep_auto[323] = 0
	wep_load[323] = 25
	wep_cost[323] = 2
	wep_sprt[323] = sprThunderCrack
	wep_area[323] = 9
	wep_text[323] = "Eye of the storming ocean"
	wep_swap[323] = sndSwapEnergy
	wep_rad[323] = 0;

	wep_name[324] = "FROST CANNON"
	wep_type[324] = 4
	wep_auto[324] = 0
	wep_load[324] = 36
	wep_cost[324] = 5
	wep_sprt[324] = sprIceCannon
	wep_area[324] = 18
	wep_text[324] = "Iceball!"
	wep_swap[324] = sndSwapExplosive
	wep_rad[324] = 0;

	wep_name[325] = "FROST FLAK CANNON"
	wep_type[325] = 1
	wep_auto[325] = 0
	wep_load[325] = 30
	wep_cost[325] = 10
	wep_sprt[325] = sprFrostFlakCannon
	wep_area[325] = 7
	wep_text[325] = "Shards of pain"
	wep_swap[325] = sndSwapExplosive
	wep_rad[325] = 0;

	wep_name[326] = "TOXIC CANNON"
	wep_type[326] = 4
	wep_auto[326] = 0
	wep_load[326] = 32
	wep_cost[326] = 4
	wep_sprt[326] = sprToxicCannon
	wep_area[326] = 11
	wep_text[326] = "Ball of gas"
	wep_swap[326] = sndSwapExplosive
	wep_rad[326] = 0;

	wep_name[327] = "BLOOD CANNON"
	wep_type[327] = 4
	wep_auto[327] = 0
	wep_load[327] = 36
	wep_cost[327] = 4
	wep_sprt[327] = sprBloodCannon
	wep_area[327] = 14
	wep_text[327] = "voices!"
	wep_swap[327] = sndSwapExplosive
	wep_rad[327] = 0;

	wep_name[328] = "BLACK SWORD"
	wep_type[328] = 0
	wep_auto[328] = 0
	wep_load[328] = 14//16 usual
	wep_cost[328] = 0
	wep_sprt[328] = sprBlackSword
	wep_area[328] = -1
	wep_text[328] = "chicken hates her sword"
	wep_swap[328] = sndSwapSword
	wep_rad[328] = 0;

	wep_name[329] = "DARK SWORD"
	wep_type[329] = 0
	wep_auto[329] = 0
	wep_load[329] = 25//16 usual
	wep_cost[329] = 0
	wep_sprt[329] = sprDarkSword
	wep_area[329] = -1
	wep_text[329] = "chicken is being destroyed by her sword"
	wep_swap[329] = sndSwapSword
	wep_rad[329] = 0;

	wep_name[330] = "DOOM PISTOL"
	wep_type[330] = 4
	wep_auto[330] = 0
	wep_load[330] = 14
	wep_cost[330] = 2
	wep_sprt[330] = sprDoomPistol
	wep_area[330] = 8
	wep_text[330] = "cute bots of doom"
	wep_swap[330] = sndSwapExplosive
	wep_rad[330] = 0;

	wep_name[331] = "DOOM RIFLE"
	wep_type[331] = 4
	wep_auto[331] = 0
	wep_load[331] = 20
	wep_cost[331] = 2.5
	wep_sprt[331] = sprDoomRifle
	wep_area[331] = 11
	wep_text[331] = "doombots are cool"
	wep_swap[331] = sndSwapExplosive
	wep_rad[331] = 0;

	wep_name[332] = "ENERGY SHOVEL"
	wep_type[332] = 5
	wep_auto[332] = 0
	wep_load[332] = 26
	wep_cost[332] = 5
	wep_sprt[332] = sprEnergyShovel
	wep_area[332] = 14
	wep_text[332] = "energetic digging"
	wep_swap[332] = sndSwapEnergy
	wep_rad[332] = 0;

	wep_name[333] = "HYPER GATLING BAZOOKA"
	wep_type[333] = 4
	wep_auto[333] = 1
	wep_load[333] = 3
	wep_cost[333] = 0.5
	wep_sprt[333] = sprHyperGatlingBazooka
	wep_area[333] = 12
	wep_text[333] = "bazooka minigun"
	wep_swap[333] = sndSwapExplosive
	wep_rad[333] = 0;

	wep_name[334] = "ION BOMB"
	wep_type[334] = 4
	wep_auto[334] = 0
	wep_load[334] = 12
	wep_cost[334] = 1.5
	wep_sprt[334] = sprIonBomb
	wep_area[334] = 5
	wep_text[334] = "explosions out of nowhere"
	wep_swap[334] = sndSwapExplosive
	wep_rad[334] = 0;

	wep_name[335] = "FROST SMG"
	wep_type[335] = 1
	wep_auto[335] = 1
	wep_load[335] = 3
	wep_cost[335] = 2
	wep_sprt[335] = sprFrostSMG
	wep_area[335] = 5
	wep_text[335] = "cold sub"
	wep_swap[335] = sndSwapPistol
	wep_rad[335] = 0;

	wep_name[336] = "FROST ASSAULT RIFLE"
	wep_type[336] = 1
	wep_auto[336] = 0
	wep_load[336] = 14
	wep_cost[336] = 6
	wep_sprt[336] = sprFrostARifle
	wep_area[336] = 7
	wep_text[336] = "freeze burst"
	wep_swap[336] = sndSwapMachinegun
	wep_rad[336] = 0;

	wep_name[337] = "MINI LIGHTNING PISTOL"
	wep_type[337] = 5
	wep_auto[337] = 1
	wep_load[337] = 13
	wep_cost[337] = 1
	wep_sprt[337] = sprMiniLightningPistol
	wep_area[337] = 0
	wep_text[337] = "and we're back"
	wep_swap[337] = sndSwapPistol
	wep_rad[337] = 0;

	wep_name[338] = "KRAKEN PISTOL"
	wep_type[338] = 4
	wep_auto[338] = 0
	wep_load[338] = 15//10
	wep_cost[338] = 1
	wep_sprt[338] = sprKrakenPistol
	wep_area[338] = 2
	wep_text[338] = "unleash the baby kraken"
	wep_swap[338] = sndSwapDragon
	wep_rad[338] = 0;

	wep_name[339] = "FROST AXE"
	wep_type[339] = 0
	wep_auto[339] = 0
	wep_load[339] = 33
	wep_cost[339] = 0
	wep_sprt[339] = sprFrostHammer
	wep_area[339] = 10
	wep_text[339] = "freeze! hammer time"
	wep_swap[339] = sndSwapHammer
	wep_rad[339] = 0;

	wep_name[340] = "TRIDENT"
	wep_type[340] = 0
	wep_auto[340] = 0
	wep_load[340] = 26
	wep_cost[340] = 0
	wep_sprt[340] = sprTrident
	wep_area[340] = 11
	wep_text[340] = "aqua fork"
	wep_swap[340] = sndSwapDragon
	wep_rad[340] = 0;

	wep_name[341] = "ULTRA KRAKEN LAUNCHER"
	wep_type[341] = 4
	wep_auto[341] = 0
	wep_load[341] = 36
	wep_cost[341] = 6
	wep_sprt[341] = sprUltraKrakenCannon
	wep_area[341] = 25
	wep_text[341] = "true power of the ocean"
	wep_swap[341] = sndSwapDragon
	wep_rad[341] = 16;

	wep_name[342] = "KRAKEN ION CANNON"
	wep_type[342] = 4
	wep_auto[342] = 1
	wep_load[342] = 26
	wep_cost[342] = 4
	wep_sprt[342] = sprKrakenIonCannon
	wep_area[342] = 11
	wep_text[342] = "sharknado"
	wep_swap[342] = sndSwapDragon
	wep_rad[342] = 0;

	wep_name[343] = "DIMENSION GENERATOR"
	wep_type[343] = 4
	wep_auto[343] = 0
	wep_load[343] = 46
	wep_cost[343] = 10
	wep_sprt[343] = sprDimensionGenerator
	wep_area[343] = 20
	wep_text[343] = "the tentacle universe"
	wep_swap[343] = sndSwapDragon
	wep_rad[343] = 0;

	wep_name[344] = "ELECTRO GUN"
	wep_type[344] = 5
	wep_auto[344] = 1
	wep_load[344] = 12
	wep_cost[344] = 1
	wep_sprt[344] = sprElectroGun
	wep_area[344] = 7
	wep_text[344] = "considered plasma & lightning"
	wep_swap[344] = sndSwapEnergy
	wep_rad[344] = 0;

	wep_name[345] = "ELECTRO RIFLE"
	wep_type[345] = 5
	wep_auto[345] = 1
	wep_load[345] = 6
	wep_cost[345] = 1
	wep_sprt[345] = sprElectroRifle
	wep_area[345] = 9
	wep_text[345] = "connected"
	wep_swap[345] = sndSwapEnergy
	wep_rad[345] = 0;

	wep_name[346] = "AUTO BULLET SHOTGUN"
	wep_type[346] = 1
	wep_auto[346] = 1
	wep_load[346] = 8
	wep_cost[346] = 6.25
	wep_sprt[346] = sprAutoBulletShotgun
	wep_area[346] = 8
	wep_text[346] = "bullets not pellets"
	wep_swap[346] = sndSwapShotgun
	wep_rad[346] = 0;

	wep_name[347] = "TRIPLE ELECTRO GUN"
	wep_type[347] = 5
	wep_auto[347] = 1
	wep_load[347] = 5
	wep_cost[347] = 3
	wep_sprt[347] = sprTripleElectroGun
	wep_area[347] = 13
	wep_text[347] = "chain lightning"
	wep_swap[347] = sndSwapEnergy
	wep_rad[347] = 0;

	wep_name[348] = "FROG PISTOL"
	wep_type[348] = 1
	wep_auto[348] = 0
	wep_load[348] = 5
	wep_cost[348] = 2
	wep_sprt[348] = sprFrogBlaster
	wep_area[348] = -1
	wep_text[348] = "burp"
	wep_swap[348] = sndSwapPistol
	wep_rad[348] = 0;

	wep_name[349] = "GOLDEN FROG PISTOL"
	wep_type[349] = 1
	wep_auto[349] = 1
	wep_load[349] = 3
	wep_cost[349] = 2
	wep_sprt[349] = sprGoldFrogBlaster
	wep_area[349] = -1
	wep_text[349] = "classy farts"
	wep_swap[349] = sndSwapPistol
	wep_rad[349] = 0;

	wep_name[350] = "HYPER GLOVE"
	wep_type[350] = 4
	wep_auto[350] = 1
	wep_load[350] = 16//23 dead glove
	wep_cost[350] = 2
	wep_sprt[350] = sprHyperGlove
	wep_area[350] = 8
	wep_text[350] = "this is the 350th weapon!"
	wep_swap[350] = sndSwapHammer
	wep_rad[350] = 0;

	wep_name[351] = "BULLET DISPERSE DISPERSE GUN"
	wep_type[351] = 1
	wep_auto[351] = 1
	wep_load[351] = 30
	wep_cost[351] = 77
	wep_sprt[351] = sprBulletDisperseDisperseGun
	wep_area[351] = 24
	wep_text[351] = "disperse it all!"
	wep_swap[351] = sndSwapPistol
	wep_rad[351] = 0;

	wep_name[352] = "ELEMENTAL GUN"
	wep_type[352] = 4
	wep_auto[352] = 1
	wep_load[352] = 12
	wep_cost[352] = 2
	wep_sprt[352] = sprElementalGun
	wep_area[352] = 15
	wep_text[352] = "the four ultra elements"
	wep_swap[352] = sndSwapDragon
	wep_rad[352] = 0;

	wep_name[353] = "TERMITE GUN"
	wep_type[353] = 1
	wep_auto[353] = 1
	wep_load[353] = 4
	wep_cost[353] = 1.5
	wep_sprt[353] = sprTermiteGun
	wep_area[353] = 13
	wep_text[353] = "termites eat enemy mutants"
	wep_swap[353] = sndSwapMotorized
	wep_rad[353] = 0;

	wep_name[354] = "SUPER BOUNCER FLAK CANNON"
	wep_type[354] = 1
	wep_auto[354] = 0
	wep_load[354] = 64
	wep_cost[354] = 45
	wep_sprt[354] = sprSuperBouncerFlakCannon
	wep_area[354] = 12//5.3
	wep_text[354] = "11/10"
	wep_swap[354] = sndSwapExplosive
	wep_rad[354] = 0;
	
	wep_name[355] = "JAWBREAKER"
	wep_type[355] = 2
	wep_auto[355] = 0
	wep_load[355] = 17
	wep_cost[355] = 1
	wep_sprt[355] = sprJawbreaker
	wep_area[355] = 1
	wep_text[355] = "pincer attack"
	wep_swap[355] = sndSwapShotgun
	wep_rad[355] = 0;
	
	wep_name[356] = "HEAVY GRENADE LAUNCHER"
	wep_type[356] = 4
	wep_auto[356] = 0
	wep_load[356] = 25
	wep_cost[356] = 2
	wep_sprt[356] = sprHeavyNader
	wep_area[356] = 8
	wep_text[356] = "green explosions"
	wep_swap[356] = sndSwapExplosive
	wep_rad[356] = 0;
	
	wep_name[357] = "AUTO HEAVY GRENADE LAUNCHER"
	wep_type[357] = 4
	wep_auto[357] = 1
	wep_load[357] = 12
	wep_cost[357] = 2
	wep_sprt[357] = sprAutoHeavyNader
	wep_area[357] = 12
	wep_text[357] = "slimeballs"
	wep_swap[357] = sndSwapExplosive
	wep_rad[357] = 0;
	
	wep_name[358] = "ION TELEPORTER"
	wep_type[358] = 5
	wep_auto[358] = 0
	wep_load[358] = 20
	wep_cost[358] = 3
	wep_sprt[358] = sprIonTeleporter
	wep_area[358] = 10
	wep_text[358] = "just like atom"
	wep_swap[358] = sndSwapEnergy
	wep_rad[358] = 0;
	
	wep_name[359] = "LASER BOMB LAUNCHER"
	wep_type[359] = 4
	wep_auto[359] = 0
	wep_load[359] = 26
	wep_cost[359] = 3
	wep_sprt[359] = sprLaserBombLauncher
	wep_area[359] = 11
	wep_text[359] = "lime light show"
	wep_swap[359] = sndSwapExplosive
	wep_rad[359] = 0;
	
	wep_name[360] = "FLAIL"
	wep_type[360] = 0
	wep_auto[360] = 0
	wep_load[360] = 27
	wep_cost[360] = 0
	wep_sprt[360] = sprFlail
	wep_area[360] = 10
	wep_text[360] = "nuclearvenia"
	wep_swap[360] = sndSwapSword
	wep_rad[360] = 0;
	
	wep_name[361] = "REWIRER"
	wep_type[361] = 5
	wep_auto[361] = 0
	wep_load[361] = 10
	wep_cost[361] = 2.5
	wep_sprt[361] = sprRewirer
	wep_area[361] = 14
	wep_text[361] = "connect the dots"
	wep_swap[361] = sndSwapBow
	wep_rad[361] = 0;
	
	wep_name[362] = "SPLINTER BOMB"
	wep_type[362] = 3
	wep_auto[362] = 0
	wep_load[362] = 24
	wep_cost[362] = 1
	wep_sprt[362] = sprSplinterBomb
	wep_area[362] = 6
	wep_text[362] = "scrappy"
	wep_swap[362] = sndSwapBow
	wep_rad[362] = 0;
	
	wep_name[363] = "SPLINTER MINIGUN"
	wep_type[363] = 1
	wep_auto[363] = 1
	wep_load[363] = 2
	wep_cost[363] = 1.25
	wep_sprt[363] = sprSplinterMinigun
	wep_area[363] = 16
	wep_text[363] = ""
	wep_swap[363] = sndSwapMachinegun
	wep_rad[363] = 0;
	
	wep_name[364] = "KRAKEN DISPERSE GUN"
	wep_type[364] = 4
	wep_auto[364] = 1
	wep_load[364] = 30
	wep_cost[364] = 16
	wep_sprt[364] = sprDisperseKrakenGun
	wep_area[364] = 23
	wep_text[364] = "mobilize the kraken!"
	wep_swap[364] = sndSwapExplosive
	wep_rad[364] = 0;
	
	
	wep_name[365] = "SPLINTER SHOTGUN"
	wep_type[365] = 3
	wep_auto[365] = 0
	wep_load[365] = 28
	wep_cost[365] = 2
	wep_sprt[365] = sprSplinterShotgun
	wep_area[365] = 11
	wep_text[365] = "nailgun"
	wep_swap[365] = sndSwapBow
	wep_rad[365] = 0;
	
	wep_name[366] = "BOUNCER REVOLVER"
	wep_type[366] = 1
	wep_auto[366] = 1
	wep_load[366] = 7
	wep_cost[366] = 1.5
	wep_sprt[366] = sprBouncerRevolver
	wep_area[366] = 2
	wep_text[366] = "hey how you doing"
	wep_swap[366] = sndSwapPistol
	wep_rad[366] = 0;
	
	wep_name[367] = "DIRECTOR GRENADE LAUNCHER"
	wep_type[367] = 4
	wep_auto[367] = 0
	wep_load[367] = 25
	wep_cost[367] = 1
	wep_sprt[367] = sprDirectorGrenadeLauncher
	wep_area[367] = 3
	wep_text[367] = "I am the director"
	wep_swap[367] = sndSwapExplosive
	wep_rad[367] = 0;
	
	wep_name[368] = "KRAKEN GRENADE LAUNCHER"
	wep_type[368] = 4
	wep_auto[368] = 0
	wep_load[368] = 25
	wep_cost[368] = 3
	wep_sprt[368] = sprKrakenNader
	wep_area[368] = 12
	wep_text[368] = "ocean bomb!"
	wep_swap[368] = sndSwapExplosive
	wep_rad[368] = 0;
	
	wep_name[369] = "ULTRA SCREWDRIVER"
	wep_type[369] = 0
	wep_auto[369] = 0
	wep_load[369] = 5
	wep_cost[369] = 0
	wep_sprt[369] = sprUltraScrewDriver
	wep_area[369] = 18
	wep_text[369] = "ultra shanking"
	wep_swap[369] = sndSwapSword
	wep_rad[369] = 3;
	
	if random(2000) < 1
		wep_name[370] = "SHIT KNOIFE"//fuck this thing fuck it hard so buggy trash shit never should've made this biggest regret of my life
	else
		wep_name[370] = "OBSIDIAN THROWING KNIFE"
	wep_type[370] = 0
	wep_auto[370] = 0
	wep_load[370] = 6//11
	wep_cost[370] = 0
	wep_sprt[370] = sprObsidianThrowingKnife
	wep_area[370] = 2
	wep_text[370] = "toss me"
	wep_swap[370] = sndSwapSword
	wep_rad[370] = 0;
	
	wep_name[371] = "ULTRA MINIGUN"
	wep_type[371] = 1
	wep_auto[371] = 1
	wep_load[371] = 1
	wep_cost[371] = 1
	wep_sprt[371] = sprUltraMinigun
	wep_area[371] = 23
	wep_text[371] = "time to rain bullets"
	wep_swap[371] = sndSwapMachinegun
	wep_rad[371] = 3;
	
	wep_name[372] = "VAN CANNON"
	wep_type[372] = 4
	wep_auto[372] = 0
	wep_load[372] = 60
	wep_cost[372] = 12
	wep_sprt[372] = sprVanCannon
	wep_area[372] = 20
	wep_text[372] = "popo power"
	wep_swap[372] = sndSwapExplosive
	wep_rad[372] = 0;
	
	wep_name[373] = "VAN PUSHER"
	wep_type[373] = 0
	wep_auto[373] = 1
	wep_load[373] = 8
	wep_cost[373] = 0
	wep_sprt[373] = sprVanPusher
	wep_area[373] = -2
	wep_text[373] = "push away da popo"
	wep_swap[373] = sndSwapEnergy
	wep_rad[373] = 0;
	
	wep_name[374] = "QUADRUPLE SUPER PLASMA CANNON"
	wep_type[374] = 5
	wep_auto[374] = 0
	wep_load[374] = 1300//670//350
	wep_cost[374] = 90// 48//24
	wep_sprt[374] = sprQuadruppleSuperPlasmaCannon
	wep_area[374] = 30//thats the last weapon
	wep_text[374] ="aaaaaaaaaaaaaaaaa#";
	repeat(40)
	wep_text[374] +="#aaaaaaaaaaaaaaaaa#";
	wep_swap[374] = sndSwapEnergy
	wep_rad[374] = 0;
	
	if UberCont.encrypted_data.secrets[2] == true
	{
		wep_name[375] = "HAMBURGER MAGNET"//Probably the worst weapon in the game
		wep_type[375] = 0
		wep_auto[375] = 0
		wep_load[375] = 10
		wep_cost[375] = 1
		wep_sprt[375] = sprHamburgerMagnet
		wep_area[375] = -1
		wep_text[375] = "100% beef"
		wep_swap[375] = sndSelectUp
		wep_rad[375] = 0;
	}
	else
	{
		wep_name[375] = "INVERSION MAGNET"//Probably the worst weapon in the game
		wep_type[375] = 0
		wep_auto[375] = 0
		wep_load[375] = 10
		wep_cost[375] = 1
		wep_sprt[375] = sprInversionMagnet
		wep_area[375] = -1
		wep_text[375] = "100% inversion"
		wep_swap[375] = sndSwapSword
		wep_rad[375] = 0;	
	}
	
	wep_name[376] = "INFINITY SMART GUN"
	wep_type[376] = 1
	wep_auto[376] = 1
	wep_load[376] = 3
	wep_cost[376] = 0
	wep_sprt[376] = sprInfinitySmartGun
	wep_area[376] = 20
	wep_text[376] = "think forever"
	wep_swap[376] = sndSwapMachinegun
	wep_rad[376] = 0;
	
	wep_name[377] = "EXPLOSION HAMMER"
	wep_type[377] = 4
	wep_auto[377] = 0
	wep_load[377] = 16
	wep_cost[377] = 2
	wep_sprt[377] = sprExplosiveHammer
	wep_area[377] = 10
	wep_text[377] = "blow up in the face"
	wep_swap[377] = sndSwapHammer
	wep_rad[377] = 0;
	
	wep_name[378] = "LOVE BOMBER"
	wep_type[378] = 4
	wep_auto[378] = 0
	wep_load[378] = 23
	wep_cost[378] = 2
	wep_sprt[378] = sprLoveBomber
	wep_area[378] = 8
	wep_text[378] = "<3"
	wep_swap[378] = sndSwapExplosive
	wep_rad[378] = 0;
	
	wep_name[379] = "BULLET WALL"
	wep_type[379] = 1
	wep_auto[379] = 1
	wep_load[379] = 14
	wep_cost[379] = 8
	wep_sprt[379] = sprBulletWall
	wep_area[379] = 12
	wep_text[379] = "bullets are closer together#with eagle eyes"
	wep_swap[379] = sndSwapShotgun
	wep_rad[379] = 0;
	
	wep_name[380] = "BULLET LASER"
	wep_type[380] = 1
	wep_auto[380] = 0
	wep_load[380] = 15
	wep_cost[380] = 12
	wep_sprt[380] = sprSkullSplitter
	wep_area[380] = 13
	wep_text[380] = "more bullets with eagle eyes"
	wep_swap[380] = sndSwapMachinegun
	wep_rad[380] = 0;
	
	wep_name[381] = "MUCHAS PELOTILLA"
	wep_type[381] = 2
	wep_auto[381] = 0
	wep_load[381] = 300
	wep_cost[381] = 40
	wep_sprt[381] = sprMuchasPelotilla
	wep_area[381] = 32
	wep_text[381] = "cest bon"
	wep_swap[381] = sndSwapShotgun
	wep_rad[381] = 0;
	
	wep_name[382] = "MUCHAS LASERES"
	wep_type[382] = 5
	wep_auto[382] = 0
	wep_load[382] = 300
	wep_cost[382] = 40
	wep_sprt[382] = sprMuchasLaser
	wep_area[382] = 32
	wep_text[382] = "beau"
	wep_swap[382] = sndSwapEnergy
	wep_rad[382] = 0;
	
	wep_name[383] = "GOLDEN JAWBREAKER"
	wep_type[383] = 2
	wep_auto[383] = 0
	wep_load[383] = 16
	wep_cost[383] = 1
	wep_sprt[383] = sprGoldenJawbreaker
	wep_area[383] = 17
	wep_text[383] = "shiny jaw"
	wep_swap[383] = sndSwapShotgun
	wep_rad[383] = 0;
	
	wep_name[384] = "MINI PLASMA GUN"
	wep_type[384] = 5
	wep_auto[384] = 1
	wep_load[384] = 10
	wep_cost[384] = 1
	wep_sprt[384] = sprMiniPlasmaGun
	wep_area[384] = 2
	wep_text[384] = "mini plasma is faster and smaller#than regular plasma"
	wep_swap[384] = sndSwapPistol
	wep_rad[384] = 0;
	
	wep_name[385] = "SPLINTER BLADE GUN"
	wep_type[385] = 3
	wep_auto[385] = 1
	wep_load[385] = 22
	wep_cost[385] = 3.5
	wep_sprt[385] = sprSplinterBladeGun
	wep_area[385] = 16
	wep_text[385] = "blades don't hurt you"
	wep_swap[385] = sndSwapBow
	wep_rad[385] = 0;
	
	wep_name[386] = "BOUNCER PLASMA GUN"
	wep_type[386] = 5
	wep_auto[386] = 1
	wep_load[386] = 17
	wep_cost[386] = 2
	wep_sprt[386] = sprBouncerPlasmaGun
	wep_area[386] = 7
	wep_text[386] = "boioink"
	wep_swap[386] = sndSwapEnergy
	wep_rad[386] = 0;
	
	wep_name[387] = "BOUNCER PLASMA RIFLE"
	wep_type[387] = 5
	wep_auto[387] = 1
	wep_load[387] = 10
	wep_cost[387] = 2
	wep_sprt[387] = sprBouncerPlasmaRifle
	wep_area[387] = 9
	wep_text[387] = "boioioioink"
	wep_swap[387] = sndSwapEnergy
	wep_rad[387] = 0;
	
	wep_name[388] = "BOUNCER PLASMA CANNON"
	wep_type[388] = 5
	wep_auto[388] = 0
	wep_load[388] = 46
	wep_cost[388] = 9
	wep_sprt[388] = sprBouncerPlasmaCannon
	wep_area[388] = 14
	wep_text[388] = "boioioioioioioioioioioink"
	wep_swap[388] = sndSwapEnergy
	wep_rad[388] = 0;
	
	wep_name[389] = "DOUBLE LASER PISTOL"
	wep_type[389] = 5
	wep_auto[389] = 0
	wep_load[389] = 14
	wep_cost[389] = 2
	wep_sprt[389] = sprDoubleLaserGun
	wep_area[389] = 5
	wep_text[389] = "a higher accuracy narrows the gap"
	wep_swap[389] = sndSwapEnergy
	wep_rad[389] = 0;
	
	wep_name[390] = "JAWSPLITTER"
	wep_type[390] = 3
	wep_auto[390] = 0
	wep_load[390] = 16
	wep_cost[390] = 1
	wep_sprt[390] = sprJawSplitter
	wep_area[390] = 1
	wep_text[390] = "cheekbone hitter"
	wep_swap[390] = sndSwapBow
	wep_rad[390] = 0;
	
	wep_name[391] = "GOLDEN JAWSPLITTER"
	wep_type[391] = 3
	wep_auto[391] = 0
	wep_load[391] = 17
	wep_cost[391] = 1
	wep_sprt[391] = sprGoldenJawSplitter
	wep_area[391] = 17
	wep_text[391] = "golden jaw"
	wep_swap[391] = sndSwapBow
	wep_rad[391] = 0;
	
	wep_name[392] = "MUCHAS FUEGO"
	wep_type[392] = 4
	wep_auto[392] = 0
	wep_load[392] = 300
	wep_cost[392] = 40
	wep_sprt[392] = sprMuchasFuego
	wep_area[392] = 33
	wep_text[392] = "en petit peu"
	wep_swap[392] = sndSwapDragon
	wep_rad[392] = 0;
	
	wep_name[393] = "TWO HEADED DRAGON"
	wep_type[393] = 4
	wep_auto[393] = 1
	wep_load[393] = 5
	wep_cost[393] = 1
	wep_sprt[393] = sprTwoHeadedDragon
	wep_area[393] = 16
	wep_text[393] = "holding fire will increase the power"
	wep_swap[393] = sndSwapDragon
	wep_rad[393] = 0;
	
	wep_name[394] = "FLAME AXE"
	wep_type[394] = 0
	wep_auto[394] = 0
	wep_load[394] = 28
	wep_cost[394] = 0
	wep_sprt[394] = sprFlameAxe
	wep_area[394] = 10//10frost hammer
	wep_text[394] = "chop burned wood"
	wep_swap[394] = sndSwapHammer
	wep_rad[394] = 0;
	
	wep_name[395] = "ELECTRO CANNON"
	wep_type[395] = 5
	wep_auto[395] = 1
	wep_load[395] = 37
	wep_cost[395] = 7
	wep_sprt[395] = sprElectroCannon
	wep_area[395] = 13
	wep_text[395] = "state of the art gunnery"
	wep_swap[395] = sndSwapEnergy
	wep_rad[395] = 0;
	
	wep_name[396] = "DISCO GUN"//fIRES A DISCO	BALL that emites lightning and THAT EXPLOSED INTO A LASER SHOW
	wep_type[396] = 5
	wep_auto[396] = 0
	wep_load[396] = 175
	wep_cost[396] = 25
	wep_sprt[396] = sprDiscoGun
	wep_area[396] = 17
	wep_text[396] = "BRING YOUR OWN PARTY!"
	wep_swap[396] = sndSwapEnergy
	wep_rad[396] = 0;
	
	wep_name[397] = "SWARM BOMB"
	wep_type[397] = 3
	wep_auto[397] = 0
	wep_load[397] = 24
	wep_cost[397] = 3
	wep_sprt[397] = sprSwarmBomb
	wep_area[397] = 12
	wep_text[397] = "bee hive"
	wep_swap[397] = sndSwapBow
	wep_rad[397] = 0;
	
	wep_name[398] = "LIGHTNING LASER"//Tiny balls that explode into lightning on impact move fast fire fast
	wep_type[398] = 5
	wep_auto[398] = 1
	wep_load[398] = 10
	wep_cost[398] = 3
	wep_sprt[398] = sprLightningLaserGun
	wep_area[398] = 15
	wep_text[398] = "lightning or laser? why not both!"
	wep_swap[398] = sndSwapBow
	wep_rad[398] = 0;
	
	wep_name[399] = "WRONG DIRECTION"
	wep_type[399] = 3
	wep_auto[399] = 0
	wep_load[399] = 34
	wep_cost[399] = 1
	wep_sprt[399] = sprWrongDirection
	wep_area[399] = 4
	wep_text[399] = "took a wrong turn somewhere"
	wep_swap[399] = sndSwapBow
	wep_rad[399] = 0;
	
	wep_name[400] = "GOLDEN GRENADE REVOLVER"
	wep_type[400] = 4
	wep_auto[400] = 0
	wep_load[400] = 12//13
	wep_cost[400] = 1
	wep_sprt[400] = sprGoldenGrenadeRevolver
	wep_area[400] = 17
	wep_text[400] = "golds nuggets"
	wep_swap[400] = sndSwapExplosive
	wep_rad[400] = 0;
	
	wep_name[401] = "HEALTH DISPENSER"
	wep_type[401] = 5
	wep_auto[401] = 0
	wep_load[401] = 30//13
	wep_cost[401] = 25
	wep_sprt[401] = sprHealthDispenser
	wep_area[401] = 8
	wep_text[401] = "medic!"
	wep_swap[401] = sndSwapExplosive
	wep_rad[401] = 0;
	
	wep_name[402] = "GUN GUN"
	wep_type[402] = 5
	wep_auto[402] = 0
	wep_load[402] = 90
	wep_cost[402] = 40
	wep_sprt[402] = sprGunGun
	wep_area[402] = 15
	wep_text[402] = "a gun that shoots guns"
	wep_swap[402] = sndSwapExplosive
	wep_rad[402] = 0;
	
	wep_name[403] = "CLUSTER GRENADE LAUNCHER"
	wep_type[403] = 4
	wep_auto[403] = 0
	wep_load[403] = 25//11
	wep_cost[403] = 2
	wep_sprt[403] = sprClusterNader
	wep_area[403] = 6
	wep_text[403] = ""
	wep_swap[403] = sndSwapExplosive
	wep_rad[403] = 0;
	
	wep_name[404] = "MISSILE BOMB"
	wep_type[404] = 4
	wep_auto[404] = 0
	wep_load[404] = 48
	wep_cost[404] = 4
	wep_sprt[404] = sprMissileBombThrower
	wep_area[404] = 11
	wep_text[404] = "be very carefull"
	wep_swap[404] = sndSwapExplosive
	wep_rad[404] = 0;
	
	wep_name[405] = "CUBER REVOLVER"
	wep_type[405] = 1
	wep_auto[405] = 0
	wep_load[405] = 6
	wep_cost[405] = 2
	wep_sprt[405] = sprCuberRevolver
	wep_area[405] = 8
	wep_text[405] = "phase through walls"
	wep_swap[405] = sndSwapPistol
	wep_rad[405] = 0;
	
	wep_name[406] = "CUBER RIFLE"
	wep_type[406] = 1
	wep_auto[406] = 1
	wep_load[406] = 3
	wep_cost[406] = 2
	wep_sprt[406] = sprCuberRifle
	wep_area[406] = 10
	wep_text[406] = "square bullets"
	wep_swap[406] = sndSwapPistol
	wep_rad[406] = 0;
	
	wep_name[407] = "MORPH-O-LASER"
	wep_type[407] = 5
	wep_auto[407] = 0
	wep_load[407] = 13
	wep_cost[407] = 2
	wep_sprt[407] = sprMorphOLaser
	wep_area[407] = 6
	wep_text[407] = "sheep blaser"
	wep_swap[407] = sndSwapPistol
	wep_rad[407] = 0;
	
	wep_name[408] = "MORPH-O-RIFLE"
	wep_type[408] = 1
	wep_auto[408] = 1
	wep_load[408] = 6
	wep_cost[408] = 1
	wep_sprt[408] = sprMorphORifle
	wep_area[408] = 5
	wep_text[408] = "sheep shooter"
	wep_swap[408] = sndSwapPistol
	wep_rad[408] = 0;
	
	wep_name[409] = "DIRECTOR PLASMA GUN"
	wep_type[409] = 5
	wep_auto[409] = 0
	wep_load[409] = 25
	wep_cost[409] = 2
	wep_sprt[409] = sprDirectorPlasmaGun
	wep_area[409] = 6
	wep_text[409] = "curve ball"
	wep_swap[409] = sndSwapEnergy
	wep_rad[409] = 0;
	
	wep_name[410] = "DOUBLE BOUNCER LASER PISTOL"
	wep_type[410] = 5
	wep_auto[410] = 0
	wep_load[410] = 15
	wep_cost[410] = 2
	wep_sprt[410] = sprDoubleBouncerLaserGun
	wep_area[410] = 9
	wep_text[410] = "geometry!"
	wep_swap[410] = sndSwapEnergy
	wep_rad[410] = 0;
	
	wep_name[411] = "KRAKEN YOYO GUN"
	wep_type[411] = 4
	wep_auto[411] = 1
	wep_load[411] = 28
	wep_cost[411] = 3.5
	wep_sprt[411] = sprKrakenYoyoGun
	wep_area[411] = 13
	wep_text[411] = ""
	wep_swap[411] = sndSwapDragon
	wep_rad[411] = 0;
	
	wep_name[412] = "LANCE"
	wep_type[412] = 0
	wep_auto[412] = 0
	wep_load[412] = 18
	wep_cost[412] = 0
	wep_sprt[412] = sprLance
	wep_area[412] = 4
	wep_text[412] = "poke"
	wep_swap[412] = sndSwapSword
	wep_rad[412] = 0;
	
	wep_name[413] = "LEACHER"
	wep_type[413] = 3
	wep_auto[413] = 0
	wep_load[413] = 20
	wep_cost[413] = 2
	wep_sprt[413] = sprLeacherBow
	wep_area[413] = 10
	wep_text[413] = "vampire"
	wep_swap[413] = sndSwapBow
	wep_rad[413] = 0;
	
	wep_name[414] = "BUBBLER"
	wep_type[414] = 4
	wep_auto[414] = 0
	wep_load[414] = 17
	wep_cost[414] = 2
	wep_sprt[414] = sprBubbler
	wep_area[414] = 9
	wep_text[414] = "pop goes the bubble"
	wep_swap[414] = sndSwapExplosive
	wep_rad[414] = 0;
	
	wep_name[415] = "BLOOD BUBBLER"
	wep_type[415] = 4
	wep_auto[415] = 0
	wep_load[415] = 14
	wep_cost[415] = 2
	wep_sprt[415] = sprBloodBubbler
	wep_area[415] = 8
	wep_text[415] = "boiling blood"
	wep_swap[415] = sndSwapExplosive
	wep_rad[415] = 0;
	
	wep_name[416] = "BOUNCER BAZOOKA"
	wep_type[416] = 4
	wep_auto[416] = 0
	wep_load[416] = 30
	wep_cost[416] = 1
	wep_sprt[416] = sprBouncerBazooka
	wep_area[416] = 7
	wep_text[416] = ""
	wep_swap[416] = sndSwapExplosive
	wep_rad[416] = 0;
	
	wep_name[417] = "SUPER TOXIC CANNON"
	wep_type[417] = 4
	wep_auto[417] = 0
	wep_load[417] = 44
	wep_cost[417] = 8
	wep_sprt[417] = sprSuperToxicCannon
	wep_area[417] = 14
	wep_text[417] = "so much gas"
	wep_swap[417] = sndSwapExplosive
	wep_rad[417] = 0;
	
	wep_name[418] = "SUPER SPIRAL YOYO GUN"
	wep_type[418] = 3
	wep_auto[418] = 1
	wep_load[418] = 26
	wep_cost[418] = 8
	wep_sprt[418] = sprSuperSpiralYoyoGun
	wep_area[418] = 8
	wep_text[418] = ""
	wep_swap[418] = sndSwapBow
	wep_rad[418] = 0;
	
	wep_name[419] = "SPINNER YOYO GUN"
	wep_type[419] = 3
	wep_auto[419] = 1
	wep_load[419] = 14
	wep_cost[419] = 1
	wep_sprt[419] = sprSpinnerYoyoGun
	wep_area[419] = 4
	wep_text[419] = "yoyo phases through walls"
	wep_swap[419] = sndSwapBow
	wep_rad[419] = 0;
	
	wep_name[420] = "SUPER SPINNER YOYO GUN"
	wep_type[420] = 3
	wep_auto[420] = 1
	wep_load[420] = 26
	wep_cost[420] = 5
	wep_sprt[420] = sprSuperSpinnerYoyoGun
	wep_area[420] = 11
	wep_text[420] = "super dizzy"
	wep_swap[420] = sndSwapBow
	wep_rad[420] = 0;
	
	wep_name[421] = "DISPERSE SPINNER YOYO GUN"
	wep_type[421] = 3
	wep_auto[421] = 1
	wep_load[421] = 22
	wep_cost[421] = 8
	wep_sprt[421] = sprSpinnerYoyoDisperseGun
	wep_area[421] = 20
	wep_text[421] = "once upon a time there was a yoyo that never returned"
	wep_swap[421] = sndSwapBow
	wep_rad[421] = 0;
	
	wep_name[422] = "SUPER LANCE"
	wep_type[422] = 0
	wep_auto[422] = 0
	wep_load[422] = 17
	wep_cost[422] = 0
	wep_sprt[422] = sprSuperLance
	wep_area[422] = 20
	wep_text[422] = "mine is longer"
	wep_swap[422] = sndSwapSword
	wep_rad[422] = 0;
	
	wep_name[423] = "INFESTER"
	wep_type[423] = 3
	wep_auto[423] = 1
	wep_load[423] = 5
	wep_cost[423] = 1
	wep_sprt[423] = sprInfester
	wep_area[423] = 16
	wep_text[423] = ""
	wep_swap[423] = sndSwapBow
	wep_rad[423] = 0;
	
	wep_name[424] = "WAZER RIFLE"
	wep_type[424] = 5
	wep_auto[424] = 1
	wep_load[424] = 8
	wep_cost[424] = 1
	wep_sprt[424] = sprWazerRifle
	wep_area[424] = 13
	wep_text[424] = "an actual laser"
	wep_swap[424] = sndSwapEnergy
	wep_rad[424] = 0;
	
	wep_name[425] = "HEAVY BLOOD PISTOL"
	wep_type[425] = 1
	wep_auto[425] = 0
	wep_load[425] = 3
	wep_cost[425] = 1.5
	wep_sprt[425] = sprHeavyBloodPistol
	wep_area[425] = 5
	wep_text[425] = ""
	wep_swap[425] = sndSwapPistol
	wep_rad[425] = 0;
	
	wep_name[426] = "HEAVY BLOOD RIFLE"
	wep_type[426] = 1
	wep_auto[426] = 1
	wep_load[426] = 4
	wep_cost[426] = 1.5
	wep_sprt[426] = sprHeavyBloodRifle
	wep_area[426] = 6
	wep_text[426] = ""
	wep_swap[426] = sndSwapPistol
	wep_rad[426] = 0;

	wep_name[427] = "ULTRA ROGUE RIFLE"
	wep_type[427] = 1
	wep_auto[427] = 0
	wep_load[427] = 5
	wep_cost[427] = 2
	wep_sprt[427] = sprUltraRogueRifle
	wep_area[427] = -1
	wep_text[427] = ""
	wep_swap[427] = sndSwapMachinegun
	wep_rad[427] = 6;
	
	wep_name[428] = "EXPLOSIVE WAZER RIFLE"
	wep_type[428] = 4
	wep_auto[428] = 1
	wep_load[428] = 6
	wep_cost[428] = 1
	wep_sprt[428] = sprExplosiveWazerRifle
	wep_area[428] = 17
	wep_text[428] = "excavate"
	wep_swap[428] = sndSwapEnergy
	wep_rad[428] = 0;
	
	wep_name[429] = "SPLINTER STORM"
	wep_type[429] = 3
	wep_auto[429] = 1
	wep_load[429] = 25
	wep_cost[429] = 3
	wep_sprt[429] = sprSplinterStorm
	wep_area[429] = 21
	wep_text[429] = "bouncing splinters"
	wep_swap[429] = sndSwapBow
	wep_rad[429] = 0;
	
	wep_name[430] = "SLUG CANNON"
	wep_type[430] = 2
	wep_auto[430] = 0
	wep_load[430] = 32
	wep_cost[430] = 4
	wep_sprt[430] = sprSlugCannon
	wep_area[430] = 12
	wep_text[430] = "CTRL + S"
	wep_swap[430] = sndSwapExplosive
	wep_rad[430] = 0;
	
	wep_name[431] = "ULTRA LANCE"
	wep_type[431] = 0
	wep_auto[431] = 0
	wep_load[431] = 14
	wep_cost[431] = 0
	wep_sprt[431] = sprUltraLance
	wep_area[431] = 20
	wep_text[431] = ""
	wep_swap[431] = sndSwapSword
	wep_rad[431] = 8;
	
	wep_name[432] = "CHUNKY BLADE GUN"
	wep_type[432] = 3
	wep_auto[432] = 1
	wep_load[432] = 34
	wep_cost[432] = 2
	wep_sprt[432] = sprChunkyBladeGun
	wep_area[432] = 13
	wep_text[432] = "grand blade"
	wep_swap[432] = sndSwapBow
	wep_rad[432] = 0;
	
	wep_name[433] = "THE DIRECTOR"
	wep_type[433] = 5
	wep_auto[433] = 0
	wep_load[433] = 22
	wep_cost[433] = 1
	wep_sprt[433] = sprDirector
	wep_area[433] = 14
	wep_text[433] = "redirects all enemy bullets"
	wep_swap[433] = sndSwapBow
	wep_rad[433] = 0;
	
	wep_name[434] = "ULTRA BLOOD RIFLE"
	wep_type[434] = 1
	wep_auto[434] = 1
	wep_load[434] = 3
	wep_cost[434] = 1
	wep_sprt[434] = sprUltraBloodRifle
	wep_area[434] = 21
	wep_text[434] = "cdoesn't cost a lot of rads"
	wep_swap[434] = sndSwapPistol
	wep_rad[434] = 3;
	
	wep_name[435] = "ULTRA TOXICTHROWER"
	wep_type[435] = 4
	wep_auto[435] = 1
	wep_load[435] = 7
	wep_cost[435] = 1
	wep_sprt[435] = sprUltraToxicThrower
	wep_area[435] = 19
	wep_text[435] = "ultra stinky"
	wep_swap[435] = sndSwapFlame
	wep_rad[435] = 4;
	
	wep_name[436] = "BOX GUN"
	wep_type[436] = 2
	wep_auto[436] = 0
	wep_load[436] = 18
	wep_cost[436] = 2
	wep_sprt[436] = sprBoxGun
	wep_area[436] = 9
	wep_text[436] = ""
	wep_swap[436] = sndSwapShotgun
	wep_rad[436] = 0;
	
	wep_name[437] = "BOX SLUGGER"
	wep_type[437] = 2
	wep_auto[437] = 0
	wep_load[437] = 42
	wep_cost[437] = 4
	wep_sprt[437] = sprBoxSlugger
	wep_area[437] = 18
	wep_text[437] = ""
	wep_swap[437] = sndSwapShotgun
	wep_rad[437] = 0;
	
	wep_name[438] = "EFFICIENT HEAVY SLUGGER"
	wep_type[438] = 2
	wep_auto[438] = 0
	wep_load[438] = 24
	wep_cost[438] = 3
	wep_sprt[438] = sprEfficientHeavySlugger
	wep_area[438] = 12
	wep_text[438] = "slow but ammo efficient"
	wep_swap[438] = sndSwapShotgun
	wep_rad[438] = 0;
	
	wep_name[439] = "LOVE BUBBLER"
	wep_type[439] = 4
	wep_auto[439] = 0
	wep_load[439] = 21
	wep_cost[439] = 2
	wep_sprt[439] = sprLoveBubbler
	wep_area[439] = 10
	wep_text[439] = "pop goes the bubble"
	wep_swap[439] = sndSwapExplosive
	wep_rad[439] = 0;
	
	wep_name[440] = "THE PENETRATOR"
	wep_type[440] = 3
	wep_auto[440] = 0
	wep_load[440] = 40
	wep_cost[440] = 2
	wep_sprt[440] = sprPenetrator
	wep_area[440] = 6
	wep_text[440] = "damage scales upon each pierce"
	wep_swap[440] = sndSwapBow
	wep_rad[440] = 0;
	
	wep_name[441] = "AUTO PENETRATOR"
	wep_type[441] = 3
	wep_auto[441] = 1
	wep_load[441] = 11
	wep_cost[441] = 2
	wep_sprt[441] = sprAutoPenetrator
	wep_area[441] = 14
	wep_text[441] = "infinite pierce"
	wep_swap[441] = sndSwapBow
	wep_rad[441] = 0;
	
	wep_name[442] = "FLAME SMG"
	wep_type[442] = 1
	wep_auto[442] = 1
	wep_load[442] = 3
	wep_cost[442] = 1.5
	wep_sprt[442] = sprFlameSMG
	wep_area[442] = 5
	wep_text[442] = ""
	wep_swap[442] = sndSwapMachinegun
	wep_rad[442] = 0;
	
	wep_name[443] = "RUSTY SAWED-OFF SHOTGUN"
	wep_type[443] = 2
	wep_auto[443] = 0
	wep_load[443] = 26//28
	wep_cost[443] = 2
	wep_sprt[443] = sprRustySawnOffShotgun
	wep_area[443] = -1
	wep_text[443] = ""
	wep_swap[443] = sndSwapShotgun
	wep_rad[443] = 0;
	
	wep_name[444] = "GOLDEN HAND CANNON"
	wep_type[444] = 1
	wep_auto[444] = 0
	wep_load[444] = 16
	wep_cost[444] = 3
	wep_sprt[444] = sprGoldenHandCannon
	wep_area[444] = -1
	wep_text[444] = ""
	wep_swap[444] = sndSwapPistol
	wep_rad[444] = 0;
	
	wep_name[445] = "HAND CANNON"
	wep_type[445] = 1
	wep_auto[445] = 0
	wep_load[445] = 18
	wep_cost[445] = 3
	wep_sprt[445] = sprHandCannon
	wep_area[445] = 2
	wep_text[445] = ""
	wep_swap[445] = sndSwapPistol
	wep_rad[445] = 0;
	
	wep_name[446] = "AUTO HAND CANNON"
	wep_type[446] = 1
	wep_auto[446] = 1
	wep_load[446] = 5
	wep_cost[446] = 2
	wep_sprt[446] = sprAutoHandCannon
	wep_area[446] = 16
	wep_text[446] = "trusty old revolver"
	wep_swap[446] = sndSwapPistol
	wep_rad[446] = 0;
	
	wep_name[447] = "AUTO MISSILE LAUNCHER"
	wep_type[447] = 4
	wep_auto[447] = 1
	wep_load[447] = 10
	wep_cost[447] = 2.5
	wep_sprt[447] = sprAutoMissileLauncher
	wep_area[447] = 27
	wep_text[447] = "THIS IS METAL"
	wep_swap[447] = sndSwapExplosive
	wep_rad[447] = 0;
	
	wep_name[448] = "FAT SMART GUN"
	wep_type[448] = 1
	wep_auto[448] = 1
	wep_load[448] = 3
	wep_cost[448] = 5
	wep_sprt[448] = sprFatSmartGun
	wep_area[448] = 26
	wep_text[448] = "big brained"
	wep_swap[448] = sndSwapMachinegun
	wep_rad[448] = 0;
	
	wep_name[449] = "POP WALL"
	wep_type[449] = 2
	wep_auto[449] = 0
	wep_load[449] = 14
	wep_cost[449] = 2
	wep_sprt[449] = sprPopWall
	wep_area[449] = 12
	wep_text[449] = "pellets are closer together#with higher accuracy"
	wep_swap[449] = sndSwapShotgun
	wep_rad[449] = 0;
	
	wep_name[450] = "POP LASER"
	wep_type[450] = 2
	wep_auto[450] = 0
	wep_load[450] = 15
	wep_cost[450] = 2
	wep_sprt[450] = sprPopLaser
	wep_area[450] = 14
	wep_text[450] = "more pellets with higher accuracy"
	wep_swap[450] = sndSwapMachinegun
	wep_rad[450] = 0;
	
	wep_name[451] = "JAW CRUSHER"
	wep_type[451] = 2
	wep_auto[451] = 0
	wep_load[451] = 17
	wep_cost[451] = 2
	wep_sprt[451] = sprJawCrusher
	wep_area[451] = 8
	wep_text[451] = ""
	wep_swap[451] = sndSwapShotgun
	wep_rad[451] = 0;
	
	wep_name[452] = "JAW OBLITERATOR"
	wep_type[452] = 2
	wep_auto[452] = 0
	wep_load[452] = 12
	wep_cost[452] = 3.5
	wep_sprt[452] = sprJawObliterator
	wep_area[452] = 19
	wep_text[452] = "why is the jaw so hated?"
	wep_swap[452] = sndSwapShotgun
	wep_rad[452] = 0;
	
	wep_name[453] = "DOUBLE MINI PLASMA RIFLE"
	wep_type[453] = 5
	wep_auto[453] = 1
	wep_load[453] = 6
	wep_cost[453] = 2
	wep_sprt[453] = sprDoubleMiniPlasmaRifle
	wep_area[453] = 10
	wep_text[453] = ""
	wep_swap[453] = sndSwapEnergy
	wep_rad[453] = 0;
	
	wep_name[454] = "FLAME DIRECTOR JAW ERASER"
	wep_type[454] = 2
	wep_auto[454] = 0
	wep_load[454] = 18
	wep_cost[454] = 4
	wep_sprt[454] = sprFlameDirectorJawEraser
	wep_area[454] = 14//6
	wep_text[454] = "jaw is erased"
	wep_swap[454] = sndSwapShotgun
	wep_rad[454] = 0;
	
	wep_name[455] = "SCYTHE"
	wep_type[455] = 0
	wep_auto[455] = 0
	wep_load[455] = 20
	wep_cost[455] = 0
	wep_sprt[455] = sprScythe
	wep_area[455] = 6
	wep_text[455] = "spin attack!"
	wep_swap[455] = sndSwapHammer
	wep_rad[455] = 0;
	
	wep_name[456] = "SUPER SCYTHE"
	wep_type[456] = 0
	wep_auto[456] = 0
	wep_load[456] = 33
	wep_cost[456] = 0
	wep_sprt[456] = sprSuperScythe
	wep_area[456] = 22
	wep_text[456] = "super scythe me"
	wep_swap[456] = sndSwapHammer
	wep_rad[456] = 0;
	
	wep_name[457] = "EXPLOSIVE ASSAULT RIFLE"
	wep_type[457] = 1
	wep_auto[457] = 0
	wep_load[457] = 11
	wep_cost[457] = 5
	wep_sprt[457] = sprExplosiveAssaultRifle
	wep_area[457] = 7
	wep_text[457] = "boom boom pow"
	wep_swap[457] = sndSwapMachinegun
	wep_rad[457] = 0;

	wep_name[458] = "LASER SHOVEL"
	wep_type[458] = 5
	wep_auto[458] = 0
	wep_load[458] = 25
	wep_cost[458] = 5
	wep_sprt[458] = sprLaserShovel
	wep_area[458] = 16
	wep_text[458] = ""
	wep_swap[458] = sndSwapEnergy
	wep_rad[458] = 0;
	
	wep_name[459] = "SPLINTER CRASH"
	wep_type[459] = 3
	wep_auto[459] = 0
	wep_load[459] = 18
	wep_cost[459] = 2
	wep_sprt[459] = sprSplinterCrash
	wep_area[459] = 8
	wep_text[459] = "crash test"
	wep_swap[459] = sndSwapBow
	wep_rad[459] = 0;
	
	wep_name[460] = "BOUNCER CRASH"
	wep_type[460] = 1
	wep_auto[460] = 1
	wep_load[460] = 24
	wep_cost[460] = 8
	wep_sprt[460] = sprBouncerCrash
	wep_area[460] = 7
	wep_text[460] = "don't text and drive"
	wep_swap[460] = sndSwapShotgun
	wep_rad[460] = 0;
	
	wep_name[461] = "GYRO INCINERATOR"
	wep_type[461] = 1
	wep_auto[461] = 0
	wep_load[461] = 70
	wep_cost[461] = 35
	wep_sprt[461] = sprGyroIncinerator
	wep_area[461] = 29
	wep_text[461] = ""
	wep_swap[461] = sndSwapPistol
	wep_rad[461] = 0;
	
	wep_name[462] = "FLAME SPLINTER GUN"
	wep_type[462] = 3
	wep_auto[462] = 0
	wep_load[462] = 20
	wep_cost[462] = 2
	wep_sprt[462] = sprFlameSplinterGun
	wep_area[462] = 8
	wep_text[462] = "hot nails"
	wep_swap[462] = sndSwapBow
	wep_rad[462] = 0;
	
	wep_name[463] = "FLUGGER"
	wep_type[463] = 2
	wep_auto[463] = 0
	wep_load[463] = 18//22
	wep_cost[463] = 1.5
	wep_sprt[463] = sprFlugger
	wep_area[463] = 6
	wep_text[463] = "shotgun shoulders spawns more#pellets upon pierce"
	wep_swap[463] = sndSwapShotgun
	wep_rad[463] = 0;
	
	wep_name[464] = "GATLING FLUGGER"
	wep_type[464] = 2
	wep_auto[464] = 1
	wep_load[464] = 8
	wep_cost[464] = 1.5
	wep_sprt[464] = sprGatlingFlugger
	wep_area[464] = 16
	wep_text[464] = "time to gatle"
	wep_swap[464] = sndSwapShotgun
	wep_rad[464] = 0;
	
	wep_name[465] = "HEAVY CUBER REVOLVER"
	wep_type[465] = 1
	wep_auto[465] = 0
	wep_load[465] = 6
	wep_cost[465] = 3
	wep_sprt[465] = sprHeavyCuberRevolver
	wep_area[465] = 18
	wep_text[465] = "phase through walls"
	wep_swap[465] = sndSwapPistol
	wep_rad[465] = 0;
	
	wep_name[466] = "HEAVY CUBER RIFLE"
	wep_type[466] = 1
	wep_auto[466] = 1
	wep_load[466] = 3
	wep_cost[466] = 3
	wep_sprt[466] = sprHeavyCuberRifle
	wep_area[466] = 21
	wep_text[466] = "square bullets"
	wep_swap[466] = sndSwapPistol
	wep_rad[466] = 0;
	
	wep_name[467] = "BOOM BOOM CANNON"
	wep_type[467] = 4
	wep_auto[467] = 0
	wep_load[467] = 25
	wep_cost[467] = 2
	wep_sprt[467] = sprBoomBoomCannon
	wep_area[467] = 15
	wep_text[467] = "10/10"
	wep_swap[467] = sndSwapExplosive
	wep_rad[467] = 0;
	
	wep_name[468] = "ULTRA MORPH-O-RAY"
	wep_type[468] = 5
	wep_auto[468] = 1
	wep_load[468] = 8
	wep_cost[468] = 1
	wep_sprt[468] = sprUltraMorphORay
	wep_area[468] = 28
	wep_text[468] = ""
	wep_swap[468] = sndSwapEnergy
	wep_rad[468] = 7;
	
	wep_name[469] = "TOXIC-O-RAY"
	wep_type[469] = 4
	wep_auto[469] = 1
	wep_load[469] = 12
	wep_cost[469] = 1
	wep_sprt[469] = sprToxicORay
	wep_area[469] = 11
	wep_text[469] = "stinky sheep"
	wep_swap[469] = sndSwapExplosive  
	wep_rad[469] = 0;
	
	wep_name[470] = "FROST LINE"
	wep_type[470] = 4
	wep_auto[470] = 0
	wep_load[470] = 17
	wep_cost[470] = 2.5
	wep_sprt[470] = sprLineFrost
	wep_area[470] = 15
	wep_text[470] = "don't get in the line of fire"
	wep_swap[470] = sndSwapFlame
	wep_rad[470] = 0;
	
	wep_name[471] = "MUCHAS NIEVE"
	wep_type[471] = 4
	wep_auto[471] = 0
	wep_load[471] = 350
	wep_cost[471] = 45
	wep_sprt[471] = sprMuchasNieve
	wep_area[471] = 33
	wep_text[471] = "je ne parle pas de francais"
	wep_swap[471] = sndSwapDragon
	wep_rad[471] = 0;
	
	wep_name[472] = "ULTRA HEAVY SLUGGER"
	wep_type[472] = 2
	wep_auto[472] = 0
	wep_load[472] = 8
	wep_cost[472] = 3
	wep_sprt[472] = sprUltraHeavySlugger
	wep_area[472] = 27
	wep_text[472] = "supermassive"
	wep_swap[472] = sndSwapShotgun
	wep_rad[472] = 13;
	
	wep_name[473] = "ULTRA BAZOOKA"
	wep_type[473] = 4
	wep_auto[473] = 0
	wep_load[473] = 25
	wep_cost[473] = 2
	wep_sprt[473] = sprUltraBazooka
	wep_area[473] = 27
	wep_text[473] = ""
	wep_swap[473] = sndSwapExplosive
	wep_rad[473] = 12;
	
	wep_name[474] = "FRAZER"
	wep_type[474] = 4
	wep_auto[474] = 1
	wep_load[474] = 18
	wep_cost[474] = 1
	wep_sprt[474] = sprFrazer
	wep_area[474] = 13
	wep_text[474] = "frost flame"
	wep_swap[474] = sndSwapFlame
	wep_rad[474] = 0;
	
	wep_name[475] = "ACCELERATOR"
	wep_type[475] = 1
	wep_auto[475] = 1
	wep_load[475] = 7
	wep_cost[475] = 2
	wep_sprt[475] = sprAccelerator
	wep_area[475] = 7
	wep_text[475] = "damage increases as bullet exists longer"
	wep_swap[475] = sndSwapPistol
	wep_rad[475] = 0;
	
	wep_name[476] = "AUTO ACCELERATOR"
	wep_type[476] = 1
	wep_auto[476] = 1
	wep_load[476] = 3
	wep_cost[476] = 2
	wep_sprt[476] = sprAutoAccelerator
	wep_area[476] = 18
	wep_text[476] = "higher damage to enemies further away"
	wep_swap[476] = sndSwapPistol
	wep_rad[476] = 0;
	
	wep_name[477] = "HEAVY SLEDGEHAMMER"
	wep_type[477] = 0
	wep_auto[477] = 0
	wep_load[477] = 55
	wep_cost[477] = 0
	wep_sprt[477] = sprHeavySledgeHammer
	wep_area[477] = 4
	wep_text[477] = "THATS A LOTTA DAMAGE!"
	wep_swap[477] = sndSwapHammer
	wep_rad[477] = 0;
	
	wep_name[478] = "ULTRA LOLLIPOP"
	wep_type[478] = 0
	wep_auto[478] = 0
	wep_load[478] = 32
	wep_cost[478] = 0
	wep_sprt[478] = sprUltraLollipop
	wep_area[478] = 27
	wep_text[478] = "lime flavour"
	wep_swap[478] = sndSwapHammer
	wep_rad[478] = 15;
	
	wep_name[479] = "FROST SWORD GUN"
	wep_type[479] = 3
	wep_auto[479] = 1
	wep_load[479] = 15
	wep_cost[479] = 2.5
	wep_sprt[479] = sprFrostSwordGun
	wep_area[479] = 11
	wep_text[479] = "add homing!"
	wep_swap[479] = sndSwapSword
	wep_rad[479] = 0;
	
	wep_name[480] = "SCYTHE GUN"
	wep_type[480] = 3
	wep_auto[480] = 1
	wep_load[480] = 14
	wep_cost[480] = 3
	wep_sprt[480] = sprScytheGun
	wep_area[480] = 12
	wep_text[480] = "spin spin spin"
	wep_swap[480] = sndSwapSword
	wep_rad[480] = 0;
	
	wep_name[481] = "EXPLOSION FLAIL"
	wep_type[481] = 4
	wep_auto[481] = 0
	wep_load[481] = 31
	wep_cost[481] = 2
	wep_sprt[481] = sprExplosionFlail
	wep_area[481] = 12
	wep_text[481] = ""
	wep_swap[481] = sndSwapSword
	wep_rad[481] = 0;
	
	wep_name[482] = "BOOM-O-RAY"
	wep_type[482] = 4
	wep_auto[482] = 1
	wep_load[482] = 7
	wep_cost[482] = 1.25
	wep_sprt[482] = sprBoomORay
	wep_area[482] = 14
	wep_text[482] = "the ray of dank"
	wep_swap[482] = sndSwapExplosive
	wep_rad[482] = 0;
	
	wep_name[483] = "DISPERSE GRENADE LAUNCHER"
	wep_type[483] = 4
	wep_auto[483] = 1
	wep_load[483] = 30
	wep_cost[483] = 6
	wep_sprt[483] = sprDisperseNader
	wep_area[483] = 17
	wep_text[483] = "grass cannon"
	wep_swap[483] = sndSwapExplosive
	wep_rad[483] = 0;
	
	wep_name[484] = "GHOST DAGGER"
	wep_type[484] = 0
	wep_auto[484] = 0
	wep_load[484] = 10
	wep_cost[484] = 0
	wep_sprt[484] = sprGhostDagger
	wep_area[484] = 14
	wep_text[484] = "ghastly"
	wep_swap[484] = sndSwapSword
	wep_rad[484] = 0;
	
	wep_name[485] = "POTSHOT"
	wep_type[485] = 1
	wep_auto[485] = 1
	wep_load[485] = 14
	wep_cost[485] = 4
	wep_sprt[485] = sprPotShot
	wep_area[485] = 5
	wep_text[485] = "melting pot"
	wep_swap[485] = sndSwapMachinegun
	wep_rad[485] = 0;
	
	wep_name[486] = "LIGHTNING JACKHAMMER"
	wep_type[486] = 5
	wep_auto[486] = 1
	wep_load[486] = 6
	wep_cost[486] = 1
	wep_sprt[486] = sprLightningJackHammer
	wep_area[486] = 17
	wep_text[486] = "lightning strikes five times"
	wep_swap[486] = sndSwapMotorized
	wep_rad[486] = 0;
	
	wep_name[487] = "ULTRA JACKHAMMER"
	wep_type[487] = 5
	wep_auto[487] = 1
	wep_load[487] = 5
	wep_cost[487] = 1
	wep_sprt[487] = sprUltraJackHammer
	wep_area[487] = 26
	wep_text[487] = ""
	wep_swap[487] = sndSwapMotorized
	wep_rad[487] = 4;
	
	wep_name[488] = "SHLOGGER"
	wep_type[488] = 2
	wep_auto[488] = 0
	wep_load[488] = 30
	wep_cost[488] = 5
	wep_sprt[488] = sprShlogger
	wep_area[488] = 11
	wep_text[488] = "shotgun slugger"
	wep_swap[488] = sndSwapShotgun
	wep_rad[488] = 0;
	
	wep_name[489] = "LIGHTNING YOYO GUN"
	wep_type[489] = 5
	wep_auto[489] = 1
	wep_load[489] = 30
	wep_cost[489] = 3
	wep_sprt[489] = sprLightningYoyoGun
	wep_area[489] = 14
	wep_text[489] = ""
	wep_swap[489] = sndSwapEnergy
	wep_rad[489] = 0;
	
	wep_name[490] = "HEAVY POP GUN"
	wep_type[490] = 1
	wep_auto[490] = 1
	wep_load[490] = 2
	wep_cost[490] = 2
	wep_sprt[490] = sprHeavyPopGun
	wep_area[490] = 9
	wep_text[490] = "bounces increase speed"
	wep_swap[490] = sndSwapMachinegun
	wep_rad[490] = 0;
	
	wep_name[491] = "HEAVY POP RIFLE"
	wep_type[491] = 1
	wep_auto[491] = 1
	wep_load[491] = 9
	wep_cost[491] = 4
	wep_sprt[491] = sprHeavyPopRifle
	wep_area[491] = 10
	wep_text[491] = "faster pellets"
	wep_swap[491] = sndSwapMachinegun
	wep_rad[491] = 0;
	
	wep_name[492] = "SPLINTER MACE"
	wep_type[492] = 3
	wep_auto[492] = 0
	wep_load[492] = 22
	wep_cost[492] = 1
	wep_sprt[492] = sprSpikeMace
	wep_area[492] = 6
	wep_text[492] = "staple in some braincells"
	wep_swap[492] = sndSwapHammer
	wep_rad[492] = 0;
	
	wep_name[493] = "HEAVY SHOTGUN"
	wep_type[493] = 2
	wep_auto[493] = 0
	wep_load[493] = 18
	wep_cost[493] = 2.5
	wep_sprt[493] = sprHeavyShotgun
	wep_area[493] = 13
	wep_text[493] = ""
	wep_swap[493] = sndSwapShotgun
	wep_rad[493] = 0;
	
	wep_name[494] = "ULTRA GRENADE LAUNCHER"
	wep_type[494] = 4
	wep_auto[494] = 1
	wep_load[494] = 16
	wep_cost[494] = 1
	wep_sprt[494] = sprUltraNader
	wep_area[494] = 22
	wep_text[494] = "suck"
	wep_swap[494] = sndSwapExplosive
	wep_rad[494] = 19;
	
	wep_name[495] = "SHEEP ON A STICK"
	wep_type[495] = 5
	wep_auto[495] = 0
	wep_load[495] = 11
	wep_cost[495] = 1
	wep_sprt[495] = sprSheepOnStick
	wep_area[495] = 11
	wep_text[495] = "strange hobbies"
	wep_swap[495] = sndSwapEnergy
	wep_rad[495] = 0;
	
	wep_name[496] = "HEAVY AUTO SHOTGUN"
	wep_type[496] = 2
	wep_auto[496] = 1
	wep_load[496] = 4
	wep_cost[496] = 2.5
	wep_sprt[496] = sprHeavyAutoShotgun
	wep_area[496] = 23
	wep_text[496] = ""
	wep_swap[496] = sndSwapShotgun
	wep_rad[496] = 0;
	
	wep_name[497] = "SUPER SPLINTER GUN"
	wep_type[497] = 3
	wep_auto[497] = 0
	wep_load[497] = 33//42 normally
	wep_cost[497] = 2
	wep_sprt[497] = sprSuperSplinterGun
	wep_area[497] = 7
	wep_text[497] = "this will hurt even more"
	wep_swap[497] = sndSwapBow
	wep_rad[497] = 0;
	
	wep_name[498] = "DEVASTATOR"
	wep_type[498] = 5
	wep_auto[498] = 0
	wep_load[498] = 53//60 normally
	wep_cost[498] = 8
	wep_sprt[498] = sprDevastator
	wep_area[498] = 15
	wep_text[498] = "a devestating development"
	wep_swap[498] = sndSwapEnergy
	wep_rad[498] = 0;
	
	wep_name[499] = "ANNIHILATOR"
	wep_type[499] = 4
	wep_auto[499] = 0
	wep_load[499] = 50//60 normally
	wep_cost[499] = 6
	wep_sprt[499] = sprAnnihilator
	wep_area[499] = 13
	wep_text[499] = "annihilate them!"
	wep_swap[499] = sndSwapExplosive
	wep_rad[499] = 0;
	
	wep_name[500] = "LIGHTNING CANNON"
	wep_type[500] = 5
	wep_auto[500] = 1
	wep_load[500] = 34//1.13 seconds
	wep_cost[500] = 8
	wep_sprt[500] = sprLightningCannon
	wep_area[500] = 15
	wep_text[500] = "never strikes twice"
	wep_swap[500] = sndSwapEnergy
	wep_rad[500] = 0;
	
	wep_name[501] = "FLAME REVOLVER"
	wep_type[501] = 1
	wep_auto[501] = 0
	wep_load[501] = 7
	wep_cost[501] = 1.5
	wep_sprt[501] = sprFlameRevolver
	wep_area[501] = 2
	wep_text[501] = "one and a half bullet cost"
	wep_swap[501] = sndSwapPistol
	wep_rad[501] = 0;
	
	wep_name[502] = "BOW"
	wep_type[502] = 3
	wep_auto[502] = 0
	wep_load[502] = 21
	wep_cost[502] = 1
	wep_sprt[502] = sprBow
	wep_area[502] = 2
	wep_text[502] = "hold fire to charge#and deal more damage"
	wep_swap[502] = sndSwapBow
	wep_rad[502] = 0;
	
	wep_name[503] = "ULTRA BOW"
	wep_type[503] = 3
	wep_auto[503] = 0
	wep_load[503] = 13//17
	wep_cost[503] = 1.5
	wep_sprt[503] = sprUltraBow
	wep_area[503] = 19
	wep_text[503] = "hold for more power"
	wep_swap[503] = sndSwapBow
	wep_rad[503] = 12;//12
	
	wep_name[504] = "ULTRA WAZER RIFLE"
	wep_type[504] = 5
	wep_auto[504] = 1
	wep_load[504] = 7
	wep_cost[504] = 1
	wep_sprt[504] = sprUltraWazerRifle
	wep_area[504] = 25
	wep_text[504] = "wobbly bobbly"
	wep_swap[504] = sndSwapEnergy
	wep_rad[504] = 4;
	
	wep_name[505] = "FROST-O-RAY"
	wep_type[505] = 4
	wep_auto[505] = 1
	wep_load[505] = 9
	wep_cost[505] = 1
	wep_sprt[505] = sprFrostORay
	wep_area[505] = 14
	wep_text[505] = "breezy"
	wep_swap[505] = sndSwapExplosive
	wep_rad[505] = 0;
	
	wep_name[506] = "ULTRA SWORD GUN"
	wep_type[506] = 3
	wep_auto[506] = 1
	wep_load[506] = 12
	wep_cost[506] = 3
	wep_sprt[506] = sprUltraSwordGun
	wep_area[506] = 27
	wep_text[506] = "we have gone too far!"
	wep_swap[506] = sndSwapSword
	wep_rad[506] = 12;
	
	wep_name[507] = "ULTRA SWORD"
	wep_type[507] = 0
	wep_auto[507] = 0
	wep_load[507] = 10
	wep_cost[507] = 0
	wep_sprt[507] = sprUltraSword
	wep_area[507] = 24
	wep_text[507] = "meta slayer"
	wep_swap[507] = sndSwapEnergy
	wep_rad[507] = 9;
	
	wep_name[508] = "LASER YOYO GUN"
	wep_type[508] = 5
	wep_auto[508] = 1
	wep_load[508] = 30
	wep_cost[508] = 3
	wep_sprt[508] = sprLaserYoyoGun
	wep_area[508] = 12
	wep_text[508] = "lightshow yo yo"
	wep_swap[508] = sndSwapEnergy
	wep_rad[508] = 0;
	
	wep_name[509] = "EXPLOSIVE BLADE GUN"
	wep_type[509] = 4
	wep_auto[509] = 1
	wep_load[509] = 14
	wep_cost[509] = 1.5
	wep_sprt[509] = sprExplosiveBladeGun
	wep_area[509] = 13
	wep_text[509] = "handle with care"
	wep_swap[509] = sndSwapBow
	wep_rad[509] = 0;
	
	wep_name[510] = "ULTRA ASSAULT SHOTGUN"
	wep_type[510] = 2
	wep_auto[510] = 0
	wep_load[510] = 30//36
	wep_cost[510] = 7
	wep_sprt[510] = sprUltraAssaultShotgun
	wep_area[510] = 27
	wep_text[510] = ""
	wep_swap[510] = sndSwapShotgun
	wep_rad[510] = 25;//14*3 = 42
	
	wep_name[511] = "SUPER DISC GUN"
	wep_type[511] = 3
	wep_auto[511] = 1
	wep_load[511] = 12
	wep_cost[511] = 3
	wep_sprt[511] = sprSuperDiscGun
	wep_area[511] = -1
	wep_text[511] = "mistakes were made"
	wep_swap[511] = sndSwapShotgun
	wep_rad[511] = 0;//retail 14
	
	wep_name[512] = "GIANT PANDA STICK"
	wep_type[512] = 0
	wep_auto[512] = 0
	wep_load[512] = 13;
	wep_cost[512] = 0
	wep_sprt[512] = sprGiantPandaStick
	wep_area[512] = -1
	wep_text[512] = "big stick"
	wep_swap[512] = sndSwapHammer
	wep_rad[512] = 0;
	
	wep_name[513] = "ULTRA MEGA LASER PISTOL"
	wep_type[513] = 5
	wep_auto[513] = 0
	wep_load[513] = 8
	wep_cost[513] = 3.5
	wep_sprt[513] = sprUltraMegaLaserPistol
	wep_area[513] = 23
	wep_text[513] = "wall obliterator"
	wep_swap[513] = sndSwapEnergy
	wep_rad[513] = 14;
	
	wep_name[514] = "HEAVY SHOVEL"
	wep_type[514] = 0
	wep_auto[514] = 0
	wep_load[514] = 45
	wep_cost[514] = 0
	wep_sprt[514] = sprHeavyShovel
	wep_area[514] = 7//4 originally?
	wep_text[514] = "it can dig!"
	wep_swap[514] = sndSwapHammer
	wep_rad[514] = 0;
	
	wep_name[515] = "SUPER FLUGGER"
	wep_type[515] = 2
	wep_auto[515] = 0
	wep_load[515] = 38
	wep_cost[515] = 7
	wep_sprt[515] = sprSuperFlugger
	wep_area[515] = 16
	wep_text[515] = "ffffffffffffffffffffffffffffffffffffffffff"
	wep_swap[515] = sndSwapShotgun
	wep_rad[515] = 0;
	
	wep_name[516] = "SUPER PENETRATOR"
	wep_type[516] = 3
	wep_auto[516] = 0
	wep_load[516] = 33
	wep_cost[516] = 8
	wep_sprt[516] = sprSuperPenetrator
	wep_area[516] = 14
	wep_text[516] = "really hard penetration!"
	wep_swap[516] = sndSwapBow
	wep_rad[516] = 0;
	
	wep_name[517] = "CLUB"
	wep_type[517] = 0
	wep_auto[517] = 0
	wep_load[517] = 27
	wep_cost[517] = 0
	wep_sprt[517] = sprClub
	wep_area[517] = 3
	wep_text[517] = "welcome to the club"
	wep_swap[517] = sndSwapHammer
	wep_rad[517] = 0;
	
	wep_name[518] = "SEEKER MACHINEGUN"
	wep_type[518] = 1
	wep_auto[518] = 1
	wep_load[518] = 4
	wep_cost[518] = 3.5
	wep_sprt[518] = sprSeekerMachinegun
	wep_area[518] = 9
	wep_text[518] = "auto seeking"
	wep_swap[518] = sndSwapMachinegun
	wep_rad[518] = 0;
	
	wep_name[519] = "DOUBLE SEEKER MACHINEGUN"
	wep_type[519] = 1
	wep_auto[519] = 1
	wep_load[519] = 3
	wep_cost[519] = 7
	wep_sprt[519] = sprDoubleSeekerMachinegun
	wep_area[519] = 15
	wep_text[519] = "seek and destroy"
	wep_swap[519] = sndSwapMachinegun
	wep_rad[519] = 0;
	
	wep_name[520] = "BULLET CRASH"
	wep_type[520] = 1
	wep_auto[520] = 1
	wep_load[520] = 5
	wep_cost[520] = 7
	wep_sprt[520] = sprBulletCrash
	wep_area[520] = 9
	wep_text[520] = "ohno we crashed"
	wep_swap[520] = sndSwapMachinegun
	wep_rad[520] = 0;
	
	wep_name[521] = "SUPER CHUNKY BLADE GUN"
	wep_type[521] = 3
	wep_auto[521] = 1
	wep_load[521] = 50
	wep_cost[521] = 8
	wep_sprt[521] = sprSuperChunkyBladeGun
	wep_area[521] = 24
	wep_text[521] = "majestic blades"
	wep_swap[521] = sndSwapBow
	wep_rad[521] = 0;
	
	wep_name[522] = "SWARM MINIGUN"
	wep_type[522] = 1
	wep_auto[522] = 1
	wep_load[522] = 1
	wep_cost[522] = 1.5
	wep_sprt[522] = sprSwarmMinigun
	wep_area[522] = 12
	wep_text[522] = "brrrrppppbeeeeeees"
	wep_swap[522] = sndSwapMachinegun
	wep_rad[522] = 0;
	
	wep_name[523] = "LIGHTNING STRIKER"
	wep_type[523] = 5
	wep_auto[523] = 1
	wep_load[523] = 38
	wep_cost[523] = 4
	wep_sprt[523] = sprLightningStriker
	wep_area[523] = 11
	wep_text[523] = "lightning strikes thrice"
	wep_swap[523] = sndSwapEnergy
	wep_rad[523] = 0;
	
	wep_name[524] = "ULTRA LIGHTNING STRIKER"
	wep_type[524] = 5
	wep_auto[524] = 1
	wep_load[524] = 38
	wep_cost[524] = 8
	wep_sprt[524] = sprUltraLightningStriker
	wep_area[524] = 24
	wep_text[524] = "green green green green"
	wep_swap[524] = sndSwapEnergy
	wep_rad[524] = 50;
	
	wep_name[525] = "MUCHAS RAYOS"
	wep_type[525] = 5
	wep_auto[525] = 0
	wep_load[525] = 330
	wep_cost[525] = 45
	wep_sprt[525] = sprMuchasRayos
	wep_area[525] = 33
	wep_text[525] = "avec moi"
	wep_swap[525] = sndSwapEnergy
	wep_rad[525] = 0;
	
	wep_name[526] = "INFINITY JACKHAMMER"
	wep_type[526] = 4
	wep_auto[526] = 1
	wep_load[526] = 12
	wep_cost[526] = 0
	wep_sprt[526] = sprInfinityJackHammer
	wep_area[526] = 17
	wep_text[526] = "never stop hammer time"
	wep_swap[526] = sndSwapMotorized
	wep_rad[526] = 0;
	
	wep_name[527] = "GOLDEN NUKE LAUNCHER"
	wep_type[527] = 4
	wep_auto[527] = 0
	wep_load[527] = 47
	wep_cost[527] = 3
	wep_sprt[527] = sprGoldNukeLauncher
	wep_area[527] = 20
	wep_text[527] = "luxury apocalypse starter"
	wep_swap[527] = sndSwapExplosive
	wep_rad[527] = 0;
	
	wep_name[528] = "SHOVEL CRASH"
	wep_type[528] = 0
	wep_auto[528] = 0
	wep_load[528] = 43
	wep_cost[528] = 0
	wep_sprt[528] = sprShovelCrash
	wep_area[528] = 12//4 originally?
	wep_text[528] = "beautifull flower"
	wep_swap[528] = sndSwapHammer
	wep_rad[528] = 0;
	
	wep_name[529] = "LIGHTNING CRASH"
	wep_type[529] = 5
	wep_auto[529] = 1
	wep_load[529] = 23
	wep_cost[529] = 5
	wep_sprt[529] = sprLightningCrash
	wep_area[529] = 14
	wep_text[529] = "crash test"
	wep_swap[529] = sndSwapBow
	wep_rad[529] = 0;
	
	wep_name[530] = "ULTRA HEAVY REVOLVER"
	wep_type[530] = 1
	wep_auto[530] = 1
	wep_load[530] = 5
	wep_cost[530] = 3
	wep_sprt[530] = sprUltraHeavyRevolver
	wep_area[530] = 26
	wep_text[530] = "knockback!"
	wep_swap[530] = sndSwapMachinegun
	wep_rad[530] = 7;//retail 4
	
	wep_name[531] = "COFFEE CANNON"
	wep_type[531] = 1
	wep_auto[531] = 1
	wep_load[531] = 8
	wep_cost[531] = 2
	wep_sprt[531] = sprCoffeeCannon
	wep_area[531] = 16
	wep_text[531] = "I fucking love coffee man"
	wep_swap[531] = sndSwapMachinegun
	wep_rad[531] = 0;
	
	wep_name[532] = "SUPER BOUNCER BAZOOKA"
	wep_type[532] = 4
	wep_auto[532] = 0
	wep_load[532] = 28
	wep_cost[532] = 4.5
	wep_sprt[532] = sprSuperBouncerBazooka
	wep_area[532] = 14
	wep_text[532] = "still can't resist 2022"
	wep_swap[532] = sndSwapExplosive
	wep_rad[532] = 0;
	
	wep_name[533] = "SUPER HEAVY SLUGGER"
	wep_type[533] = 2
	wep_auto[533] = 0
	wep_load[533] = 38
	wep_cost[533] = 10
	wep_sprt[533] = sprSuperHeavySlugger
	wep_area[533] = 30
	wep_text[533] = "lets go dude"
	wep_swap[533] = sndSwapShotgun
	wep_rad[533] = 0;
	
	wep_name[534] = "SUPER GYRO BURSTER"
	wep_type[534] = 1
	wep_auto[534] = 0
	wep_load[534] = 170
	wep_cost[534] = 135
	wep_sprt[534] = sprSuperGyroBurster
	wep_area[534] = 31
	wep_text[534] = "bullets for months"
	wep_swap[534] = sndSwapPistol
	wep_rad[534] = 0;
	
	wep_name[535] = "LASER CRASH"
	wep_type[535] = 5
	wep_auto[535] = 0
	wep_load[535] = 18
	wep_cost[535] = 4
	wep_sprt[535] = sprLaserCrash
	wep_area[535] = 9
	wep_text[535] = "crash blast"
	wep_swap[535] = sndSwapBow
	wep_rad[535] = 0;
	
	wep_name[536] = "SEEKER CANNON"
	wep_type[536] = 3
	wep_auto[536] = 0
	wep_load[536] = 48
	wep_cost[536] = 8
	wep_sprt[536] = sprSeekerCannon
	wep_area[536] = 12
	wep_text[536] = "seek and deploy"
	wep_swap[536] = sndSwapEnergy
	wep_rad[536] = 0;
	
	wep_name[537] = "SUPER SEEKER CANNON"
	wep_type[537] = 3
	wep_auto[537] = 0
	wep_load[537] = 350
	wep_cost[537] = 22
	wep_sprt[537] = sprSuperSeekerCannon
	wep_area[537] = 18
	wep_text[537] = "SSC!"
	wep_swap[537] = sndSwapEnergy
	wep_rad[537] = 0;
	
	wep_name[538] = "SUPER BLOOD CANNON"
	wep_type[538] = 4
	wep_auto[538] = 0
	wep_load[538] = 350
	wep_cost[538] = 23
	wep_sprt[538] = sprSuperBloodCannon
	wep_area[538] = 19
	wep_text[538] = "SBC!"
	wep_swap[538] = sndSwapEnergy
	wep_rad[538] = 0;
	
	wep_name[539] = "HEAVY BLOOD BULLET SHOTGUN"
	wep_type[539] = 1
	wep_auto[539] = 0
	wep_load[539] = 22
	wep_cost[539] = 10
	wep_sprt[539] = sprHeavyBloodBulletShotgun
	wep_area[539] = 8
	wep_text[539] = "aorta"
	wep_swap[539] = sndSwapShotgun
	wep_rad[539] = 0;
	
	wep_name[540] = "MISSILE CANNON"
	wep_type[540] = 4
	wep_auto[540] = 0
	wep_load[540] = 55
	wep_cost[540] = 8
	wep_sprt[540] = sprMissileCannon
	wep_area[540] = 15
	wep_text[540] = "RIP YA A NEW ONE"
	wep_swap[540] = sndSwapEnergy
	wep_rad[540] = 0;
	
	wep_name[541] = "SUPER MISSILE CANNON"
	wep_type[541] = 4
	wep_auto[541] = 0
	wep_load[541] = 400
	wep_cost[541] = 26
	wep_sprt[541] = sprSuperMissileCannon
	wep_area[541] = 22
	wep_text[541] = "the world eater"
	wep_swap[541] = sndSwapEnergy
	wep_rad[541] = 0;
	
	wep_name[542] = "KRAKEN CANNON"
	wep_type[542] = 4
	wep_auto[542] = 0
	wep_load[542] = 54
	wep_cost[542] = 8
	wep_sprt[542] = sprKrakenCannon
	wep_area[542] = 14
	wep_text[542] = "from the depths it came"
	wep_swap[542] = sndSwapEnergy
	wep_rad[542] = 0;
	
	wep_name[543] = "SUPER KRAKEN CANNON"
	wep_type[543] = 4
	wep_auto[543] = 0
	wep_load[543] = 360
	wep_cost[543] = 25
	wep_sprt[543] = sprSuperKrakenCannon
	wep_area[543] = 22
	wep_text[543] = "mother of all kraken!"
	wep_swap[543] = sndSwapEnergy
	wep_rad[543] = 0;
	
	wep_name[544] = "BOWLING BALL LAUNCHER"
	wep_type[544] = 3
	wep_auto[544] = 0
	wep_load[544] = 45
	wep_cost[544] = 3
	wep_sprt[544] = sprBowlingBallLauncher
	wep_area[544] = 18
	wep_text[544] = "oke dude very funny"
	wep_swap[544] = sndSwapEnergy
	wep_rad[544] = 0;
	
	wep_name[545] = "SUPER LIGHTNING CROSSBOW"
	wep_type[545] = 3
	wep_auto[545] = 1
	wep_load[545] = 38
	wep_cost[545] = 6
	wep_sprt[545] = sprSuperLightningCrossbow
	wep_area[545] = 12
	wep_text[545] = ""
	wep_swap[545] = sndSwapBow
	wep_rad[545] = 0;
	
	wep_name[546] = "SPLIT SEEKER RIFLE"
	wep_type[546] = 3
	wep_auto[546] = 0
	wep_load[546] = 26
	wep_cost[546] = 2
	wep_sprt[546] = sprSplitSeekerRifle
	wep_area[546] = 8
	wep_text[546] = "got ya now"
	wep_swap[546] = sndSwapBow
	wep_rad[546] = 0;
	
	wep_name[547] = "BLOOD SHORTGUN"
	wep_type[547] = 1
	wep_auto[547] = 0
	wep_load[547] = 13
	wep_cost[547] = 8
	wep_sprt[547] = sprBloodShortgun
	wep_area[547] = 0
	wep_text[547] = "blech"
	wep_swap[547] = sndSwapShotgun
	wep_rad[547] = 0;
	
	wep_name[548] = "BLOOD HAMMER"
	wep_type[548] = 0
	wep_auto[548] = 0
	wep_load[548] = 19
	wep_cost[548] = 0
	wep_sprt[548] = sprBloodHammer
	wep_area[548] = 10
	wep_text[548] = "don't miss"
	wep_swap[548] = sndSwapExplosive
	wep_rad[548] = 0;
	
	wep_name[549] = "HEAVY BLOOD HAMMER"
	wep_type[549] = 0
	wep_auto[549] = 0
	wep_load[549] = 18
	wep_cost[549] = 0
	wep_sprt[549] = sprHeavyBloodHammer
	wep_area[549] = 24
	wep_text[549] = "this hurts you more#than it hurts me"
	wep_swap[549] = sndSwapExplosive
	wep_rad[549] = 0;
	
	wep_name[550] = "EXPLOSIVE MINIGUN"
	wep_type[550] = 1
	wep_auto[550] = 1
	wep_load[550] = 1
	wep_cost[550] = 1.5
	wep_sprt[550] = sprExplosiveMinigun
	wep_area[550] = 23
	wep_text[550] = "drilling and grilling"
	wep_swap[550] = sndSwapMachinegun
	wep_rad[550] = 0;
	
	wep_name[551] = "O"
	wep_type[551] = 1
	wep_auto[551] = 1
	wep_load[551] = 6
	wep_cost[551] = 5
	wep_sprt[551] = sprOGun
	wep_area[551] = 27
	wep_text[551] = "O"
	wep_swap[551] = sndSwapPistol
	wep_rad[551] = 0;
	
	wep_name[552] = "SUPER WRONG DIRECTION"
	wep_type[552] = 3
	wep_auto[552] = 0
	wep_load[552] = 55
	wep_cost[552] = 5
	wep_sprt[552] = sprSuperWrongDirection
	wep_area[552] = 14
	wep_text[552] = "lost completly"
	wep_swap[552] = sndSwapBow
	wep_rad[552] = 0;
	
	wep_name[553] = "BULLET SHOVEL"
	wep_type[553] = 1
	wep_auto[553] = 0
	wep_load[553] = 20
	wep_cost[553] = 14
	wep_sprt[553] = sprBulletShovel
	wep_area[553] = 15
	wep_text[553] = ""
	wep_swap[553] = sndSwapSword
	wep_rad[553] = 0;
	
	wep_name[554] = "TRIPLE ASSAULT RIFLE"
	wep_type[554] = 1
	wep_auto[554] = 0
	wep_load[554] = 10
	wep_cost[554] = 8
	wep_sprt[554] = sprTripleAssaultRifle
	wep_area[554] = 6
	wep_text[554] = ""
	wep_swap[554] = sndSwapMachinegun
	wep_rad[554] = 0;
	
	wep_name[555] = "SNAKE GUN"
	wep_type[555] = 1
	wep_auto[555] = 1
	wep_load[555] = 10
	wep_cost[555] = 5
	wep_sprt[555] = sprSnakeGun
	wep_area[555] = 5
	wep_text[555] = "ssssssssssssssssssssssssss"
	wep_swap[555] = sndSwapMachinegun
	wep_rad[555] = 0;
	
	wep_name[556] = "ELIMINATOR"
	wep_type[556] = 3
	wep_auto[556] = 0
	wep_load[556] = 55
	wep_cost[556] = 8
	wep_sprt[556] = sprEliminator
	wep_area[556] = 16
	wep_text[556] = "eliminate! eliminate!"
	wep_swap[556] = sndSwapEnergy
	wep_rad[556] = 0;
	
	wep_name[557] = "HEAVY DOUBLE SHOTGUN"
	wep_type[557] = 2
	wep_auto[557] = 0
	wep_load[557] = 28
	wep_cost[557] = 5
	wep_sprt[557] = sprDoubleHeavyShotgun
	wep_area[557] = 16
	wep_text[557] = ""
	wep_swap[557] = sndSwapShotgun
	wep_rad[557] = 0;
	
	wep_name[558] = "DOUBLE ACCELERATOR"
	wep_type[558] = 1
	wep_auto[558] = 0
	wep_load[558] = 5
	wep_cost[558] = 4
	wep_sprt[558] = sprDoubleAccelerator
	wep_area[558] = 13
	wep_text[558] = "increases damage overtime"
	wep_swap[558] = sndSwapPistol
	wep_rad[558] = 0;
	
	wep_name[559] = "ASSAULT FLUGGER"
	wep_type[559] = 2
	wep_auto[559] = 0
	wep_load[559] = 35//18*3
	wep_cost[559] = 4.5
	wep_sprt[559] = sprAssaultFlugger
	wep_area[559] = 11
	wep_text[559] = "pierces!"
	wep_swap[559] = sndSwapShotgun
	wep_rad[559] = 0;
	
	wep_name[560] = "SPEAR LAUNCHER"
	wep_type[560] = 3
	wep_auto[560] = 0
	wep_load[560] = 33
	wep_cost[560] = 1.5
	wep_sprt[560] = sprSpearLauncher
	wep_area[560] = 2
	wep_text[560] = "one of the oldest weapons"
	wep_swap[560] = sndSwapBow
	wep_rad[560] = 0;
	
	wep_name[561] = "SPLINTER SPEAR LAUNCHER"
	wep_type[561] = 3
	wep_auto[561] = 0
	wep_load[561] = 26
	wep_cost[561] = 2
	wep_sprt[561] = sprSplinterSpearLauncher
	wep_area[561] = 7
	wep_text[561] = "spear that splinters"
	wep_swap[561] = sndSwapBow
	wep_rad[561] = 0;
	
	wep_name[562] = "AUTO SPEAR LAUNCHER"
	wep_type[562] = 3
	wep_auto[562] = 1
	wep_load[562] = 9
	wep_cost[562] = 1.5
	wep_sprt[562] = sprAutoSpearLauncher
	wep_area[562] = 10
	wep_text[562] = "no longer primitive"
	wep_swap[562] = sndSwapBow
	wep_rad[562] = 0;
	
	wep_name[563] = "SUPER ELECTRO CANNON"
	wep_type[563] = 5
	wep_auto[563] = 1
	wep_load[563] = 340
	wep_cost[563] = 22
	wep_sprt[563] = sprSuperElectroCannon
	wep_area[563] = 22
	wep_text[563] = "electronic super power"
	wep_swap[563] = sndSwapEnergy
	wep_rad[563] = 0;
	
	wep_name[564] = "TOXIC ASSAULT RIFLE"
	wep_type[564] = 1
	wep_auto[564] = 0
	wep_load[564] = 13
	wep_cost[564] = 4
	wep_sprt[564] = sprToxicAssaultRifle
	wep_area[564] = 4
	wep_text[564] = "stanky stanky stanky"
	wep_swap[564] = sndSwapMachinegun
	wep_rad[564] = 0;
	
	wep_name[565] = "TOXIC MINIGUN"
	wep_type[565] = 1
	wep_auto[565] = 1
	wep_load[565] = 1
	wep_cost[565] = 1.5
	wep_sprt[565] = sprToxicMinigun
	wep_area[565] = 13
	wep_text[565] = "beware the stank"
	wep_swap[565] = sndSwapMachinegun
	wep_rad[565] = 0;

	wep_name[566] = "TOXIC WAZER RIFLE"
	wep_type[566] = 5
	wep_auto[566] = 1
	wep_load[566] = 7
	wep_cost[566] = 1
	wep_sprt[566] = sprToxicWazerRifle
	wep_area[566] = 15
	wep_text[566] = "gazer"
	wep_swap[566] = sndSwapEnergy
	wep_rad[566] = 0;
	
	wep_name[567] = "GOLDEN BOW"
	wep_type[567] = 3
	wep_auto[567] = 0
	wep_load[567] = 19
	wep_cost[567] = 1
	wep_sprt[567] = sprGoldenBow
	wep_area[567] = 17
	wep_text[567] = "shiny classic"
	wep_swap[567] = sndSwapBow
	wep_rad[567] = 0;
	
	wep_name[568] = "ULTRA SAWED-OFF SHOTGUN"
	wep_type[568] = 2
	wep_auto[568] = 0
	wep_load[568] = 20//26
	wep_cost[568] = 2.5
	wep_sprt[568] = sprUltraSawnOffShotgun
	wep_area[568] = -1
	wep_text[568] = ""
	wep_swap[568] = sndSwapShotgun
	wep_rad[568] = 13;
	
	wep_name[569] = "SPLASMA CANNON"
	wep_type[569] = 5
	wep_auto[569] = 0
	wep_load[569] = 50
	wep_cost[569] = 14
	wep_sprt[569] = sprSplasmaCannon
	wep_area[569] = 17
	wep_text[569] = "disperse plasma gun"
	wep_swap[569] = sndSwapEnergy
	wep_rad[569] = 0;
	
	wep_name[570] = "SPLASMA GUN"
	wep_type[570] = 5
	wep_auto[570] = 1
	wep_load[570] = 24
	wep_cost[570] = 3
	wep_sprt[570] = sprSplasmaGun
	wep_area[570] = 9
	wep_text[570] = "spiraling plasma gun"
	wep_swap[570] = sndSwapEnergy
	wep_rad[570] = 0;
	
	wep_name[571] = "SUPER HEAVY SHOTGUN"
	wep_type[571] = 2
	wep_auto[571] = 0
	wep_load[571] = 120
	wep_cost[571] = 24
	wep_sprt[571] = sprHeavySuperShotgun
	wep_area[571] = 27
	wep_text[571] = "sooo many pellets"
	wep_swap[571] = sndSwapShotgun
	wep_rad[571] = 0;
	
	wep_name[572] = "TRIPLE HEAVY ASSAULT RIFLE"
	wep_type[572] = 1
	wep_auto[572] = 0
	wep_load[572] = 11
	wep_cost[572] = 15//18
	wep_sprt[572] = sprTripleHeavyAssaultRifle
	wep_area[572] = 23
	wep_text[572] = "some discount on these bullets"
	wep_swap[572] = sndSwapMachinegun
	wep_rad[572] = 0;
	
	wep_name[573] = choose("FIRE BOMB LAUNCHER","HEAVY FLARE GUN","HEAVY FIRE GRENADE LAUNCHER");
	wep_type[573] = 4
	wep_auto[573] = 0
	wep_load[573] = 26
	wep_cost[573] = 3
	wep_sprt[573] = sprFireBombLauncher
	wep_area[573] = 12
	wep_text[573] = "goes by many names"
	wep_swap[573] = sndSwapExplosive
	wep_rad[573] = 0;
	
	wep_name[574] = "EVERYTHING LINE"
	wep_type[574] = 4
	wep_auto[574] = 0
	wep_load[574] = 44
	wep_cost[574] = 9
	wep_sprt[574] = sprLineEverything
	wep_area[574] = 29
	wep_text[574] = "don't get in the line of fire"
	wep_swap[574] = sndSwapFlame
	wep_rad[574] = 0;
	
	wep_name[575] = "HEAVY POP BLADE GUN"
	wep_type[575] = 3
	wep_auto[575] = 1
	wep_load[575] = 20
	wep_cost[575] = 3.5
	wep_sprt[575] = sprHeavyPopBladegun
	wep_area[575] = 16
	wep_text[575] = "blades don't hurt you"
	wep_swap[575] = sndSwapBow
	wep_rad[575] = 0;
	
	wep_name[576] = "SUPER BOW"
	wep_type[576] = 3
	wep_auto[576] = 0
	wep_load[576] = 29
	wep_cost[576] = 5
	wep_sprt[576] = sprSuperBow
	wep_area[576] = 8
	wep_text[576] = "hold for power"
	wep_swap[576] = sndSwapBow
	wep_rad[576] = 0;
	
	wep_name[577] = "HEAVY BULLET SWORD"
	wep_type[577] = 1
	wep_auto[577] = 0
	wep_load[577] = 14
	wep_cost[577] = 8
	wep_sprt[577] = sprHeavyBulletSword
	wep_area[577] = 22
	wep_text[577] = "heavy metal and guns"
	wep_swap[577] = sndSwapSword
	wep_rad[577] = 0;
	
	wep_name[578] = "AUTO SPLINTER SPEAR LAUNCHER"
	wep_type[578] = 3
	wep_auto[578] = 1
	wep_load[578] = 12
	wep_cost[578] = 2
	wep_sprt[578] = sprAutoSplinterSpearLauncher
	wep_area[578] = 14
	wep_text[578] = ""
	wep_swap[578] = sndSwapBow
	wep_rad[578] = 0;
	
	wep_name[579] = "TRIPLE VAN CANNON"
	wep_type[579] = 4
	wep_auto[579] = 0
	wep_load[579] = 150
	wep_cost[579] = 24
	wep_sprt[579] = sprTripleVanCannon
	wep_area[579] = 31
	wep_text[579] = "popo super power"
	wep_swap[579] = sndSwapExplosive
	wep_rad[579] = 0;
	
	wep_name[580] = "TOXIC LAUNCHER"
	wep_type[580] = 4
	wep_auto[580] = 0
	wep_load[580] = 17
	wep_cost[580] = 1
	wep_sprt[580] = sprToxicLauncher
	wep_area[580] = 5
	wep_text[580] = "I used to hate this gun"
	wep_swap[580] = sndSwapExplosive
	wep_rad[580] = 0;
	
	wep_name[581] = "HEAVY TOXIC LAUNCHER"
	wep_type[581] = 4
	wep_auto[581] = 0
	wep_load[581] = 26
	wep_cost[581] = 2
	wep_sprt[581] = sprHeavyToxicLauncher
	wep_area[581] = 9
	wep_text[581] = ""
	wep_swap[581] = sndSwapExplosive
	wep_rad[581] = 0;
	
	wep_name[582] = "ULTRA TRIPLE HEAVY MACHINEGUN"
	wep_type[582] = 1
	wep_auto[582] = 1
	wep_load[582] = 4
	wep_cost[582] = 8//9
	wep_sprt[582] = sprUltraTripleHeavyMachinegun
	wep_area[582] = 31
	wep_text[582] = "knock them back!"
	wep_swap[582] = sndSwapMachinegun
	wep_rad[582] = 12;//21

	wep_name[583] = "O O O"
	wep_type[583] = 1
	wep_auto[583] = 1
	wep_load[583] = 4
	wep_cost[583] = 14
	wep_sprt[583] = sprOOOGun
	wep_area[583] = 30
	wep_text[583] = "O O O"
	wep_swap[583] = sndSwapMachinegun
	wep_rad[583] = 0;
	
	wep_name[584] = "SUPER LASER CANNON"
	wep_type[584] = 5
	wep_auto[584] = 1
	wep_load[584] = 25//32 originally
	wep_cost[584] = 6
	wep_sprt[584] = sprSuperLaserCannon
	wep_area[584] = 21
	wep_text[584] = "ohyea super laser cannon!"
	wep_swap[584] = sndSwapEnergy
	wep_rad[584] = 0;
	
	wep_name[585] = "AUTO GRENADE RIFLE"
	wep_type[585] = 4
	wep_auto[585] = 1
	wep_load[585] = 3
	wep_cost[585] = 1
	wep_sprt[585] = sprAutoGrenadeRifle
	wep_area[585] = 14
	wep_text[585] = "mini nade spam"
	wep_swap[585] = sndSwapExplosive
	wep_rad[585] = 0;
	
	wep_name[586] = "SUPER CLUSTER GRENADE LAUNCHER"
	wep_type[586] = 4
	wep_auto[586] = 0
	wep_load[586] = 40//11
	wep_cost[586] = 3
	wep_sprt[586] = sprSuperClusterNader
	wep_area[586] = 9
	wep_text[586] = ""
	wep_swap[586] = sndSwapExplosive
	wep_rad[586] = 0;
	
	wep_name[587] = "RADIATION GENERATOR"
	wep_type[587] = 5
	wep_auto[587] = 0
	wep_load[587] = 50//13
	wep_cost[587] = 20
	wep_sprt[587] = sprRadiationGenerator
	wep_area[587] = 8
	wep_text[587] = "RAD!"
	wep_swap[587] = sndSwapExplosive
	wep_rad[587] = -5;
	
	wep_name[588] = "SHOTGUN LANCE"
	wep_type[588] = 2
	wep_auto[588] = 0
	wep_load[588] = 18
	wep_cost[588] = 1.5
	wep_sprt[588] = sprShotgunLance
	wep_area[588] = 7
	wep_text[588] = "what kind of person would design this weapon"
	wep_swap[588] = sndSwapSword
	wep_rad[588] = 0;
	
	wep_name[589] = "GOLDEN KRAKEN PISTOL"
	wep_type[589] = 4
	wep_auto[589] = 0
	wep_load[589] = 14
	wep_cost[589] = 1
	wep_sprt[589] = sprGoldenKrakenPistol
	wep_area[589] = 18
	wep_text[589] = "trustworthy kraken"
	wep_swap[589] = sndSwapDragon
	wep_rad[589] = 0;
	
	wep_name[590] = "TERMITE INJECTOR"
	wep_type[590] = 0
	wep_auto[590] = 0
	wep_load[590] = 18
	wep_cost[590] = 0
	wep_sprt[590] = sprTermiteInjector
	wep_area[590] = 14
	wep_text[590] = "always clean your sword"
	wep_swap[590] = sndSwapSword
	wep_rad[590] = 0;
	
	wep_name[591] = "ENERGY LANCE"
	wep_type[591] = 5
	wep_auto[591] = 0
	wep_load[591] = 10
	wep_cost[591] = 2
	wep_sprt[591] = sprEnergyLance
	wep_area[591] = 11
	wep_text[591] = ""
	wep_swap[591] = sndSwapEnergy
	wep_rad[591] = 0;
	
	wep_name[592] = "ENERGY SCYTHE"
	wep_type[592] = 5
	wep_auto[592] = 0
	wep_load[592] = 18
	wep_cost[592] = 2
	wep_sprt[592] = sprEnergyScythe
	wep_area[592] = 10
	wep_text[592] = "energy all around"
	wep_swap[592] = sndSwapHammer
	wep_rad[592] = 0;
	
	wep_name[593] = "EXPLOSIVE SCREWDRIVER"
	wep_type[593] = 4
	wep_auto[593] = 0
	wep_load[593] = 6
	wep_cost[593] = 1
	wep_sprt[593] = sprExplosiveScrewDriver
	wep_area[593] = 9
	wep_text[593] = "screwdriver will destroy it"
	wep_swap[593] = sndSwapEnergy
	wep_rad[593] = 0;
	
	wep_name[594] = "HEAVY CLUB"
	wep_type[594] = 0
	wep_auto[594] = 0
	wep_load[594] = 28
	wep_cost[594] = 0
	wep_sprt[594] = sprHeavyClub
	wep_area[594] = 8
	wep_text[594] = "stick hit head"
	wep_swap[594] = sndSwapHammer
	wep_rad[594] = 0;
	
	wep_name[595] = "AUTO LIGHTNING CROSSBOW"
	wep_type[595] = 3
	wep_auto[595] = 1
	wep_load[595] = 9
	wep_cost[595] = 1.5
	wep_sprt[595] = sprAutoLightningCrossbow
	wep_area[595] = 15
	wep_text[595] = "delivering the payload"
	wep_swap[595] = sndSwapBow
	wep_rad[595] = 0;
	
	wep_name[596] = "PLASMA FLAIL"
	wep_type[596] = 5
	wep_auto[596] = 0
	wep_load[596] = 24
	wep_cost[596] = 2.5
	wep_sprt[596] = sprPlasmaFlail
	wep_area[596] = 15
	wep_text[596] = "bubble flail"
	wep_swap[596] = sndSwapSword
	wep_rad[596] = 0;
	
	wep_name[597] = "EXPLOSIVE SLUGGER"
	wep_type[597] = 4
	wep_auto[597] = 0
	wep_load[597] = 19//22
	wep_cost[597] = 1
	wep_sprt[597] = sprExplosiveSlugger
	wep_area[597] = 6
	wep_text[597] = "fragger"
	wep_swap[597] = sndSwapShotgun
	wep_rad[597] = 0;

	wep_name[598] = "EXPLOSIVE GATLING SLUGGER"
	wep_type[598] = 4
	wep_auto[598] = 1
	wep_load[598] = 7//8
	wep_cost[598] = 1
	wep_sprt[598] = sprExplosiveGatlingSlugger
	wep_area[598] = 17
	wep_text[598] = "time to frattle"
	wep_swap[598] = sndSwapShotgun
	wep_rad[598] = 0;
	
	wep_name[599] = "BLOOD SHOVEL"
	wep_type[599] = 0
	wep_auto[599] = 0
	wep_load[599] = 24//19
	wep_cost[599] = 0
	wep_sprt[599] = sprBloodShovel
	wep_area[599] = 16
	wep_text[599] = "blood spoon"
	wep_swap[599] = sndSwapExplosive
	wep_rad[599] = 0;
	
	wep_name[600] = "SEPTUPLE SHORT POPGUN"
	wep_type[600] = 1
	wep_auto[600] = 1
	wep_load[600] = 2
	wep_cost[600] = 4.75
	wep_sprt[600] = sprSeptupleShortPopGun
	wep_area[600] = 13
	wep_text[600] = "how to increase the range?"
	wep_swap[600] = sndSwapMachinegun
	wep_rad[600] = 0;
	
	wep_name[601] = "SUPER BOUNCER LASER PISTOL"
	wep_type[601] = 5
	wep_auto[601] = 0
	wep_load[601] = 15
	wep_cost[601] = 8
	wep_sprt[601] = sprSuperBouncerLaserGun
	wep_area[601] = 17
	wep_text[601] = "it boinks"
	wep_swap[601] = sndSwapEnergy
	wep_rad[601] = 0;
	
	wep_name[602] = "ULTRA HEAVY ROGUE RIFLE"
	wep_type[602] = 1
	wep_auto[602] = 0
	wep_load[602] = 4
	wep_cost[602] = 5//3
	wep_sprt[602] = sprUltraHeavyRogueRifle
	wep_area[602] = -1
	wep_text[602] = ""
	wep_swap[602] = sndSwapMachinegun
	wep_rad[602] = 12;//7 for one shot normally
	
	wep_name[603] = "SPLINTER SHOVEL"
	wep_type[603] = 3
	wep_auto[603] = 0
	wep_load[603] = 27
	wep_cost[603] = 2
	wep_sprt[603] = sprSplinterShovel
	wep_area[603] = 15
	wep_text[603] = "nails to the wall"
	wep_swap[603] = sndSwapHammer
	wep_rad[603] = 0;
	
	wep_name[604] = "SPLINTER LANCE"
	wep_type[604] = 0
	wep_auto[604] = 3
	wep_load[604] = 13
	wep_cost[604] = 1
	wep_sprt[604] = sprSplinterLance
	wep_area[604] = 14
	wep_text[604] = ""
	wep_swap[604] = sndSwapSword
	wep_rad[604] = 0;
	
	wep_name[605] = "STABINATOR"
	wep_type[605] = 3
	wep_auto[605] = 0
	wep_load[605] = 50//60 normally
	wep_cost[605] = 8
	wep_sprt[605] = sprStabinator
	wep_area[605] = 18
	wep_text[605] = "time for a good o'l fashion stabbin'"
	wep_swap[605] = sndSwapExplosive
	wep_rad[605] = 0;
	
	wep_name[606] = "DIRECTOR PLASMA SHOTGUN"
	wep_type[606] = 5
	wep_auto[606] = 1
	wep_load[606] = 32
	wep_cost[606] = 7
	wep_sprt[606] = sprDirectorPlasmaShotgun
	wep_area[606] = 11
	wep_text[606] = ""
	wep_swap[606] = sndSwapEnergy
	wep_rad[606] = 0;
	
	wep_name[607] = "DIRECTOR BOX GUN"
	wep_type[607] = 1
	wep_auto[607] = 0
	wep_load[607] = 17
	wep_cost[607] = 20//fires 25 bullets
	wep_sprt[607] = sprDirectorBoxGun
	wep_area[607] = 12
	wep_text[607] = "pink blur"
	wep_swap[607] = sndSwapShotgun
	wep_rad[607] = 0;
	
	wep_name[608] = "SHANKER"
	wep_type[608] = 0
	wep_auto[608] = 0
	wep_load[608] = 12
	wep_cost[608] = 0
	wep_sprt[608] = sprShanker
	wep_area[608] = 9
	wep_text[608] = "lance shovel"
	wep_swap[608] = sndSwapHammer
	wep_rad[608] = 0;
	
	wep_name[609] = "ASSAULT BLOOD LAUNCHER"
	wep_type[609] = 4
	wep_auto[609] = 1
	wep_load[609] = 15
	wep_cost[609] = 3
	wep_sprt[609] = sprAssaultBloodLauncher
	wep_area[609] = 14
	wep_text[609] = "bad to the bone"
	wep_swap[609] = sndSwapExplosive
	wep_rad[609] = 0;
	
	wep_name[610] = "CUBER SNIPER"
	wep_type[610] = 1
	wep_auto[610] = 1
	wep_load[610] = 12
	wep_cost[610] = 5
	wep_sprt[610] = sprCuberSniper
	wep_area[610] = -1
	wep_text[610] = "it's only fair"
	wep_swap[610] = sndSwapPistol
	wep_rad[610] = 0;
	
	wep_name[611] = "HEAVY CUBER SNIPER"
	wep_type[611] = 1
	wep_auto[611] = 1
	wep_load[611] = 9
	wep_cost[611] = 8
	wep_sprt[611] = sprHeavyCuberSniper
	wep_area[611] = -1
	wep_text[611] = "ultra moddable!"
	wep_swap[611] = sndSwapPistol
	wep_rad[611] = 0;
	
	wep_name[612] = "SEPTUPLE BLOOD RIFLE"
	wep_type[612] = 1
	wep_auto[612] = 1
	wep_load[612] = 2
	wep_cost[612] = 3
	wep_sprt[612] = sprSeptupleBloodRifle
	wep_area[612] = 7
	wep_text[612] = "its a bloody mess"
	wep_swap[612] = sndSwapMachinegun
	wep_rad[612] = 0;
	
	wep_name[613] = "TSUNAMI CANNON"
	wep_type[613] = 4
	wep_auto[613] = 0
	wep_load[613] = 240
	wep_cost[613] = 25
	wep_sprt[613] = sprTsunamiCannon
	wep_area[613] = 22
	wep_text[613] = "monster storm"
	wep_swap[613] = sndSwapEnergy
	wep_rad[613] = 0;
	
	wep_name[614] = "SUPER LIGHTNING CANNON"
	wep_type[614] = 5
	wep_auto[614] = 1
	wep_load[614] = 230
	wep_cost[614] = 24
	wep_sprt[614] = sprSuperLightningCannon
	wep_area[614] = 20
	wep_text[614] = "storm bringer"
	wep_swap[614] = sndSwapEnergy
	wep_rad[614] = 0;
	
	wep_name[615] = "SUPER FLAME CANNON"
	wep_type[615] = 4
	wep_auto[615] = 0
	wep_load[615] = 150
	wep_cost[615] = 17
	wep_sprt[615] = sprSuperFlameCannon
	wep_area[615] = 19
	wep_text[615] = "balls of fire"
	wep_swap[615] = sndSwapFlame
	wep_rad[615] = 0;
	
	wep_name[616] = "DIRECTOR BURST GRENADE LAUNCHER"
	wep_type[616] = 4
	wep_auto[616] = 0
	wep_load[616] = 48
	wep_cost[616] = 3
	wep_sprt[616] = sprDirectorBurstGrenadeLauncher
	wep_area[616] = 7
	wep_text[616] = "bursting"
	wep_swap[616] = sndSwapExplosive
	wep_rad[616] = 0;
	
	wep_name[617] = "GOLDEN DISC GUN"
	wep_type[617] = 3
	wep_auto[617] = 1
	wep_load[617] = 7
	wep_cost[617] = 1
	wep_sprt[617] = sprGoldenDiscGun
	wep_area[617] = -1
	wep_text[617] = "what could go wrong"
	wep_swap[617] = sndSwapBow
	wep_rad[617] = 0;
	
	wep_name[618] = "ULTRA HAND CANNON"
	wep_type[618] = 1
	wep_auto[618] = 1
	wep_load[618] = 16;
	wep_cost[618] = 8;
	wep_sprt[618] = sprUltraHandCannon
	wep_area[618] = 20
	wep_text[618] = "such power in the palm of your hand"
	wep_swap[618] = sndSwapPistol
	wep_rad[618] = 18;
	
	wep_name[619] = "SUPER KRAKEN GUN"
	wep_type[619] = 4
	wep_auto[619] = 0
	wep_load[619] = 28//10
	wep_cost[619] = 3
	wep_sprt[619] = sprSuperKrakenGun
	wep_area[619] = 8
	wep_text[619] = "sea monster"
	wep_swap[619] = sndSwapDragon
	wep_rad[619] = 0;
	
	wep_name[620] = "DISC ERASER"
	wep_type[620] = 3
	wep_auto[620] = 0
	wep_load[620] = 18
	wep_cost[620] = 2
	wep_sprt[620] = sprDiscEraser
	wep_area[620] = 7
	wep_text[620] = "disc eraser life eraser"
	wep_swap[620] = sndSwapShotgun
	wep_rad[620] = 0;
	
	wep_name[621] = "BOUNCER CROSSBOW"
	wep_type[621] = 3
	wep_auto[621] = 0
	wep_load[621] = 31
	wep_cost[621] = 1
	wep_sprt[621] = sprBouncerCrossbow
	wep_area[621] = 3
	wep_text[621] = "even if you miss"
	wep_swap[621] = sndSwapBow
	wep_rad[621] = 0;
	
	wep_name[622] = "SPLINTER RUSH"
	wep_type[622] = 3
	wep_auto[622] = 1
	wep_load[622] = 20
	wep_cost[622] = 3
	wep_sprt[622] = sprSplinterRush
	wep_area[622] = 14
	wep_text[622] = "rush and push"
	wep_swap[622] = sndSwapBow
	wep_rad[622] = 0;
	
	wep_name[623] = "BOUNCER WAVE CROSSBOW"
	wep_type[623] = 3
	wep_auto[623] = 1
	wep_load[623] = 35
	wep_cost[623] = 6
	wep_sprt[623] = sprBouncerWaveCrossbow
	wep_area[623] = 8
	wep_text[623] = "boink poink"
	wep_swap[623] = sndSwapBow
	wep_rad[623] = 0;
	
	wep_name[624] = "SUPER HEAVY GRENADE LAUNCHER"
	wep_type[624] = 4
	wep_auto[624] = 0
	wep_load[624] = 45
	wep_cost[624] = 10
	wep_sprt[624] = sprSuperHeavyNader
	wep_area[624] = 12
	wep_text[624] = "hi there"
	wep_swap[624] = sndSwapExplosive
	wep_rad[624] = 0;
	
	wep_name[625] = "DOUBLE ENERGY LANCE"
	wep_type[625] = 5
	wep_auto[625] = 0
	wep_load[625] = 17
	wep_cost[625] = 3.5
	wep_sprt[625] = sprDoubleEnergyLance
	wep_area[625] = 14
	wep_text[625] = "it be that way sometimes"
	wep_swap[625] = sndSwapEnergy
	wep_rad[625] = 0;
	
	wep_name[626] = "BLOOD WALL"
	wep_type[626] = 1
	wep_auto[626] = 1
	wep_load[626] = 8
	wep_cost[626] = 5
	wep_sprt[626] = sprBloodWall
	wep_area[626] = 12
	wep_text[626] = "a wall of blood"
	wep_swap[626] = sndSwapShotgun
	wep_rad[626] = 0;
	
	wep_name[627] = "BOUNCER WAVE RIFLE"
	wep_type[627] = 1
	wep_auto[627] = 0
	wep_load[627] = 18
	wep_cost[627] = 15
	wep_sprt[627] = sprBouncerWaveRifle
	wep_area[627] = 12
	wep_text[627] = "wave, bounce and dance"
	wep_swap[627] = sndSwapMachinegun
	wep_rad[627] = 0;
	
	wep_name[628] = "LOTSIP RESAL"
	wep_type[628] = 5
	wep_auto[628] = 1
	wep_load[628] = 4
	wep_cost[628] = 1
	wep_sprt[628] = sprNugResal
	wep_area[628] = 15
	wep_text[628] = "yrnopaew citsirutuf"
	wep_swap[628] = sndSwapEnergy
	wep_rad[628] = 0;
	
	wep_name[629] = "SKULLBREAKER"
	wep_type[629] = 2
	wep_auto[629] = 0
	wep_load[629] = 20
	wep_cost[629] = 2.5
	wep_sprt[629] = sprSkullBreaker
	wep_area[629] = 10
	wep_text[629] = "break their skull"
	wep_swap[629] = sndSwapShotgun
	wep_rad[629] = 0;
	
	wep_name[630] = "PLASMA QUAKE"
	wep_type[630] = 5
	wep_auto[630] = 1
	wep_load[630] = 15
	wep_cost[630] = 2
	wep_sprt[630] = sprPlasmaQuake
	wep_area[630] = 9
	wep_text[630] = "shake the earth"
	wep_swap[630] = sndSwapEnergy
	wep_rad[630] = 0;
	
	wep_name[631] = "ULTRA LIGHTNING CANNON"
	wep_type[631] = 5
	wep_auto[631] = 1
	wep_load[631] = 36//1.13 seconds
	wep_cost[631] = 9
	wep_sprt[631] = sprUltraLightningCannon
	wep_area[631] = 27
	wep_text[631] = "always strike thrice"
	wep_swap[631] = sndSwapEnergy
	wep_rad[631] = 25;
	
	wep_name[632] = "MINI ROCKET GUN"
	wep_type[632] = 4
	wep_auto[632] = 1
	wep_load[632] = 6
	wep_cost[632] = 0.5
	wep_sprt[632] = sprMiniRocketGun
	wep_area[632] = 8
	wep_text[632] = ""
	wep_swap[632] = sndSwapExplosive
	wep_rad[632] = 0;
	
	wep_name[633] = "BURNING BLACK SWORD"
	wep_type[633] = 0
	wep_auto[633] = 0
	wep_load[633] = 13//16 usual
	wep_cost[633] = 0
	wep_sprt[633] = sprBurningBlackSword
	wep_area[633] = -1
	wep_text[633] = "phoenix rises"
	wep_swap[633] = sndSwapSword
	wep_rad[633] = 0;
	
	wep_name[634] = "BURNING DARK SWORD"
	wep_type[634] = 0
	wep_auto[634] = 0
	wep_load[634] = 23//16 usual
	wep_cost[634] = 0
	wep_sprt[634] = sprBurningDarkSword
	wep_area[634] = -1
	wep_text[634] = "phoenix burning"
	wep_swap[634] = sndSwapSword
	wep_rad[634] = 0;
	
	wep_name[635] = "DOUBLE SIDED BLADE"
	wep_type[635] = 0
	wep_auto[635] = 0
	wep_load[635] = 13//16 usual
	wep_cost[635] = 0
	wep_sprt[635] = sprDoubleSidedBlade
	wep_area[635] = 13
	wep_text[635] = "duel edge"
	wep_swap[635] = sndSwapSword
	wep_rad[635] = 0;
	
	wep_name[636] = "AUTO FROST FLARE GUN"
	wep_type[636] = 4
	wep_auto[636] = 1
	wep_load[636] = 10
	wep_cost[636] = 1
	wep_sprt[636] = sprAutoFrostFlareGun
	wep_area[636] = 13
	wep_text[636] = "light the ice"
	wep_swap[636] = sndSwapFlame
	wep_rad[636] = 0;
	
	wep_name[637] = "SPLIT SEEKER PISTOL"
	wep_type[637] = 3
	wep_auto[637] = 0
	wep_load[637] = 30
	wep_cost[637] = 1
	wep_sprt[637] = sprSplitSeekerPistol
	wep_area[637] = 5
	wep_text[637] = "got ya now"
	wep_swap[637] = sndSwapBow
	wep_rad[637] = 0;
	
	wep_name[638] = "FIRE CHAIN GUN"
	wep_type[638] = 3
	wep_auto[638] = 0
	wep_load[638] = 29
	wep_cost[638] = 3
	wep_sprt[638] = sprFireChainGun
	wep_area[638] = 16
	wep_text[638] = "captured in hell"
	wep_swap[638] = sndSwapBow
	wep_rad[638] = 0;
	
	wep_name[639] = "FROST CHAIN GUN"
	wep_type[639] = 3
	wep_auto[639] = 0
	wep_load[639] = 32
	wep_cost[639] = 3.5
	wep_sprt[639] = sprFrostChainGun
	wep_area[639] = 20
	wep_text[639] = "imprisoned in hellheim"
	wep_swap[639] = sndSwapBow
	wep_rad[639] = 0;
	
	wep_name[640] = "MINI ROCKET SHOTGUN"
	wep_type[640] = 4
	wep_auto[640] = 1
	wep_load[640] = 20
	wep_cost[640] = 2.5
	wep_sprt[640] = sprMiniRocketShotgun
	wep_area[640] = 12
	wep_text[640] = ""
	wep_swap[640] = sndSwapExplosive
	wep_rad[640] = 0;
	
	wep_name[641] = "SUPER BEAM SHOTGUN"
	wep_type[641] = 2
	wep_auto[641] = 1
	wep_load[641] = 4
	wep_cost[641] = 1.25
	wep_sprt[641] = sprSuperBeamShotgun
	wep_area[641] = 15
	wep_text[641] = "leaking"
	wep_swap[641] = sndSwapShotgun
	wep_rad[641] = 0;
	
	wep_name[642] = "ULTRA BEAM SHOTGUN"
	wep_type[642] = 2
	wep_auto[642] = 1
	wep_load[642] = 4
	wep_cost[642] = 1
	wep_sprt[642] = sprUltraBeamShotgun
	wep_area[642] = 22
	wep_text[642] = "leaking"
	wep_swap[642] = sndSwapShotgun
	wep_rad[642] = 5;
	
	wep_name[643] = "BLOOD PLASMA RIFLE"
	wep_type[643] = 5
	wep_auto[643] = 1
	wep_load[643] = 14
	wep_cost[643] = 3.5
	wep_sprt[643] = sprBloodPlasmaRifle
	wep_area[643] = 10
	wep_text[643] = "energetic blood"
	wep_swap[643] = sndSwapEnergy
	wep_rad[643] = 0;
	
	wep_name[644] = "BLOOD PLASMA GUN"
	wep_type[644] = 5
	wep_auto[644] = 1
	wep_load[644] = 18
	wep_cost[644] = 1
	wep_sprt[644] = sprBloodPlasmaGun
	wep_area[644] = 6
	wep_text[644] = "actual plasma"
	wep_swap[644] = sndSwapEnergy
	wep_rad[644] = 0;
	
	wep_name[645] = "GOLDEN BLOOD RIFLE"
	wep_type[645] = 1
	wep_auto[645] = 1
	wep_load[645] = 2
	wep_cost[645] = 1
	wep_sprt[645] = sprGoldenBloodRifle
	wep_area[645] = 17
	wep_text[645] = "holy blood"
	wep_swap[645] = sndSwapMachinegun
	wep_rad[645] = 0;
	
	wep_name[646] = "GOLDEN MORPH-O-PISTOL"
	wep_type[646] = 5
	wep_auto[646] = 0
	wep_load[646] = 22
	wep_cost[646] = 1
	wep_sprt[646] = sprGoldenMorphOPistol
	wep_area[646] = 19
	wep_text[646] = "golden grazers"
	wep_swap[646] = sndSwapEnergy
	wep_rad[646] = 0;
	
	wep_name[647] = "GOLDEN DIRECTOR SHOTGUN"
	wep_type[647] = 2
	wep_auto[647] = 0
	wep_load[647] = 18
	wep_cost[647] = 1
	wep_sprt[647] = sprGoldenDirectorShotgun
	wep_area[647] = 19//1
	wep_text[647] = "in control"
	wep_swap[647] = sndSwapShotgun
	wep_rad[647] = 0;
	
	wep_name[648] = "TOXIC REVOLVER"
	wep_type[648] = 1
	wep_auto[648] = 0
	wep_load[648] = 7
	wep_cost[648] = 1
	wep_sprt[648] = sprToxicRevolver
	wep_area[648] = 1
	wep_text[648] = "gas pistol"
	wep_swap[648] = sndSwapPistol
	wep_rad[648] = 0;
	
	wep_name[649] = "GOLDEN TOXIC REVOLVER"
	wep_type[649] = 1
	wep_auto[649] = 0
	wep_load[649] = 6
	wep_cost[649] = 1
	wep_sprt[649] = sprGoldenToxicRevolver
	wep_area[649] = 17
	wep_text[649] = "the stank gan"
	wep_swap[649] = sndSwapPistol
	wep_rad[649] = 0;
	
	wep_name[650] = "ULTRA FLARE GUN"
	wep_type[650] = 4
	wep_auto[650] = 1
	wep_load[650] = 15
	wep_cost[650] = 2
	wep_sprt[650] = sprUltraFlareGun
	wep_area[650] = 20
	wep_text[650] = "green sign means go"
	wep_swap[650] = sndSwapFlame
	wep_rad[650] = 8;
	
	wep_name[651] = "GOLDEN LANCE"
	wep_type[651] = 0
	wep_auto[651] = 0
	wep_load[651] = 17
	wep_cost[651] = 0
	wep_sprt[651] = sprGoldenLance
	wep_area[651] = 19
	wep_text[651] = "engarde"
	wep_swap[651] = sndSwapSword
	wep_rad[651] = 0;
	
	wep_name[652] = "SUPER TRIDENT"
	wep_type[652] = 0
	wep_auto[652] = 0
	wep_load[652] = 30
	wep_cost[652] = 0
	wep_sprt[652] = sprSuperTrident
	wep_area[652] = 15
	wep_text[652] = "sea lord"
	wep_swap[652] = sndSwapDragon
	wep_rad[652] = 0;
	
	wep_name[653] = "GOLDEN YOYO GUN"
	wep_type[653] = 3
	wep_auto[653] = 1
	wep_load[653] = 16
	wep_cost[653] = 2
	wep_sprt[653] = sprGoldenYoyoGun
	wep_area[653] = 19
	wep_text[653] = "jester"
	wep_swap[653] = sndSwapBow
	wep_rad[653] = 0;
	
	wep_name[654] = "DIRECTOR DRAGGER"
	wep_type[654] = 2
	wep_auto[654] = 0
	wep_load[654] = 23
	wep_cost[654] = 3
	wep_sprt[654] = sprDirectorDragger
	wep_area[654] = 10
	wep_text[654] = "hand that drags you down"
	wep_swap[654] = sndSwapShotgun
	wep_rad[654] = 0;
	
	wep_name[655] = "THE CRENDOOKEN"
	wep_type[655] = 1
	wep_auto[655] = 1
	wep_load[655] = 20
	wep_cost[655] = 3
	wep_sprt[655] = sprCrendookenBullet
	wep_area[655] = 14
	wep_text[655] = "all will be given for all to be taken"
	wep_swap[655] = sndSwapCursed
	wep_rad[655] = 0;
	
	wep_name[656] = "THE SAFROODEN"
	wep_type[656] = 1
	wep_auto[656] = 0
	wep_load[656] = 30
	wep_cost[656] = 4
	wep_sprt[656] = sprSafroodenBullet
	wep_area[656] = 14
	wep_text[656] = "arrow from hell"
	wep_swap[656] = sndSwapCursed
	wep_rad[656] = 0;
	
	wep_name[657] = "BALLISTA"
	wep_type[657] = 3
	wep_auto[657] = 0
	wep_load[657] = 40
	wep_cost[657] = 3
	wep_sprt[657] = sprBalista
	wep_area[657] = 11
	wep_text[657] = "ancient painbringer"
	wep_swap[657] = sndSwapBow
	wep_rad[657] = 0;
	
	wep_name[658] = "AORTA"
	wep_type[658] = 4
	wep_auto[658] = 1
	wep_load[658] = 4
	wep_cost[658] = 1
	wep_sprt[658] = sprAorta
	wep_area[658] = 15
	wep_text[658] = "stream of red"
	wep_swap[658] = sndSwapExplosive
	wep_rad[658] = 0;
	
	wep_name[659] = "THE ZYNDROXOOGEN"
	wep_type[659] = 1
	wep_auto[659] = 1
	wep_load[659] = 15
	wep_cost[659] = 5
	wep_sprt[659] = sprZyndroxoogenBullet
	wep_area[659] = 17
	wep_text[659] = "experiments"
	wep_swap[659] = sndSwapCursed
	wep_rad[659] = 0;
	
	wep_name[660] = "SUCKER PUNCHER"
	wep_type[660] = 2
	wep_auto[660] = 0
	wep_load[660] = 15
	wep_cost[660] = 3
	wep_sprt[660] = sprSuckerPuncher
	wep_area[660] = 10
	wep_text[660] = "left hook right hook"
	wep_swap[660] = sndSwapShotgun
	wep_rad[660] = 0;
	
	wep_name[661] = "ROLL OUT THE BOOM!"
	wep_type[661] = 4
	wep_auto[661] = 0
	wep_load[661] = 35
	wep_cost[661] = 4
	wep_sprt[661] = sprRollOutTheBoom
	wep_area[661] = 14
	wep_text[661] = "weapons that are full sentences"
	wep_swap[661] = sndSwapShotgun
	wep_rad[661] = 0;
	
	wep_name[662] = "PHOENIX"
	wep_type[662] = 4
	wep_auto[662] = 0
	wep_load[662] = 17
	wep_cost[662] = 2.5
	wep_sprt[662] = sprPhoenixGun
	wep_area[662] = 12
	wep_text[662] = "fire bird"
	wep_swap[662] = sndSwapDragon
	wep_rad[662] = 0;
	
	wep_name[663] = "MORPH-O-REVOLVER"
	wep_type[663] = 1
	wep_auto[663] = 1
	wep_load[663] = 8
	wep_cost[663] = 2
	wep_sprt[663] = sprMorphORevolver
	wep_area[663] = 2
	wep_text[663] = "sheep revolver"
	wep_swap[663] = sndSwapPistol
	wep_rad[663] = 0;
	
	wep_name[664] = "DOUBLE POP GUN"
	wep_type[664] = 1
	wep_auto[664] = 1
	wep_load[664] = 3
	wep_cost[664] = 2
	wep_sprt[664] = sprDoublePopGun
	wep_area[664] = 3
	wep_text[664] = "duality"
	wep_swap[664] = sndSwapMachinegun
	wep_rad[664] = 0;
	
	wep_name[665] = "ALTERNATOR"
	wep_type[665] = 1
	wep_auto[665] = 1
	wep_load[665] = 8
	wep_cost[665] = 2
	wep_sprt[665] = sprAlternator
	wep_area[665] = 0
	wep_text[665] = "frost and fire"
	wep_swap[665] = sndSwapMachinegun
	wep_rad[665] = 0;
	
	wep_name[666] = "TELEPATHOR"
	wep_type[666] = 2
	wep_auto[666] = 1
	wep_load[666] = 10
	wep_cost[666] = 2
	wep_sprt[666] = sprTelepathor
	wep_area[666] = 0
	wep_text[666] = "telepathic shotgun"
	wep_swap[666] = sndSwapShotgun
	wep_rad[666] = 0;
	
	wep_name[667] = "MICRO SMG"
	wep_type[667] = 1
	wep_auto[667] = 1
	wep_load[667] = 2
	wep_cost[667] = 0.5
	wep_sprt[667] = sprMicroSMG
	wep_area[667] = 3
	wep_text[667] = "hitscan"
	wep_swap[667] = sndSwapPistol
	wep_rad[667] = 0;
	
	wep_name[668] = "MICRO SHOTGUN"
	wep_type[668] = 2
	wep_auto[668] = 1
	wep_load[668] = 12
	wep_cost[668] = 1
	wep_sprt[668] = sprMicroShotgun
	wep_area[668] = 2
	wep_text[668] = "rapid fire shotgun"
	wep_swap[668] = sndSwapShotgun
	wep_rad[668] = 0;
	
	wep_name[669] = "SPIKE STAFF"
	wep_type[669] = 3
	wep_auto[669] = 1
	wep_load[669] = 9
	wep_cost[669] = 1.5
	wep_sprt[669] = sprSpikeStaff
	wep_area[669] = 5
	wep_text[669] = "nail gun"
	wep_swap[669] = sndSwapHammer
	wep_rad[669] = 0;
	
	wep_name[670] = "NEEDLE"
	wep_type[670] = 0
	wep_auto[670] = 1
	wep_load[670] = 10
	wep_cost[670] = 0
	wep_sprt[670] = sprNeedle
	wep_area[670] = 1
	wep_text[670] = "acupuncture"
	wep_swap[670] = sndSwapSword
	wep_rad[670] = 0;
	
	wep_name[671] = "SUPER NEEDLE"
	wep_type[671] = 0
	wep_auto[671] = 1
	wep_load[671] = 12
	wep_cost[671] = 0
	wep_sprt[671] = sprSuperNeedle
	wep_area[671] = 10
	wep_text[671] = "acupuncture"
	wep_swap[671] = sndSwapSword
	wep_rad[671] = 0;
	
	wep_name[672] = "MICRO LAUNCHER"
	wep_type[672] = 4
	wep_auto[672] = 1
	wep_load[672] = 7
	wep_cost[672] = 1
	wep_sprt[672] = sprMicroLauncher
	wep_area[672] = 10
	wep_text[672] = "mini railgun"
	wep_swap[672] = sndSwapExplosive
	wep_rad[672] = 0;
	
	wep_name[673] = "DROM"
	wep_type[673] = 0
	wep_auto[673] = 0
	wep_load[673] = 14
	wep_cost[673] = 0
	wep_sprt[673] = sprDrom
	wep_area[673] = 9
	wep_text[673] = "badonk"
	wep_swap[673] = sndSwapHammer
	wep_rad[673] = 0;
	
	wep_name[674] = "SCYTHER"
	wep_type[674] = 1
	wep_auto[674] = 0
	wep_load[674] = 15
	wep_cost[674] = 6
	wep_sprt[674] = sprScyther
	wep_area[674] = 11
	wep_text[674] = "Melee bullets"
	wep_swap[674] = sndSwapMachinegun
	wep_rad[674] = 0;
	
	wep_name[675] = "ULTRA ASSAULT RIFLE"
	wep_type[675] = 1
	wep_auto[675] = 1
	wep_load[675] = 9
	wep_cost[675] = 5
	wep_sprt[675] = sprUltraAssaultRifle
	wep_area[675] = 22
	wep_text[675] = "ultra classic"
	wep_swap[675] = sndSwapMachinegun
	wep_rad[675] = 11;
	
	wep_name[676] = "MICRO ASSAULT RIFLE"
	wep_type[676] = 1
	wep_auto[676] = 1
	wep_load[676] = 12
	wep_cost[676] = 4
	wep_sprt[676] = sprMicroAssaultRifle
	wep_area[676] = 2
	wep_text[676] = "accurate hitscan"
	wep_swap[676] = sndSwapMachinegun
	wep_rad[676] = 0;
	
	wep_name[677] = "SUPER MICRO ASSAULT RIFLE"
	wep_type[677] = 1
	wep_auto[677] = 1
	wep_load[677] = 12
	wep_cost[677] = 12
	wep_sprt[677] = sprSuperMicroAssaultRifle
	wep_area[677] = 12
	wep_text[677] = "super hitscan"
	wep_swap[677] = sndSwapMachinegun
	wep_rad[677] = 0;
	

	maxwep = array_length(wep_name)-1;

	//Only melee
	if ((scrIsGamemode(31)) && !instance_exists(MenuGen))
	{
		for (var wi = 0; wi < maxwep; wi++) {
			if !scrMeleeWeapons(wi)
			{
				 wep_area[wi] = -1;
			}
		}
	}
	//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives 5 = energy
	typ_ammo[0] = 333 typ_ammo[1] = 32 typ_ammo[2] = 8 typ_ammo[3] = 7 typ_ammo[4] = 6 typ_ammo[5] = 10

	if instance_exists(Player){
		if Player.race = 1 {
			typ_ammo[1] = 40 typ_ammo[2] = 10 typ_ammo[3] = 9 typ_ammo[4] = 8 typ_ammo[5] = 13
			if Player.skill_got[5] {//fish's new thronebutt
				typ_ammo[1] = 48 typ_ammo[2] = 12 typ_ammo[3] = 11 typ_ammo[4] = 10 typ_ammo[5] = 15
			}
		}
		typ_amax[0] = 1000 typ_amax[1] = 255+Player.skill_got[10]*300 typ_amax[2] = 55+Player.skill_got[10]*44 typ_amax[3] = 55+Player.skill_got[10]*44 typ_amax[4] = 55+Player.skill_got[10]*44 typ_amax[5] = 55+Player.skill_got[10]*44
		if variable_instance_exists(Player,"ultra_got")
		{
			if Player.ultra_got[15] == 1//Power overwhelming
			{
				scrWeaponsAdjustCostPowerOverwhelming();
			}
			if Player.ultra_got[4]//FISH can Gun ultra
			{
				if Player.bskin = 2
					scrWeaponAdjustCost(0.85);
				else
					scrWeaponAdjustCost(0.95);
			}
		}
	}
	else{
		typ_amax[0] = 1000 typ_amax[1] = 255 typ_amax[2] = 55 typ_amax[3] = 55 typ_amax[4] = 55 typ_amax[5] = 55}

	typ_name[0] = "MELEE" typ_name[1] = "BULLETS" typ_name[2] = "SHELLS" typ_name[3] = "BOLTS" typ_name[4] = "EXPLOSIVES" typ_name[5] = "ENERGY"

	
	highest_wep_tier = 0;
	// var highestTierWeapon = 0;
	
	for (var i = 0; i < maxwep+1; i++) {
	    // code here
		if wep_area[i] > highest_wep_tier
		{
			highest_wep_tier = wep_area[i];
			// highestTierWeapon = i;
		}
	}
	
	//Debug how many weapons there are of each tier
	/*
	var amountPerTier = [];
	var amountTypes = [];
	var z = 0;
	repeat(highest_wep_tier+1)
	{
		amountPerTier[z] = 0;
		var w = 0;
		repeat(6)
		{
			amountTypes[z][w] = 0;
			w ++;
		}
		z ++;
	}
	for (var i = 0; i < maxwep+1; i++) {
		if wep_area[i] >= 0
		{
			amountPerTier[wep_area[i]] += 1;
			amountTypes[wep_area[i]][wep_type[i]] += 1;
		}
	}
	debug(amountPerTier);
	z = 0;
	debug("__________________________________");
	repeat(array_length(amountPerTier))
	{
		debug(string(z) + " : " + string(amountPerTier[z]));
		var w= 0;
		repeat(6)
		{
			//debug("t"+string(w)+" : " + string(amountTypes[z][w]));//Log amount of types per tier
			w++;
		}
		z++;
	}
	debug("__________________________________");
	//debug("The highest tier weapon is: ",highestTierWeapon);
	//*/
	
}
