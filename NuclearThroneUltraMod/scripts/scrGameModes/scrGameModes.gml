function scrGameModes() {
	gamemode[0] = "NORMAL";//
	gamemode_unlock[0] = "UNLOCKED FROM START";
	gamemode_have[0] = 1;
	gamemode_tip[0] = "";
	gamemode_description[0] = "";
	gamemode_nocombo[0] = [];

	gamemode[1] = "ONE WEAPON ONLY";//
	gamemode_unlock[1] = "REACH AND BEAT THE THRONE#USING ONLY A REVOLVER";
	gamemode_have[1] = 0;
	gamemode_tip[1] = "THERE CAN BE ONLY ONE WEAPON";
	gamemode_description[1] = "";
	gamemode_nocombo[1] = [2,13,14,26,27,31,37,8,46];

	gamemode[2] = "FAVOURABLE BUILD";//
	gamemode_unlock[2] = "PICK UP A FAVOURABLE WEAPON";
	gamemode_have[2] = 0;
	gamemode_tip[2] = "FAVOURABLE BUILD!";
	gamemode_description[2] = "ONLY GOOD WEAPONS DROP";
	gamemode_nocombo[2] = [1,46,26,27,31,37,8];

	gamemode[3] = "NO HUD";//
	gamemode_unlock[3] = "KILL A THIEF";
	gamemode_have[3] = 0;
	gamemode_tip[3] = "BLINDED";
	gamemode_description[3] = "HIDE THE IN-GAME MENU";
	gamemode_nocombo[3] = [26,27,37];

	gamemode[4] = "WALL IS LAVA";//
	gamemode_unlock[4] = "GET HURT BY LAVA";
	gamemode_have[4] = 0;
	gamemode_tip[4] = "DON'T TOUCH THE WALLS";
	gamemode_description[4] = "WALLS HURT YOU";
	gamemode_nocombo[4] = [26,27,37,8];

	gamemode[5] = "1HP EQUALITY";//
	gamemode_unlock[5] = "TAKE MELTING ULTRA:#BRAIN CAPACITY";
	gamemode_have[5] = 0;
	gamemode_tip[5] = "WE ARE ALL EQUAL HERE";
	gamemode_description[5] = "EVERYTHING HAS 1 HP";
	gamemode_nocombo[5] = [24,26,27,32,37,8,41];

	gamemode[6] = "CLAUSTROPHOBIA";//
	gamemode_unlock[6] = "FINISH AN AREA IN UNDER 10 SECONDS";
	gamemode_have[6] = 0;
	gamemode_tip[6] = "IT'S A SMALL WORLD";
	gamemode_description[6] = "SMALLER AREAS";
	gamemode_nocombo[6] = [20,26,27,37,25,42,8];

	gamemode[7] = "ATOM TELEPORT#NO WALKING";//
	gamemode_unlock[7] = "FINISH AN AREA WITHOUT WALKING AS ATOM";
	gamemode_have[7] = 0;
	gamemode_tip[7] = "ATOM HAS NO LEGS";
	gamemode_description[7] = "\nSTART AS ATOM, UNABLE TO WALK";
	gamemode_nocombo[7] = [13,14,26,27,35,37];

	gamemode[8] = "VAN FAN";//
	gamemode_unlock[8] = "GET HIT BY A VAN";
	gamemode_have[8] = 0;
	gamemode_tip[8] = "I AM FAN OF THE VAN";
	gamemode_description[8] = "SURVIVE AGAINST AN ONSLAUGHT OF VANS, PUSH INCOMING VANS AWAY WITH YOUR FAN (WARNING FLASHING LIGHTS)";
	gamemode_nocombo[8] = [1,46,2,4,5,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,42,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41];

	gamemode[9] = "CASUAL MODE";//
	gamemode_unlock[9] = "DIE ON 1-1";
	gamemode_have[9] = 0;
	gamemode_tip[9] = "";
	gamemode_description[9] = "YOU HAVE MORE HP, ENEMIES HAVE LESS HP, EXPLOSIONS DEAL LESS DAMAGE TO YOU, LOWER REQUIREMENT TO LEVEL UP, LESS ENEMIES SPAWN, PICKUPS LAST LONGER";
	gamemode_nocombo[9] = [0,26,27,34,37,8];

	gamemode[10] = "RANDOM AREAS";//
	gamemode_unlock[10] = "GO TO THREE SECRET AREAS IN ONE RUN";
	gamemode_have[10] = 0;
	gamemode_tip[10] = "WHERE WILL WE GO NEXT?";
	gamemode_description[10] = "AREAS ARE IN RANDOMIZED ORDER";
	gamemode_nocombo[10] = [26,27,34,37,25,42,8];

	gamemode[11] = "GUN GAME";//
	gamemode_unlock[11] = "PICK UP 50 WEAPONS IN ONE RUN";
	gamemode_have[11] = 0;
	gamemode_tip[11] = "IT'S GUN GAME!";
	gamemode_description[11] = "EVERY KILL GET A NEW RANDOM WEAPON";
	gamemode_nocombo[11] = [13,14,26,27,31,37,8];

	gamemode[12] = "ZOMBIES";//
	gamemode_unlock[12] = "DISCOVER THE G??V?Y?R?";
	gamemode_have[12] = 0;
	gamemode_tip[12] = "THEY KEEP ON COMING";
	gamemode_description[12] = "WHEN AN ENEMY DIES THEY SPAWN ANOTHER ENEMY";
	gamemode_nocombo[12] = [26,27,37,8];
/*
	gamemode[12] = "HUNTER ONLY SHOOT#WHEN MARKED";//
	gamemode_unlock[12] = "KILL A THIEF#WHILE IT IS MARKED";
	gamemode_have[12] = 0;
	gamemode_tip[12] = "MARK THEN SHOOT THEN KILL";
*/
	gamemode[13] = "ROCKET GLOVE#NO WALKING";//
	gamemode_unlock[13] = "FIND A ROCKET GLOVE";
	gamemode_have[13] = 0;
	gamemode_tip[13] = "ROCKET GLOVE!";
	gamemode_description[13] = "\nNO MOVEMENT JUST A ROCKET GLOVE";
	gamemode_nocombo[13] = [1,46,7,11,14,26,27,37,8];

	gamemode[14] = "FISH'S PARTNER";//
	gamemode_unlock[14] = "TAKE FISH'S ULTRA: BUDDY COP";
	gamemode_have[14] = 0;
	gamemode_tip[14] = "YOU GOT THIS PARTNER";
	gamemode_description[14] = "NO WEAPONS! JUST FISH'S PARTNER";
	gamemode_nocombo[14] = [1,46,7,11,13,14,26,27,31,35,37,8];

	gamemode[15] = "NO MUTATIONS";//
	gamemode_unlock[15] = "GET TO THE SCRAPYARD AT LEVEL 1";
	gamemode_have[15] = 0;
	gamemode_tip[15] = "WHO NEEDS TO MUTATE?";
	gamemode_description[15] = "";
	gamemode_nocombo[15] = [22, 24,26,27,28,35,37,8];

	gamemode[16] = "SPIKE TRAPS";//
	gamemode_unlock[16] = "REACH CRYSTAL CAVES ON 400% SCREENSHAKE";
	gamemode_have[16] = 0;
	gamemode_tip[16] = "SPIKES EVERYWHERE!";
	gamemode_description[16] = "SPAWNS SPIKE TRAPS ACROSS EACH AREA THAT DEAL DAMAGE";
	gamemode_nocombo[16] = [26,27,37,8];

	gamemode[17] = "CHEATS";//
	gamemode_unlock[17] = "UNLOCK EVERYTHING!";
	gamemode_have[17] = 0;
	gamemode_tip[17] = "CHEATOR COMPLETOR";
	gamemode_description[17] = "ENABLES DEBUG MODE";
	gamemode_nocombo[17] = [26,27,37,8];

	gamemode[18] = "NO ELITE IDPD";//
	gamemode_unlock[18] = "DESTROY AN IDPD VAN";
	gamemode_have[18] = 0;
	gamemode_tip[18] = "NO ELITE POPO";
	gamemode_description[18] = "";
	gamemode_nocombo[18] = [26,27,37,25,42,8];

	gamemode[19] = "DISC ROOM";//
	gamemode_unlock[19] = "DIE TO A DISC";
	gamemode_have[19] = 0;
	gamemode_tip[19] = "DISC ROOM DEATH ROOM";
	gamemode_description[19] = "EACH AREA IS FILLED WITH DISCS, DETERMINE THEIR DAMAGE AND HOW MANY";
	gamemode_nocombo[19] = [26,27,37,8];

	gamemode[20] = "AGORAPHOBIA";
	gamemode_unlock[20] = "BREAK MORE THAN 300 WALLS#IN A SINGLE AREA"//"TAKE MORE THAN TEN MINUTES#TO FINISH AN AREA";
	gamemode_have[20] = 0;
	gamemode_tip[20] = "IT'S A BIG WORLD OUT THERE";
	gamemode_description[20] = "BIGGER AREAS";
	gamemode_nocombo[20] = [6,26,27,37,25,42,8];

	gamemode[21] = "LOOP START";
	gamemode_unlock[21] = "REACH L1 2-1";
	gamemode_have[21] = 0;
	gamemode_tip[21] = "START IN THE FUTURE";
	gamemode_description[21] = "START AT LOOP 1";
	gamemode_nocombo[21] = [26,27,37,25,42,8];

	gamemode[22] = "INFINITE LEVELS#SLOW LEVELING";
	gamemode_unlock[22] = "FIND AND TAKE#A SECRET ULTRA MUTATION";
	gamemode_have[22] = 0;
	gamemode_tip[22] = "LEVEL 50 HERE I COME!";
	gamemode_description[22] = "\nYOU LEVEL UP SLOWER BUT THERE IS NO LEVEL CAP ALLOWING YOU TO GET EVERY MUTATION AND ALL YOUR ULTRA MUTATIONS";
	gamemode_nocombo[22] = [15,26,27,37,8];
	
	gamemode[23] = "RANDOM MUTANT#IN EACH AREA";
	gamemode_unlock[23] = "PLAY EVERY CHARACTER";
	gamemode_have[23] = 0;
	gamemode_tip[23] = "MYSTERY MUTANT";
	gamemode_description[23] = "\nEACH AREA YOU BECOME A DIFFERENT CHARACTER";
	gamemode_nocombo[23] = [26,27,35,37,8];
	
	gamemode[24] = "SHARP STRESS";
	gamemode_unlock[24] = "SHARP STRESS x10";
	gamemode_have[24] = 0;
	gamemode_tip[24] = "SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS SHARP STRESS ";
	gamemode_description[24] = "ONLY SHARP STRESS, BUT IT STACKS";
	gamemode_nocombo[24] = [5,15,26,27,28,32,35,37,8];
	
	gamemode[25] = "SURVIVAL ARENA";
	gamemode_unlock[25] = "GET RESURRECTED";
	gamemode_have[25] = 0;
	gamemode_tip[25] = "SURVIVAL ARENA!";
	gamemode_description[25] = "SURVIVE IN A WAVE BASED ARENA";
	gamemode_nocombo[25] = [6,8,10,18,20,21,26,27,36,37,40,42,43,44,45];
	gamemode[42] = "CUSTOM#SURVIVAL ARENA";
	gamemode_unlock[42] = "REACH WAVE 4#IN SURVIVAL ARENA";
	gamemode_have[42] = 0;
	gamemode_tip[42] = "CUSTOM WAVES";
	gamemode_description[42] = "\nLOAD IN A JSON FILE TO PLAY CUSTOMIZED WAVES IN SURVIVAL ARENA";
	gamemode_nocombo[42] = [6,8,10,18,20,21,25,26,27,36,37,40,42,43,44,45];
	
	gamemode[26] = "DAILY RACE";
	gamemode_unlock[26] = "";
	gamemode_have[26] = 1;
	gamemode_tip[26] = "GOTTA GO FAST";
	gamemode_description[26] = "COMPETE FOR THE FASTEST TIME IN THE LEADERBOARD, TIME ENDS WHEN YOU KILL THRONE II";
	gamemode_nocombo[26] = [1,46,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,42,0,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43];
	
	gamemode[27] = "DAILY SCORE";
	gamemode_unlock[27] = "";
	gamemode_have[27] = 1;
	gamemode_tip[27] = "SWEATING";
	gamemode_description[27] = "COMPETE FOR SCORE IN THE LEADERBOARD";
	gamemode_nocombo[27] = [1,46,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,42,26,0,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43];
	
	gamemode[28] = "ALL MUTATION#CHOICES";
	gamemode_unlock[28] = "TAKE EVERY REGULAR MUTATION#ATLEAST ONCE";
	gamemode_have[28] = 0;
	gamemode_tip[28] = "NO RANDOM MUTATIONS!";
	gamemode_description[28] = "\nENABLES A LIST OF ALL MUTATIONS WHENEVER YOU LEVEL UP";
	gamemode_nocombo[28] = [15,24,26,27,35,37,8];
	
	gamemode[29] = "INFINITE AMMO";
	gamemode_unlock[29] = "TAKE FISH'S ULTRA#GUN WARRANT";
	gamemode_have[29] = 0;
	gamemode_tip[29] = "INFINITE AMMO!";
	gamemode_description[29] = "";
	gamemode_nocombo[29] = [26,27,37,8];
	
	gamemode[30] = "ULTRA MUTATION#START";
	gamemode_unlock[30] = "TAKE 20 DIFFERENT#ULTRA MUTATIONS";
	gamemode_have[30] = 0;
	gamemode_tip[30] = "START STRONG";
	gamemode_description[30] = "\nSTART WITH AN ULTRA MUTATION";
	gamemode_nocombo[30] = [26,27,35,37,8];
	
	gamemode[31] = "MELEE ONLY";
	//gamemode_description[31] = "YOU ONLY GET MELEE WEAPONS#START WITH LONG ARMS";
	gamemode_unlock[31] = "HAVE 3 MELEE WEAPONS EQUIPPED AT ONCE";
	gamemode_have[31] = 0;
	gamemode_tip[31] = "NO GUNS JUST SHOVELS";
	gamemode_description[31] = "ONLY MELEE WEAPONS DROP";
	gamemode_nocombo[31] = [1,2,11,13,14,26,27,37,8]
	
	gamemode[32] = "ONE HIT WONDER";
	gamemode_unlock[32] = "TAKE NO DAMAGE#5 AREAS IN A ROW";
	gamemode_have[32] = 0;
	gamemode_tip[32] = "DO NOT TAKE A HIT!";
	gamemode_description[32] = "YOU DIE IN ONE HIT, MOST SURVIVAL MUTATIONS ARE DISABLED";
	gamemode_nocombo[32] = [5,24,26,27,37,8];
	
	gamemode[33] = "ALL DEFLECTOR";
	gamemode_unlock[33] = "REACH THE JUNGLE#IN THE GAMEMODE: ONE HIT WONDER";
	gamemode_have[33] = 0;
	gamemode_tip[33] = "EVERYTHING DEFLECTS!";
	gamemode_description[33] = "ALL PROJECTILES DEFLECT EACH OTHER";
	gamemode_nocombo[33] = [26,27,37,8];
	
	gamemode[34] = "HARD MODE";
	gamemode_unlock[34] = "KILL THE THRONE IN THE GAMEMODE:#SURVIVAL ARENA";
	gamemode_have[34] = 0;
	gamemode_tip[34] = "";
	gamemode_description[34] = "ENCOUNTER UNIQUE ULTRA ENEMIES, YOU HAVE A HIGHER FIRERATE, YOU GAIN MORE RADS, MORE RADS REQUIRED TO LEVEL UP, LOOP EFFECTS OCCUR EARLIER, MORE ENEMIES, SOME THINGS DEAL MORE DAMAGE, PICKUPS FADE FASTER";
	gamemode_nocombo[34] = [0,9,26,27,37,8];
	
	gamemode[35] = "GOD FROG";
	gamemode_unlock[35] = "REACH LOOP 2#ON HARD MODE";
	gamemode_have[35] = 0;
	gamemode_tip[35] = "THE GREATEST GOD OF ALL GODS!##FROGOD";
	gamemode_description[35] = "FROG IS A GOD AND HAS ALL MUTATIONS AND ALL ULTRA MUTATIONS";
	gamemode_nocombo[35] = [7,14,15,23,24,26,27,28,30,37,8];
	
	gamemode[36] = "ULTRA MOD START";
	gamemode_unlock[36] = "BEAT THE THIRD#ULTRA MOD CHALLENGE";
	gamemode_have[36] = 0;
	gamemode_tip[36] = "ROLL CREDITS";
	gamemode_description[36] = "START WITH AN ULTRA MOD";
	gamemode_nocombo[36] = [26,27,35,37,25,42,8];
	
	gamemode[37] = "WEEKLY";
	gamemode_unlock[37] = "";
	gamemode_have[37] = 1;
	gamemode_tip[37] = "WHAT A WEEK";
	gamemode_description[37] = "EACH WEEK OFFERS A DIFFERENT GAMEMODE. YOU CAN REPLAY THE WEEKLY THROUGHOUT THE WEEK TO IMPROVE YOUR SCORE";
	gamemode_nocombo[37] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,42,26,27,28,29,30,31,32,33,34,35,36,0,38,39,40,41,43,46];
	
	gamemode[38] = "SEEDED";
	gamemode_unlock[38] = "USE PLANT'S SNARE#VERY RAPIDLY";
	gamemode_have[38] = 0;
	gamemode_tip[38] = "CONSISTENCY";
	gamemode_description[38] = "USE A SEED FOR RANDOM GENERATION";
	gamemode_nocombo[38] = [26,27,37,8];
	
	gamemode[39] = "GORE GALORE";
	gamemode_unlock[39] = "FIND AND TAKE THE SECRET#CROWN OF APOCALYPSE";
	gamemode_have[39] = 0;
	gamemode_tip[39] = "BATHE IN BLOOD";
	gamemode_description[39] = "BLOOD LOTS OF BLOOD";
	gamemode_nocombo[39] = [26,27,37,8];
	
	gamemode[40] = "1 VS 1";
	gamemode_unlock[40] = "COLLECT A BOSS BOUNTY";
	gamemode_have[40] = 0;
	gamemode_tip[40] = "THERE CAN BE ONLY ONE";
	gamemode_description[40] = "ONLY ONE ENEMY SPAWNS EACH AREA. BUT THE ENEMY IS BEEFED UP!";
	gamemode_nocombo[40] = [25,42,26,27,37,8,45];
	
	gamemode[41] = "DOUBLE ENEMY HP";
	gamemode_unlock[41] = "PLAY A RUN WITH A COMBINATION OF TWO GAMEMODES";
	gamemode_have[41] = 0;
	gamemode_tip[41] = "DOUBLE THE TROUBLE";
	gamemode_description[41] = "ALL ENEMIES HAVE DOUBLE HP";
	gamemode_nocombo[41] = [26,27,37,8,5];
	
	gamemode[43] = "MULTI-CROWN";
	gamemode_unlock[43] = "AQUIRE THE MULTI-CROWN";
	gamemode_have[43] = 0;
	gamemode_tip[43] = "CROWN CROWN CROWN CROWN";
	gamemode_description[43] = "START WITH THE ABILITY TO EQUIP MULTIPLE CROWNS AT ONCE";
	gamemode_nocombo[43] = [25,42,26,27,37,8];
	
	gamemode[44] = "(BETA) ALT SPAWNS";//
	gamemode_unlock[44] = "DISCOVER 10 SECRET AREAS";
	gamemode_have[44] = 0;
	gamemode_tip[44] = "ALTERNATE TIMELINE";
	gamemode_description[44] = "AREAS SPAWN DIFFERENT ENEMIES (STILL W.I.P.)";
	gamemode_nocombo[44] = [26,27,37,8,25,42,45];
	
	gamemode[45] = "RANDOM SPAWNS";//
	gamemode_unlock[45] = "VISIT OASIS, SAVANNA AND SCRAPYARD IN ONE RUN ON ALT-SPAWNS";
	gamemode_have[45] = 0;
	gamemode_tip[45] = "ALTERNATE TIMELINE";
	gamemode_description[45] = "AREAS SPAWN RANDOM ENEMIES, CLASSIC LOOP! (STILL W.I.P. MIGHT ADD RANDOM BOSSES <3)";
	gamemode_nocombo[45] = [26,27,37,8,25,42,44,40];
	
	gamemode[46] = "ANY START WEAPON";//
	gamemode_unlock[46] = "COMPLETE THE QUEST FROM A SUSPICIOUS CURSED FIEND IN THE CROWNVAULT";
	gamemode_have[46] = 0;
	gamemode_tip[46] = "WHATEVER YOU WANT";
	gamemode_description[46] = "";
	gamemode_nocombo[46] = [1,2,13,14,26,27,31,37,8];
	
	/*
	gamemode[43] = "ALTERNATIVE SPAWNS";
	gamemode_unlock[43] = "AQUIRE THE MULTI-CROWN";
	gamemode_have[43] = 0;
	gamemode_tip[43] = "CROWN CROWN CROWN CROWN";
	gamemode_description[43] = "EACH AREA SPAWNS DIFFERENT ENEMIES";
	gamemode_nocombo[43] = [25,42,26,27,37,8];
	
	gamemode[43] = "RANDOM SPAWNS";//TODO ADD IN RANDOM FLOORS AND WALLS WHEN GENERATING
	gamemode_unlock[43] = "AQUIRE THE MULTI-CROWN";
	gamemode_have[43] = 0;
	gamemode_tip[43] = "CROWN CROWN CROWN CROWN";
	gamemode_description[43] = "OLD SCHOOL LOOP SPAWNS#COMPLETLY RANDOM ENEMIES";
	gamemode_nocombo[43] = [25,42,26,27,37,8];
	
	gamemode[38] = "ALL MUTATIONS#INFINITE LEVELS";
	gamemode_unlock[38] = "TAKE A SECRET ULTRA MUTATION#ON THE GAMEMODE: ALL MUTATION CHOICES";
	gamemode_have[38] = 0;
	gamemode_tip[38] = "YOU LEVEL UP FASTER";
	gamemode_nocombo[1] = [0,1,26,27,37,25,42,8]
	
	gamemode[39] = "INFINITE LEVELS#HARD MODE";
	gamemode_unlock[39] = "REACH LEVEL 20#ON INFINITE LEVELS MODE";
	gamemode_have[39] = 0;
	gamemode_tip[39] = "YOU LEVEL UP SLOWER";
	gamemode_nocombo[1] = [0,1,26,27,37,25,42,8]
	*/
	
	var i = 0;
	gamemodeOrder[i] = 0;
	i++; gamemodeOrder[i] = 9;//Casual
	i++; gamemodeOrder[i] = 34//Hard;
	i++; gamemodeOrder[i] = 32;//One hit wonder
	i++; gamemodeOrder[i] = 21;//Loop start
	i++; gamemodeOrder[i] = 18;//No elite idpd
	i++; gamemodeOrder[i] = 3;//No HUD
	i++; gamemodeOrder[i] = 39;//Gore galore
	i++; gamemodeOrder[i] = 1;//One wep only
	i++; gamemodeOrder[i] = 46;//Any weapon
	i++; gamemodeOrder[i] = 31;//Melee only
	i++; gamemodeOrder[i] = 2;//Favourable build
	i++; gamemodeOrder[i] = 5;//1hp equality
	i++; gamemodeOrder[i] = 41;//Double enemy hp
	i++; gamemodeOrder[i] = 25;//survival arena
	i++; gamemodeOrder[i] = 42;//custom survival arena
	i++; gamemodeOrder[i] = 8;//van fan
	i++; gamemodeOrder[i] = 6;//Claustophobia
	i++; gamemodeOrder[i] = 20;//Agoraphobia
	i++; gamemodeOrder[i] = 40;//1vs1
	i++; gamemodeOrder[i] = 44;//alt spawns
	i++; gamemodeOrder[i] = 45;//random spawns
	i++; gamemodeOrder[i] = 33;//all deflector
	i++; gamemodeOrder[i] = 10;//random areas
	i++; gamemodeOrder[i] = 23;//random chars
	i++; gamemodeOrder[i] = 11;//gun game
	i++; gamemodeOrder[i] = 12;//Zombies
	i++; gamemodeOrder[i] = 13;//rocket glove
	i++; gamemodeOrder[i] = 7;//atom teleport
	i++; gamemodeOrder[i] = 14;//fish partner
	i++; gamemodeOrder[i] = 4;//Wall is lava
	i++; gamemodeOrder[i] = 19;//disc room
	i++; gamemodeOrder[i] = 16;//spike traps
	i++; gamemodeOrder[i] = 15;//No mutations
	i++; gamemodeOrder[i] = 24;//Sharp stress
	i++; gamemodeOrder[i] = 28;//all mutation choices
	i++; gamemodeOrder[i] = 22;//Infinite levels slow leveling
	i++; gamemodeOrder[i] = 30;//Ultra mutation start
	i++; gamemodeOrder[i] = 36;//Ultra mod start
	i++; gamemodeOrder[i] = 43;//multi crown
	i++; gamemodeOrder[i] = 29;//infinite ammo
	i++; gamemodeOrder[i] = 35;//God frog
	i++; gamemodeOrder[i] = 17;//Cheats
	i++; gamemodeOrder[i] = 38;//Seeded
	i++; gamemodeOrder[i] = 26;//daily score
	i++; gamemodeOrder[i] = 27;//daily race
	i++; gamemodeOrder[i] = 37;//weekly

	maxgamemode = array_length(gamemodeOrder) - 1;

}
