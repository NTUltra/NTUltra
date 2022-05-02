function scrRaces() {
	race_name[0] = "[RANDOM]"
	race_pass[0] = "???"
	race_acti[0] = "???"
	race_butt[0] = ""
	//race_back[0] = "";
	race_lock[0] = ""
	race_have[0] = 1
	race_bskin[0] = 0
	race_cskin[0] = 0
	race_bskin_lock[0] = ""
	race_cskin_lock[0] = ""


	race_name[1] = "[FISH]"
	race_pass[1] = "GETS MORE AMMO"
	race_acti[1] = "DODGE ROLL"
	race_butt[1] = "WATER BOOST#8 DODGE FRAMES#INSTEAD OF 5#GETS EVEN MORE AMMO#FROM AMMO PICKUPS";
	//race_back[1] = "IF YOUR AMMO IS ABOVE 75%#INCREASE FIRE RATE#AND RELOAD SPEED";
	race_lock[1] = "UNLOCKED FROM THE START"
	race_have[1] = 1
	race_swep[1] = 1
	race_bskin[1] = 0
	race_cskin[1] = 0
	race_bskin_lock[1] = "REACH LOOP#WITH GAMEMODE:# FISH'S PARTNER ONLY"
	race_cskin_lock[1] = "LOOP WITH#EVERY CHARACTER"


	race_name[2] = "[CRYSTAL]"
	race_pass[2] = "HAS MORE HP"
	race_acti[2] = "CRYSTAL SHIELD"
	race_butt[2] = "LONGER SHIELD"
	//race_back[2] = "DAMAGE REDUCTION WHILE STANDING STILL";
	race_lock[2] = "UNLOCKED FROM THE START"
	race_have[2] = 1
	race_swep[2] = 1
	race_bskin[2] = 0
	race_cskin[2] = 0
	race_bskin_lock[2] = "REACH INVERTED CAVES#AS CRYSTAL"
	race_cskin_lock[2] = "REACH CURSED CAVES#AS CRYSTAL"


	race_name[3] = "[EYES]"
	race_pass[3] = "SEES IN THE DARK"
	race_acti[3] = "TELEKINESIS"
	race_butt[3] = "STRONGER TELEKINESIS"
	//race_back[3] = "ENEMIES CLOSE TO YOU TAKE DAMAGE";
	race_lock[3] = "REACH SEWERS TO UNLOCK"
	race_have[3] = 0
	race_swep[3] = 1
	race_bskin[3] = 0
	race_cskin[3] = 0
	race_bskin_lock[3] = "REACH PIZZA SEWERS#AS EYES"
	race_cskin_lock[3] = "LOOP WITH EAGLE EYES#AS EYES"


	race_name[4] = "[MELTING]"
	race_pass[4] = "HAS LESS HP, GETS MORE RADS"
	race_acti[4] = "EXPLOSIVE REVENGE"
	race_butt[4] = "BIGGER CORPSE EXPLOSIONS"
	//race_back[4] = "CORPSE EXPLOSIONS CAN GIVE DROPS";
	race_lock[4] = "DIE TO UNLOCK"
	race_have[4] = 0
	race_swep[4] = 1
	race_bskin[4] = 0
	race_cskin[4] = 0
	race_bskin_lock[4] = "LOOP WITHOUT#RHINO SKIN AND#STRONG SPIRIT#AS MELTING"
	race_cskin_lock[4] = "REACH LOOP 3 ON#1HP EQUALITY#GAMEMODE#AS MELTING"


	race_name[5] = "[PLANT]"
	race_pass[5] = "IS FASTER"
	race_acti[5] = "SNARE GROWTH"
	race_butt[5] = "SNARE FINISHES ENEMIES#UNDER 30% HP"
	//race_back[5] = "ENEMIES KILLED WHILE SNARED GIVE MORE DROPS THIS IS AN ULTRA ";
	race_lock[5] = "KILL 100 ENEMIES TO UNLOCK"
	race_have[5] = 0
	race_swep[5] = 1
	race_bskin[5] = 0
	race_cskin[5] = 0
	race_bskin_lock[5] = "REACH WONDERLAND#IN UNDER 8 MINUTES#AS PLANT"
	race_cskin_lock[5] = "KILL 2.000#ENEMIES IN ONE RUN#AS PLANT"


	race_name[6] = "[Y.V.]"
	race_pass[6] = "FIRES FASTER"
	race_acti[6] = "POP POP"
	race_butt[6] = "BRRRAP"
	//race_back[0] = "ADDITIONAL PROJECTILES FROM ACTIVE#PIERCE ENEMIES";
	race_lock[6] = "REACH YV'S MANSION TO UNLOCK"
	race_have[6] = 0
	race_swep[6] = 39
	race_bskin[6] = 0
	race_cskin[6] = 0
	race_bskin_lock[6] = "UNLOCK ALL#GOLDEN WEAPONS#FOR ONE CHARACTER"
	race_cskin_lock[6] = "UNLOCK#A GOLDEN WEAPON#FOR ALL CHARACTERS"


	race_name[7] = "[STEROIDS]"
	race_pass[7] = "IS LESS ACCURATE#ALL WEAPONS FULLY AUTOMATIC"
	race_acti[7] = "DUAL WIELDING"
	race_butt[7] = "FIRING WITH ONE WEAPON#HAS A CHANCE TO#GIVE AMMO FOR THE OTHER#MORE EFFECTIVE WHEN#FIRING BOTH WEAPONS"
	//race_back[7] = "MISSING INCREASES#FIRE RATE AND RELOAD SPEED";
	race_lock[7] = "REACH LABS TO UNLOCK"
	race_have[7] = 0
	race_swep[7] = 1
	race_bskin[7] = 0
	race_cskin[7] = 0
	race_bskin_lock[7] = "DEFEAT#THE BIG MACHINE#ON LOOP AS STEROIDS"
	race_cskin_lock[7] = "DEFEAT#INVERTED BIG MACHINE#AS STEROIDS"


	race_name[8] = "[ROBOT]"
	race_pass[8] = "FINDS BETTER TECH"
	race_acti[8] = "EAT GUNS"
	race_butt[8] = "BETTER GUN NUTRITION"
	//race_back[8] = "FIND EVEN BETTER WEAPONS";
	race_lock[8] = "REACH SCRAPYARD TO UNLOCK"
	race_have[8] = 0
	race_swep[8] = 1
	race_bskin[8] = 0
	race_cskin[8] = 0
	race_bskin_lock[8] = "EAT A HYPER WEAPON"
	race_cskin_lock[8] = "EAT AN ULTRA WEAPON"


	race_name[9] = "[CHICKEN]"
	race_pass[9] = "HARD TO KILL"
	race_acti[9] = "SLOW MOTION"
	race_butt[9] = "NORMAL MOVEMENT SPEED#DURING SLOWMOTION"//"NORMAL RATE OF FIRE#DURING SLOW MOTION"
	//race_back[9] = "NORMAL RATE OF FIRE#DURING SLOW MOTION (this IS AN ULTRA MAKE CHANGE)";
	race_lock[9] = "OPEN A BIG HP CHEST"
	race_have[9] = 0
	race_swep[9] = 46
	race_bskin[9] = 0
	race_cskin[9] = 0
	race_bskin_lock[9] = "ACQUIRE#THE BLACK SWORD"
	race_cskin_lock[9] = "AQUIRE#THE MOST POWERFULL SWORD#LOOP WITH#CHICKEN SWORD"


	race_name[10] = "[REBEL]"
	race_pass[10] = "PORTALS HEAL"
	race_acti[10] = "ALLIES"
	race_butt[10] = "HIGHER ALLY RATE OF FIRE"
	//race_back[10] = "FASTER ALLIES#ALLIES TELEPORT TO YOU#WHEN LOST";
	race_lock[10] = "REACH FROZEN CITY TO UNLOCK"
	race_have[10] = 0
	race_swep[10] = 1
	race_bskin[10] = 0
	race_cskin[10] = 0
	race_bskin_lock[10] = "COMPLETE A#MAIN AREA ON LOOP#WITHOUT FIRING#AS REBEL"
	race_cskin_lock[10] = "REACH B?N??T L?N?"


	race_name[11] = "[HUNTER]"
	race_pass[11] = "HIGHER PROJECTILE VELOCITY#HIGHER ACCURACY"
	race_acti[11] = "MARK"
	race_butt[11] = "MARKED ENEMIES#TAKE 20% MORE DAMAGE"
	//race_back[11] = "MARKED ENEMIES THAT DIE#HAVE A HIGHER DROPRATE(this is an ultra?) MARKED ENEMIES THAT DIE#DECREATE RELOAD";
	race_lock[11] = "DEFLECT A SNIPER SHOT#INTO THE SNIPER"
	race_have[11] = 0
	race_swep[11] = 80//sniper rifle
	race_bskin[11] = 0
	race_cskin[11] = 0
	race_bskin_lock[11] = "LOOP WITHOUT#PICKING UP A WEAPON#AS HUNTER"
	race_cskin_lock[11] = "KILL INVERTED LIL' HUNTER#IN THE GAMEMODE:#HUNTER ONLY#SHOOT WHEN MARKED"


	race_name[12] = "[YUNG CUZ]"
	race_pass[12] = "MORE BUDDIES MEANS#MORE AMMO FROM PICKUPS#FIND MORE HP CHESTS"
	race_acti[12] = "LIL BUDDY"
	race_butt[12] = "GAIN EVEN MORE AMMO#DEPENDING ON NUMBER OF BUDDIES"
	//race_back[12] = "DECREASE COST OF BUDDY";
	race_lock[12] = "KILL A MIMIC"
	race_have[12] = 0
	race_swep[12] = 39//golden revolver
	race_bskin[12] = 0
	race_cskin[12] = 0
	race_bskin_lock[12] = "GO TO THE CRIB"
	race_cskin_lock[12] = "AS YUNG CUZ#COMPLETE 3 AREAS#IN A ROW#WITHOUT HAVING#MORE THAN 1 MAX HP#FOR 5 SECONDS";


	race_name[13] = "[SHEEP]"
	race_pass[13] = "ENEMIES DON'T#ENGAGE FIRE#UNTIL YOU DO"
	race_acti[13] = "HOLD TO CHARGE"
	race_butt[13] = "BETTER CHARGE#MORE CHARGE DAMAGE#MORE CHARGE CONTROL#FASTER CHARGE"
	//race_back[13] = "IDK MORPH DAMAGE";
	race_lock[13] = "MORPH AN ENEMY"
	race_have[13] = 0
	race_swep[13] = 0//nothing
	race_bskin[13] = 0
	race_cskin[13] = 0
	race_bskin_lock[13] = "SAVE A LOST SHEEP#AS SHEEP"
	race_cskin_lock[13] = "COMPLETE A#MAIN AREA#WITHOUT FIRING#AFTER THE SCRAPYARD#AS SHEEP"


	race_name[14] = "[PANDA]"
	race_pass[14] = "PRIMARY WEAPON IS RANDOMIZED#TO ONE OF THE SAME TIER#EACH AREA#EXCEPT YOUR STARTING WEAPON"
	race_acti[14] = "THROW WEAPONS"
	race_butt[14] = "SHORTER TELEPORT DELAY#MORE THROW DAMAGE"
	//race_back[14] = "NO LONGER GET RANDOM WEP(is ultra change)";
	race_lock[14] = "VISIT THE JUNGLE"
	race_have[14] = 0
	race_swep[14] = 200//panda stick
	race_bskin[14] = 0
	race_cskin[14] = 0
	race_bskin_lock[14] = "CONVERT A#GOLDEN WEAPON#INSIDE OF A PORTAL"
	race_cskin_lock[14] = "LOOP BY#ONLY THROWING WEAPONS#AND NOT USING THEM"


	race_name[15] = "[ATOM]"
	race_pass[15] = "ITEMS DESPAWN QUICKER#YOU DEAL CONTACT DAMAGE"
	race_acti[15] = "TELEPORT"
	race_butt[15] = "EXPLOSIVE TELEPORTATION"
	//race_back[15] = "SHORT IMMUNITY TO CONTACT DAMAGE#AFTER TELEPORTING";
	race_lock[15] = "TAKE CRYSTAL'S THRONEBUTT"
	race_have[15] = 0
	race_swep[15] = 19//laser pistol
	race_bskin[15] = 0
	race_cskin[15] = 0
	race_bskin_lock[15] = "COMPLETE A#MAIN AREA#AFTER THE SEWERS#WITHOUT FIRING#AS ATOM"
	race_cskin_lock[15] = "COMPLETE FIVE#LEVELS IN A ROW#USING CROWN OF HASTE#AS ATOM"


	race_name[16] = "[VIKING]"
	race_pass[16] = "PORTALS GIVE ARMOUR#TWO ARMOUR MAXIMUM"
	race_acti[16] = "ARMOUR STRIKE"//ARMOUR STRIKE
	race_butt[16] = "INCREASE MAX ARMOUR BY ONE#FIRST ARMOUR STRIKE EACH AREA IS FREE"
	//race_back[16] = "ARMOUR NOW GETS TAKEN WHEN#SUFFERING LETHAL DAMAGE";
	race_lock[16] = "REGAIN STRONG SPIRIT 4 TIMES#IN ONE RUN"//"BREAK X AMOUNT OF WALLS"
	race_have[16] = 0
	race_swep[16] = 215//MDRFKIN AXE BITCHES
	race_bskin[16] = 0
	race_cskin[16] = 0
	race_bskin_lock[16] = "COMPLETE A LEVEL WITH#THE MAXIMUM AMOUNT#OF ARMOUR POSSIBLE#AS VIKING"
	race_cskin_lock[16] = "KILL 8 ENEMIES#IN ONE ARMOUR STRIKE"


	race_name[17] = "[WEAPONSMITH]"
	race_pass[17] = "START WITH#A RANDOM WEAPON MOD#ENEMIES DROP MORE WEAPONS"
	race_acti[17] = "COMBINE WEAPONS INTO#HIGHER TIER ONES"
	race_butt[17] = "GET AN EVEN HIGHER#TIER WEAPON WHEN COMBINING WEAPONS"
	//race_back[17] = "THE FIRST TIME YOU COMBINE#A WEAPON IN AN AREA#YOU DON'T LOSE THEM BUT INSTEAD DROP IT";
	race_lock[17] = "MODIFY A WEAPON"
	race_have[17] = 0
	race_swep[17] = 1
	race_bskin[17] = 0
	race_cskin[17] = 0
	race_bskin_lock[17] = "COMBINE TWO#GOLDEN WEAPONS"
	race_cskin_lock[17] = "ADD FOUR MODS#TO ONE WEAPON"


	race_name[18] = "[ANGEL]"
	race_pass[18] = "FLY OVER WALLS"
	race_acti[18] = "HEAL AT THE COST OF AMMO"
	race_butt[18] = "CHEAPER HEALING"
	//race_back[18] = "FLYING OVER WALLS DRAINS AMMO#INSTEAD OF HP";
	race_lock[18] = "HAVE A SINGLE RUN WITH#ATLEAST THREE SURVIVAL MUTATIONS#(RHINO SKIN, ALKALINE SALIVA ETC.)"
	race_have[18] = 0
	race_swep[18] = 56
	race_bskin[18] = 0
	race_cskin[18] = 0
	race_bskin_lock[18] = "TRY EVERY CROWN#AT LEAST ONCE#(WITH ANY CHARACTER)"
	race_cskin_lock[18] = "DEFLECT A PROJECTILE#THAT IS DEFLECTED#BY A CROWN GUARDIANS#WITHOUT USING MELEE#AS ANGEL"


	race_name[19] = "[SKELETON]"
	race_pass[19] = "HAS ONLY 4HP#SLOWER#SLIGHTLY LESS ACCURATE"
	race_acti[19] = "BLOOD GAMBLE"
	race_butt[19] = "BETTER BLOOD GAMBLE ODDS"
	//race_back[19] = "THE SLOWER YOU MOVE#THE FASTER YOU FIRE";
	race_lock[19] = "DIE IN THE LABS AS MELTING"
	race_have[19] = 0
	race_swep[19] = 56//allright we'll do a character with a rusty revolver
	race_bskin[19] = 0
	race_cskin[19] = 0
	race_bskin_lock[19] = "HAVE FOUR LIVES"
	race_cskin_lock[19] = "REACH THE VOLCANO#ON 400% FREEZEFRAMES"


	race_name[20] = "[BUSINESS HOG]"
	race_pass[20] = "BOSSES DROP GOLDEN#WEAPON CHESTS"
	race_acti[20] = "SHOP"
	race_butt[20] = "20% DISCOUNT"
	//race_back[20] = "WEAPON CHESTS SOMETIME BECOME#GOLDEN WEAPON CHESTS";
	race_lock[20] = "FIND AND STEAL#THE MONEY GUN"
	race_have[20] = 0
	race_swep[20] = 444//golden hand cannon
	race_bskin[20] = 0
	race_cskin[20] = 0
	race_bskin_lock[20] = "REACH AND#BEAT THE THRONE#USING ONLY#GOLD WEAPONS#AS BUSINESS HOG"
	race_cskin_lock[20] = "SUCCESSFULLY USE#THE INVESTMENT ULTRA"


	race_name[21] = "[HORROR]"
	race_pass[21] = "EXTRA MUTATION CHOICE"//"BLAST ARMOUR, HEAT"
	race_acti[21] = "RADIATION BEAM"//"PORTAL STRIKE"
	race_butt[21] = "BEAM CHARGES QUICKER#BEAM HEALS#SOMETIMES MISSED BEAM#WILL DROP RADS"//"STRONGER PORTAL STRIKE"
	//race_back[21] = "BEAM CHARGES QUICKER#GIVES AMMO";
	race_lock[21] = "REACH WONDERLAND"//"REACH PALACE"
	race_have[21] = 0
	race_swep[21] = 1
	race_bskin[21] = 0
	race_cskin[21] = 0
	race_bskin_lock[21] = "GAIN THE#MAXIMUM AMOUNT# OF RADIATION#POSSIBLE AS HORROR"
	race_cskin_lock[21] = "COMPLETE A#MAIN AREA ON LOOP#USING ONLY THE BEAM"


	race_name[22] = "[ROGUE]"
	race_pass[22] = "BLAST ARMOUR#HEAT"//"WALK FOREVER"
	race_acti[22] = "PORTAL STRIKE"//"GASS, TOXIC IMMUNITY"
	race_butt[22] = "STRONGER PORTAL STRIKE#MORE PORTAL STRIKE AMMO SPAWNS"//"GASS SPREADS FASTER"
	//race_back[22] = "INCREASE MAXIMUM PORTAL STRIKE AMMO (this is an ult)";
	race_lock[22] = "REACH THE THRONE"
	race_have[22] = 0
	race_swep[22] = 312//ROGUE RIFLE
	race_bskin[22] = 0
	race_cskin[22] = 0
	race_bskin_lock[22] = "SURVIVE IN#THE GAMEMODE#VAN FAN#FOR ATLEAST#30 SECONDS#AS ROGUE"
	race_cskin_lock[22] = "USE 8 PORTAL STRIKES#IN ONE LEVEL"


	race_name[23] = "[FROG]"
	race_pass[23] = "IMMUNE TO TOXIC"
	race_acti[23] = "TOXIC GAS"
	race_butt[23] = "TOXIC SPREADS FASTER#HOMING TOXIC"
	//race_back[23] = "TOXIC GASS DEALS MORE DAMAGE (this is an ulta)";
	race_lock[23] = "KILL BALL MOM"
	race_have[23] = 0
	race_swep[23] = 348//FROG BLASTER
	race_bskin[23] = 0
	race_cskin[23] = 0
	race_bskin_lock[23] = "USE THREE#TOXIC WEAPONS#IN THE SAME RUN#AS FROG"
	race_cskin_lock[23] = "REACH AND BEAT#THE THRONE#AS FROG#ON THE GAMEMODE:#DISC ROOM#WITH SETTINGS:#ATLEAST 6 DISCS#ATLEAST 2 DAMAGE"


	race_name[24] = "[ELEMENTOR]"//ELEMENTAL GUY
	race_pass[24] = "STRONGER LIGHTNING,#FROST, FLAME AND KRAKEN"//STRONGER LIGHTNING, FROST AND FLAME
	race_acti[24] = "TERRAFORM AT THE COST OF AMMO"//TERRAFORM
	race_butt[24] = "CHEAPER TERRAFORM#LEVELS GENERATE MORE COVER#WALLS DEFLECT ENEMY PROJECTILES"
	//race_back[24] = "INCREASED CHANCE OF FINDING ELEMENTAL WEAPONS#LEVELS GENERATE MORE COVER";
	race_lock[24] = "TAKE HEAVY HEART"//TAKE HEAVY HEART
	race_have[24] = 0
	race_swep[24] = 337//MINI LIGHTNING PISTOL//102//FROST PISTOL
	race_bskin[24] = 0
	race_cskin[24] = 0
	race_bskin_lock[24] = "BURN A FROZEN ENEMY#AS ELEMENTOR"
	race_cskin_lock[24] = "COMPLETE A#MAIN AREA#AFTER THE SEWERS#WITHOUT FIRING#AS ELEMENTOR"


	race_name[25] = "[DOCTOR]"//MUTATION SMITH
	race_pass[25] = "SLIGHTLY UPGRADED MUTATIONS#GETS LESS RADIATION"//SLIGHTLY BETTER MUTATIONS# LEVELS SLOWER
	race_acti[25] = "CONVERT LIFE TO RADS"
	race_butt[25] = "MORE RADS FROM ACTIVE"
	//race_back[25] = "LESS HP COST?";
	race_lock[25] = "REACH LEVEL ULTRA"//REACH LEVEL ULTRA
	race_have[25] = 0
	race_swep[25] = 1
	race_bskin[25] = 0
	race_cskin[25] = 0
	race_bskin_lock[25] = "REACH LEVEL 7#BEFORE THE#CRYSTAL CAVES#AS DOCTOR"
	race_cskin_lock[25] = "PROFESSIONAL#SELFCARE"


	race_name[26] = "[GOOD OL' HUMPHRY]"//RUSTY GRANDPA SOLDIER
	race_pass[26] = "HITTING SHOTS BUILDS SKILL#MISSING RESETS SKILL#UNTILL YOU HIT A SHOT AGAIN#SKILL INCREASES DAMAGE"
	race_acti[26] = "WARZONE CONTROL"//"SLOW AND SHRINK#ENEMY PROJECTILES#AT THE COST OF#UNEQUIPED AMMO"//DISCIPLINE those bullets
	race_butt[26] = "#SKILL DECREASES SLOWER#AND HEALS YOU OVER TIME##THIS EFFECT STOPS#WHEN YOU HIT A SHOT AGAIN"
	//race_back[26] = "DECREASE COST OF ACTIVE";
	race_lock[26] = "BEAT BIG FISH"
	race_have[26] = 0
	race_swep[26] = 1
	race_bskin[26] = 0
	race_cskin[26] = 0
	race_bskin_lock[26] = "COMPLETE A#MAIN AREA#AFTER THE SCRAPYARD#WITHOUT MISSING#AS GOOD OL'HUMPHRY"
	race_cskin_lock[26] = "REACH 100 SKILL"
	
	race_name[27] = "[HANDS]"
	race_pass[27] = "HIGHER CHANCE FOR#INVERTED PORTALS TO APPEAR#INVERTED PORTALS#(OVER) HEAL 2HP"
	race_acti[27] = "PULL IN CHESTS & ENEMIES"
	race_butt[27] = "PUSH ENEMIES INSTEAD#YOUR HAND DEALS MORE DAMAGE"
	//race_back[27] = "MORE DAMAGE OR SOMETHING";
	race_lock[27] = "KILL THE INVERTED THRONE"
	race_have[27] = 0
	race_swep[27] = 443
	race_bskin[27] = 0
	race_cskin[27] = 0
	race_bskin_lock[27] = "SLAP#THE PURPLE DRAGON#TO DEATH#(KILL WITH ACTIVE)"
	race_cskin_lock[27] = "SUCKERPUNCH#THREE IDPD VANS#INTO OBLIVION#IN A SINGLE RUN#(KILL WITH ACTIVE & THRONEBUTT)"


	racemax = 27;
}
