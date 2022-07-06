function scrSkills() {
	maxskill = 35;


	dir = 0
	repeat(maxskill+1)
	{skill_got[dir] = 0
	dir += 1}
	
	var isDoctor = false;
	var isHand = false;
	var betterWepSpecific = false;
	var canCheckUltra = false;
	if instance_exists(Player)
	{
		if variable_instance_exists(Player,"ultra_got")
			canCheckUltra = true;
		if Player.race == 25
		{
			isDoctor = true;
		}
		else if Player.race == 27
		{
			isHand = true;	
		}
		if canCheckUltra && Player.ultra_got[97]
		{
			betterWepSpecific = true;	
		}
	}
	skill_name[0] = "HEAVY HEART"
	if isDoctor
		skill_text[0] = "DOUBLE WEAPON DROPRATE#MINIMUM DROPRATE#ON EVERY ENEMY BECOMES 3%"
	else
		skill_text[0] = "DOUBLE WEAPON DROPRATE#MINIMUM DROPRATE#ON EVERY ENEMY BECOMES 2%"
	skill_msnd[0] = sndMutHeavyHeart
	skill_tips[0] = ""

	skill_name[1] = "RHINO SKIN"
	if isDoctor
		skill_text[1] = "+5 MAX HP"
	else
		skill_text[1] = "+4 MAX HP"
	skill_tips[1] = "thick skin"
	skill_msnd[1] =  sndMutRhinoSkin

	if instance_exists(Player)
	{
		if Player.race=18 || Player.race = 24
		{
		skill_name[2] = "EXTRA WINGS"
		skill_text[2] = "MORE SPEED#CLOSE DODGES SOMETIMES DROP ITEMS"
		skill_tips[2] = "fly forever"
		skill_msnd[2] =  sndMutExtraFeet
		}
		else
		{
		skill_name[2] = "EXTRA FEET"
		if isHand
			skill_name[2] = "EXTRA FINGERS"
		if Player.race == 1
		{
			skill_text[2] = "FASTER ROLL#MORE WALK SPEED#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES DROP RESOURCES"
		}
		else if Player.race == 13
		{
			
			skill_text[2] = "FASTER CHARGE#MORE CHARGE CONTROL#MORE WALK SPEED,#WALK NORMAL ON ALL TERRAINCLOSE DODGES SOMETIMES DROP RESOURCES"
		}
		else
		{
			skill_text[2] = "MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES DROP RESOURCES"
		}
		skill_tips[2] = "run forever"
		skill_msnd[2] =  sndMutExtraFeet
		}
	}
	else
	{
	skill_name[2] = "EXTRA FEET"
	skill_text[2] = "MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES#DROP RESOURCES"//"MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES#DROP A WEAPON/ITEM & ALWAYS DROP RADS"
	skill_tips[2] = "run forever"
	skill_msnd[2] =  sndMutExtraFeet}

	if random(500)<1
	{
	skill_name[3] = "URANUS HUNGER"
	skill_text[3] = "STRONGER ATTRACT POWER"
	skill_tips[3] = "I need uranus!"
	skill_msnd[3] =  sndMutPluto
	}
	else
	{
	skill_name[3] = "PLUTONIUM HUNGER"
	skill_text[3] = "STRONGER ATTRACT POWER"
	skill_tips[3] = "need those rads"
	skill_msnd[3] =  sndMutPluto
	}

	skill_name[4] = "RABBIT PAW"
	skill_text[4] = "45% MORE AMMO AND HEALTH DROPS#10% MORE WEAPONDROPS"
	if isDoctor
		skill_text[4] = "50% MORE AMMO AND HEALTH DROPS#10% MORE WEAPONDROPS"
	skill_tips[4] = "feeling lucky"
	skill_msnd[4] =  sndMutRabbitPaw

	skill_name[5] = "THRONE BUTT"
	skill_text[5] = "UPGRADES YOUR SPECIAL ABILITY"
	if instance_exists(Player)
	skill_text[5] = string(Player.race_name[Player.race])+" "+string(Player.race_butt[Player.race])
	if instance_exists(Player)
	{
	if Player.race=1{
	skill_tips[5] = "Fish's throne butt is good now!"}
	else if Player.race=27{
	skill_tips[5] = "allmighty push!"}
	else{
	skill_tips[5] = "sit on the throne"}
	}else{
	skill_tips[5] = "sit on the throne"}
	skill_msnd[5] =  sndMutThronebutt

	skill_name[6] = "LUCKY SHOT"
	if isDoctor
		skill_text[6] = "23% CHANCE KILLS REGENERATE AMMO"
	else
		skill_text[6] = "21% CHANCE KILLS REGENERATE AMMO"
	skill_tips[6] = "ammo everywhere"
	skill_msnd[6] =  sndMutLuckyShot

	skill_name[7] = "BLOODLUST"
	if isDoctor
		skill_text[7] = "7.9% CHANCE KILLS REGENERATE HP"
	else
		skill_text[7] = "7.7% CHANCE KILLS REGENERATE HP"
	skill_tips[7] = "drink blood"
	skill_msnd[7] =  sndMutBloodlust

	skill_name[8] = "GAMMA GUTS"
	if instance_exists(Player)
	{
		if Player.race == 13//Sheep
		{
			skill_text[8] = "CHARGE DEALS MORE DAMAGE#ENEMIES TOUCHING YOU TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING GAMMA GUTS#YOU TAKE 50% LESS ENEMY CONTACT DAMAGE"
		}
		if Player.race == 2//CRYSTAL
		{
			skill_text[8] = "#ENEMIES TOUCHING YOU OR YOUR SHIELD#TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING GAMMA GUTS#YOU TAKE 50% LESS ENEMY CONTACT DAMAGE"
		}
		else
		{
			skill_text[8] = "ENEMIES TOUCHING YOU TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING GAMMA GUTS#YOU TAKE 50% LESS ENEMY CONTACT DAMAGE"
		}
	}
	else
	{
		skill_text[8] = "ENEMIES TOUCHING YOU TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING GAMMA GUTS#YOU TAKE 50% LESS ENEMY CONTACT DAMAGE"
	}
	skill_tips[8] = "skin glows"
	skill_msnd[8] =  sndMutGammaGuts

	if random(200)<1
	{
	skill_name[9] = "SECOND TUMMY"
	skill_text[9] = "OMNOMNOMNOM"
	skill_tips[9] = "omnomnomnom"
	skill_msnd[9] =  sndMutSecondStomache
	}
	else
	{
	skill_name[9] = "SECOND STOMACH"
	if (isDoctor)
	{
		skill_text[9] = "4, SOMETIMES 5 HP# FROM MEDKITS#DOUBLE HP FROM MEDCHESTS"
	}
	else
	{
		skill_text[9] = "DOUBLE HP FROM MEDKITS & MEDCHESTS"
	}
	skill_tips[9] = "stomach rumbles"
	if isHand
	{
		skill_name[9] = "FIRST STOMACH";
		skill_tips[9] = "get it.. cause a hand has no stomach"
	}
	skill_msnd[9] =  sndMutSecondStomache
	}

	skill_name[10] = "BACK MUSCLE"
	skill_text[10] = "HIGHER AMMO MAX"
	skill_tips[10] = "back muscle works like mini rabbit paw"
	skill_msnd[10] =  sndMutBackMuscle

	skill_name[11] = "SCARIER FACE"
	if isHand
		skill_name[11] = "SCARIER NAIL"
	skill_text[11] = "18% LESS ENEMY HP"
	skill_tips[11] = "mirrors will break"
	skill_msnd[11] =  sndMutScarierFace
	if instance_exists(Player) && Player.race = 25
	{
		skill_text[11] = "20% LESS ENEMY HP"
	}

	skill_name[12] = "EUPHORIA"
	skill_text[12] = "SLOWER ENEMY BULLETS#WHEN YOU GET HIT YOU GAIN#INVINCIBILITY FOR A SHORT MOMENT"
	skill_tips[12] = "time passes slowly"
	skill_msnd[12] =  sndMutEuphoria

	skill_name[13] = "LONG ARMS"
	skill_text[13] = "MORE MELEE RANGE"
	skill_tips[13] = "more reach"
	skill_msnd[13] =  sndMutLongArms


	skill_name[14] = "BOILING VEINS"
	if isDoctor
		skill_text[14] = "NO DAMAGE FROM#EXPLOSIONS, FIRE, FROST AND LAVA#WHEN UNDER 6HP"
	else
		skill_text[14] = "NO DAMAGE FROM#EXPLOSIONS, FIRE, FROST AND LAVA#WHEN UNDER 5HP"
	if betterWepSpecific
		skill_text[14] = "NO DAMAGE FROM#EXPLOSIONS, FIRE, FROST AND LAVA#WHEN UNDER 8HP"
	skill_tips[14] = "temperature is rising";
	skill_msnd[14] =  sndMutBoilingVeins


	skill_name[15] = "SHOTGUN SHOULDERS"
	if isHand
		skill_name[15] = "SHOTGUN KNUCKLES"
	skill_text[15] = "SHELLS BOUNCE FURTHER#SHELLS CAN'T BE DEFLECTED BY ENEMIES"//#BOUNCER BULLETS CAN BOUNCE#ONE ADDITIONAL TIME" effect is minor no need to tell?
	skill_tips[15] = choose("shells are friends","shotgun shoulders\nextends close range damage\nfrom shotguns","shotgun shoulders\nincrease bouncer bullets bounces by 1")
	skill_msnd[15] =  sndMutShotGunShoulders

	skill_name[16] = "RECYCLE GLAND"
	if isDoctor
		skill_text[16] = "70% OF HIT BULLETS BECOME AMMO#BULLETS CAN'T BE DEFLECTED BY ENEMIES"
	else
		skill_text[16] = "65% OF HIT BULLETS BECOME AMMO#BULLETS CAN'T BE DEFLECTED BY ENEMIES"
	if betterWepSpecific
		skill_text[16] = "80% OF HIT BULLETS BECOME AMMO#BULLETS CAN'T BE DEFLECTED BY ENEMIES"
	skill_tips[16] = "no need to aim"
	skill_msnd[16] =  sndMutRecycleGland

	skill_name[17] = "ENERGY BRAIN"
	skill_text[17] = "ENERGY WEAPONS DEAL MORE DAMAGE"
	skill_tips[17] = "neurons everywhere"
	skill_msnd[17] =  sndMutLaserBrain

	if UberCont.lastwishused=false
	{
	skill_name[18] = "LAST WISH"
	if isDoctor
		skill_text[18] = "GET FULL HEALTH AND FULL AMMO#GAIN ONE LIFE"
	else
		skill_text[18] = "GET FULL HEALTH AND SOME AMMO#GAIN ONE LIFE"
	skill_tips[18] = "listen"
	skill_msnd[18] =  sndMutLastWish
	}
	else
	{
	skill_name[18] = "LAST WISH"
	if isDoctor
		skill_text[18] = "GET FULL HEALTH AND FULL AMMO#REGAIN ONE PART OF YOUR LIFE"
	else
		skill_text[18] = "GET FULL HEALTH AND SOME AMMO#REGAIN ONE PART OF YOUR LIFE"
	skill_tips[18] = "listen"
	skill_msnd[18] =  sndMutLastWish
	}

	skill_name[19] = "EAGLE EYES"
	if random(500) < 1
		skill_text[19] = "BETTER ACCURACY#SMALL AIM ASSIST/HOMING#SEE CONTENT OF WEAPON CHESTS#SEE FURTHER#SHOW WEAPON TIER#SHOW DAMAGE INDICATORS#INCREASE LUCK#MORE DAMAGE#FASTER FIRE RATE#GET ULTRA MUTATION#INSTANTLY LOOP#INCREASE MAX LEVEL BY 5#MORE RAD DROPS#EVERY KILL OVERHEALS FOR 6HP#GET TWO ULTRA MUTATIONS#FROM ANOTHER CHARACTER#SIT ON THE THRONE#EVERY ENEMY MORPHS INTO A CHICKEN#THE CHICKEN WILL DROP#A HIGH TIER WEAPON#GET QUAD SPC#IT COSTS 2 AMMO#AIRHORN.WAV EVERYTIME YOU SHOOT"
	else
		skill_text[19] = "BETTER ACCURACY#SMALL AIM ASSIST/HOMING#SEE CONTENT OF WEAPON CHESTS#SEE FURTHER";
	skill_tips[19] = "every shot connects"
	skill_msnd[19] =  sndMutEagleEyes

	skill_name[20] = "IMPACT WRISTS"
	skill_text[20] = "CORPSES FLY & HIT HARDER#FAST CORPSES CAN DESTROY WALLS"
	skill_tips[20] = "see them fly"
	skill_msnd[20] =  sndMutImpactWrists

	skill_name[21] = "BOLT MARROW"
	skill_text[21] = "HOMING BOLTS"
	skill_tips[21] = "bolts everywhere"
	skill_msnd[21] =  sndMutBoltMarrow

	skill_name[22] = "SHARP STRESS"
	if UberCont.opt_gamemode == 24
	{
		skill_text[22] = "FUCK YEA SHARP STRESS!#IT STACKS!"
	}
	else
	{
		skill_text[22] = "WHENEVER YOU TAKE DAMAGE#DEAL DAMAGE TO ALL ENEMIES ON SCREEN#RELOAD YOUR WEAPONS#AS HP GETS LOWER"
	}
	skill_tips[22] = "ultimate low health hybrid"
	skill_msnd[22] =  sndMutSharpStress

	skill_name[23] = "OPEN MIND"
	skill_text[23] = "EXTRA CHESTS SPAWN"
	if canCheckUltra && Player.ultra_got[1]
		skill_text[23] = "EXTRA CHESTS SPAWN#INCREASE CONFISCATE CHANCE#BY 25%"
	skill_tips[23] = "open mind also increases rad canisters"
	skill_msnd[23] =  sndMutOpenMind

	if random(800)<1
	skill_name[24] = "TRIGGER PRINGELS"
	else
	skill_name[24] = "TRIGGER FINGERS"
	skill_text[24] = "EACH KILL#RELOADS YOUR WEAPONS#BY 40% OF REMAINING RELOAD"
	if isDoctor
		skill_text[24] = "EACH KILL#RELOADS YOUR WEAPONS#BY 45% OF REMAINING RELOAD"
	skill_tips[24] = "keep killing"
	skill_msnd[24] =  sndMutTriggerfingers

	skill_name[25] = "STRONG SPIRIT"
	if isDoctor
		skill_text[25] = "DENIES LETHAL BLOWS ONCE PER AREA#RECHARGES WHEN AT ATLEAST 75% HEALTH"
	else
		skill_text[25] = "DENIES LETHAL BLOWS ONCE PER AREA#RECHARGES WHEN AT FULL HEALTH"
	skill_tips[25] = "denied"
	skill_msnd[25] =  sndMutStrongSpirit

	skill_name[26] = "HAMMER HEAD"
	skill_text[26] = "BREAK THROUGH SOME WALLS#FIND RESOURCES IN ANY WALL"
	skill_tips[26] = "hello welcome to my#minecraft let's play"
	skill_msnd[26] =  sndMutHammerHead

	skill_name[27] = "PATIENCE"
	if isDoctor
		skill_text[27] = "CHOOSE A DIFFERENT MUTATION RIGHT AWAY"
	else
		skill_text[27] = "CHOOSE A MUTATION NEXT AREA"
	skill_tips[27] = "wait"
	skill_msnd[27] =  sndMutPatience


	skill_name[28] = "RAGE"
	skill_text[28] = "EACH KILL INCREASES:#DROPRATE, ALL WEAPON RELOAD SPEED#AND DECREASES ACCURACY SLIGHTLY##RESETS EACH TIME YOU GET HIT"
	skill_tips[28] = "dodge to kill"
	skill_msnd[28] =  sndMutRage

	skill_name[29] = "INSOMNIA"
	skill_text[29] = "ENEMIES DON'T ATTACK YOU#FOR A COUPLE OF SECONDS#AT THE START OF EACH AREA"
	skill_tips[29] = "sleep"
	skill_msnd[29] =  sndInsomnia

	skill_name[30] = "POWER CRAVING"
	skill_text[30] = "EVERY WEAPON HAS ONE RANDOM WEAPON MOD#INCREASE MOD MAX BY ONE#INCREASE EFFECTIVENESS OF WEAPON MODS#MORE WEAPON MODS IN CROWNVAULT"
	skill_tips[30] = "maximum power"
	skill_msnd[30] =  sndPowerCraving
	
	if random(200)<1
	skill_name[31] = "TURTLE SHELL"
	else
	skill_name[31] = "TOUGH SHELL"
	if isDoctor
		skill_text[31] = "EVERYTHING THAT DEALS#MORE THAN 4 DAMAGE TO YOU#DEALS TWO LESS DAMAGE##EVERYTHING THAT DEALS#MORE THAN 2 DAMAGE#DEALS ONE LESS DAMAGE"
	else
		skill_text[31] = "EVERYTHING THAT DEALS#MORE THAN 1 DAMAGE TO YOU#DEALS ONE LESS DAMAGE"
	skill_tips[31] = "damage reduction!"
	skill_msnd[31] =  sndToughShell
	
	skill_name[32] = "ALKALINE SALIVA"
	if isDoctor
	{
		if instance_exists(Player) && Player.skill_got[9] == 1
		{
			skill_text[32] = "FIRST HIT YOU TAKE IN AN AREA#WHILE BELOW MAX HP#HEALS YOU INSTEAD (125%)#DOUBLE HEALING WITH SECOND STOMACH"
		}
		else
		{
			skill_text[32] = "FIRST HIT YOU TAKE IN AN AREA#WHILE BELOW MAX HP#HEALS YOU INSTEAD (125%)";
			if instance_exists(Player) && Player.skill_got[32] == 1
				skill_text[9] = "4, SOMETIMES 5 HP# FROM MEDKITS#DOUBLE HP FROM MEDCHESTS#AND ALKALINE SALIVA"
		}
	}
	else
	{
		if instance_exists(Player) && Player.skill_got[9] == 1
		{
			skill_text[32] = "FIRST HIT YOU TAKE IN AN AREA#WHILE BELOW MAX HP#HEALS YOU INSTEAD#DOUBLE HEALING WITH SECOND STOMACH";
		}
		else
		{
			skill_text[32] = "FIRST HIT YOU TAKE IN AN AREA#WHILE BELOW MAX HP#HEALS YOU INSTEAD"
			if instance_exists(Player) && Player.skill_got[32] == 1 && UberCont.opt_gamemode != 32
				skill_text[9] = "DOUBLE HP FROM MEDKITS, MEDCHESTS#AND ALKALINE SALIVA"
		}
	}
	skill_tips[32] = "yes pain yes gain"
	skill_msnd[32] =  sndMutAlkalineSaliva
	
	skill_name[33] = "GLASS ARM CANNON"//Metroid reference I guess
	if isDoctor
		skill_text[33] = "25% LESS ENEMY HP#-1 MAX HP"
	else
		skill_text[33] = "25% LESS ENEMY HP#-2 MAX HP"
	skill_tips[33] = "fragile"
	skill_msnd[33] =  sndMutGlassArmCannon
	if instance_exists(Player) 
	{
		if (Player.race == 4 && Player.maxhealth <= 2 && UberCont.ctot_skill_taken[33] <= 0)
		{
			skill_text[33] = "25% LESS ENEMY HP#-2 MAX HP#TAKING THIS WONT KILL YOU <3"	
		}
	}
	
	skill_name[34] = "FLEXIBLE ELBOWS"
	skill_text[34] = "RELOAD YOUR SECONDARY AT 20% SPEED##IF YOUR SECONDARY IS RELOADED:#INCREASE PRIMARY FIRERATE BY 30%##IF NOT:#EVERY ENEMY HAS A 10% CHANCE#TO DROP AN ADDITIONAL ITEM"
	if isDoctor
		skill_text[34] = "RELOAD YOUR SECONDARY AT 25% SPEED##IF YOUR SECONDARY IS RELOADED:#INCREASE PRIMARY FIRERATE BY 30%##IF NOT:#EVERY ENEMY HAS A 12% CHANCE#TO DROP AN ADDITIONAL ITEM"
	if instance_exists(Player) && Player.cwep != 0
		skill_text[34] = "RELOAD YOUR OFFHAND WEAPONS#AT 20% SPEED##IF ANY OF YOUR#OFFHAND WEAPONS IS RELOADED:#INCREASE PRIMARY FIRERATE BY 30%##IF NOT:#EVERY ENEMY HAS A 10% CHANCE#TO DROP AN ADDITIONAL ITEM"
	skill_tips[34] = "looting and shooting"
	skill_msnd[34] =  sndMutFlexibleElbows
	
	
	skill_name[35] = "PUFFY CHEEKS"
	skill_text[35] = "YOU CAN PREEMPTIVELY RELOAD#UP TO TWO SHOTS#EXTRA SHOTS LOAD AT 40% RELOAD SPEED"
	if isDoctor
		skill_text[35] = "YOU CAN PREEMPTIVELY RELOAD#UP TO TWO SHOTS#EXTRA SHOTS LOAD AT 50% RELOAD SPEED"
	skill_tips[35] = "big round cheeks"
	skill_msnd[35] =  sndMutPuffyCheeks
	
	/*
	skill_name[33] = "THRONE BACK"
	skill_text[33] = "UPGRADES YOUR PASSIVE ABILITY"
	if instance_exists(Player)
	skill_text[33] = string(Player.race_name[Player.race])+" "+string(Player.race_back[Player.race])
	skill_tips[33] = "rest on the throne"
	skill_msnd[33] =  sndMutThronebutt
	*/
	
	skill_name[36] = "NOTHING"
	skill_text[36] = "THERE ARE NO MORE MUTATIONS LEFT!"
	skill_tips[36] = ""
	skill_msnd[36] =  sndPartyHorn


}
