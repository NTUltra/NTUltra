
function scrSkills() {
	maxskill = 46;


	dir = 0
	repeat(maxskill+2)
	{skill_got[dir] = 0
	dir += 1}
	
	var isHand = false;
	var betterWepSpecific = false;
	var canCheckUltra = false;
	if instance_exists(Player)
	{
		if variable_instance_exists(Player,"ultra_got")
			canCheckUltra = true;
		else if Player.race == 27
		{
			isHand = true;	
		}
		if canCheckUltra && Player.ultra_got[97] && !Player.altUltra
		{
			betterWepSpecific = true;
		}
	}
	skill_name[0] = "HEAVY HEART"
	skill_text[0] = "MORE <w>WEAPON DROPS<w>#DROPPED WEAPONS FIRE AT ENEMIES#ADDITIONAL WEAPON IN <r>WEAPON CHESTS<r>"
	skill_detail[0] = "+40% <w>WEAPON DROP RATE<w>#EVERY ENEMY HAS A +1% CHANCE#TO DROP AN <w>ADDITIONAL WEAPON<w>##DROPPED WEAPONS <w>FIRE AT ENEMIES<w>#ADDITIONAL WEAPON IN <r>WEAPON CHESTS<r>";
	skill_msnd[0] = sndMutHeavyHeart
	skill_tips[0] = "guns got guns"
	skill_bons[0] = "+25% WEAPON DROP RATE";

	skill_name[1] = "RHINO SKIN"
	if !UberCont.useSeed && random(200) < 1
		skill_name[1] = "JUGGERNOG";
	skill_text[1] = "+4 <r>MAX HP<r>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[1] = "+4 <gb>MAX ARMOUR<gb>"
	}
	skill_detail[1] = skill_text[1];
	skill_tips[1] = "thick skin"
	skill_msnd[1] =  sndMutRhinoSkin
	skill_bons[1] = "+1 MAX HP";

	skill_name[2] = "EXTRA FEET"
	if !UberCont.useSeed && random(600) < 1
		skill_name[2] = "SPEED UP"
	skill_text[2] = "WALK <w>FASTER<w>#DODGING GIVES <y>RES<y><g>OUR<g><r>CES<r>#AND CASTS A <aq>SHIELD<aq>"
	skill_detail[2] = "MORE <w>SPEED<w>,#WALK NORMAL ON ALL <w>TERRAIN<w>#CLOSE <w>DODGES<w> SOMETIMES#DROP <y>RES<y><g>OUR<g><r>CES<r>#AND CASTS A <aq>SHIELD<aq>#CAN'T BE <w>DISPLACED<w> BY ENEMIES#NEGATE WEAPON RECOIL#INCREASE RESISTANCE TO <p>PORTAL<p> PULL"//"MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES#DROP A WEAPON/ITEM & ALWAYS DROP RADS"
	skill_tips[2] = choose("run forever","run forever","run forever","you can't be displaced#when you have extra feet");
	skill_msnd[2] =  sndMutExtraFeet
	skill_bons[2] = "+20% MORE SPEED#MORE RESOURCES ON DODGE#BIGGER DODGE SHIELD";
	if instance_exists(Player)
	{
		if Player.race == 18
		{
			skill_name[2] = "EXTRA WINGS"
			skill_tips[2] = "fly forever"
		}
		else
		{
			if isHand
				skill_name[2] = "EXTRA FINGERS"
			if Player.race == 1
			{
				skill_detail[2] = "FASTER <w>ROLL<w>#MORE WALK <w>SPEED<w>#WALK NORMAL ON ALL <w>TERRAIN<w>#CLOSE <w>DODGES<w> SOMETIMES DROP <y>RES<y><g>OUR<g><r>CES<r>#CAN'T BE <w>DISPLACED<w> BY ENEMIES"
			}
			else if Player.race == 13
			{
			
				skill_detail[2] = "FASTER <pi>CHARGE<pi>#MORE <pi>CHARGE<pi> <w>CONTROL<w>#MORE WALK <w>SPEED<w>,#WALK NORMAL ON ALL <w>TERRAIN<w>#CLOSE <w>DODGES<w> SOMETIMES DROP <y>RES<y><g>OUR<g><r>CES<r>#CAN'T BE <w>DISPLACED<w> BY ENEMIES"
			}
			else
			{
				if !UberCont.useSeed && random(1000)<1
					skill_text[2] = "BE <w>FAST<w>#YOU CAN'T BE <pi>SUCKED<pi>";
			}
		}
	}
	

	skill_name[3] = "PLUTONIUM HUNGER"
	skill_text[3] = "STRONGER <g>ATTRACT<g> POWER"
	skill_detail[3] = "MORE THAN DOUBLE ATTRACT RANGE#<r>HP<r>/<y>AMMO<y>/<g>RAD<g> DROPS MOVE#TOWARDS YOU FASTER"
	skill_tips[3] = "need those rads"
	skill_msnd[3] =  sndMutPluto
	skill_bons[3] = "+25% RANGE";
	if !UberCont.useSeed && random(500)<1
	{
	skill_name[3] = "URANUS HUNGER"
	skill_tips[3] = "I need uranus!"
	}

	skill_name[4] = "RABBIT PAW"
	if !UberCont.useSeed && random(500)<1
		skill_name[4] = "LUCKY FOOT"
	skill_text[4] = "HIGHER <w>DROP RATE<w>"
	skill_detail[4] = "35% MORE <y>AMMO<y> AND <r>HEALTH<r> DROPS#5% MORE <w>WEAPONDROPS<w>"
	skill_tips[4] = "feeling lucky"
	skill_msnd[4] =  sndMutRabbitPaw
	skill_bons[4] = "+25% DROP RATE";

	skill_name[5] = "THRONE BUTT"
	skill_text[5] = "UPGRADES YOUR SPECIAL ABILITY"
	skill_detail[5] = skill_text[5];
	if instance_exists(Player)
		skill_text[5] = "[<w>"+string(Player.race_name[Player.race])+"<w>]#"+string(Player.race_butt[Player.race])
	if instance_exists(Player)
		skill_detail[5] = "[<w>"+string(Player.race_name[Player.race])+"<w>]#"+string(Player.race_butt_detail[Player.race])
	skill_tips[5] = "sit on the throne"
	if instance_exists(Player)
	{
	if Player.race=1{
	skill_tips[5] = "Fish's throne butt is good now!"}
	else if Player.race=27{
	skill_tips[5] = "allmighty push!"}
	}
	skill_msnd[5] =  sndMutThronebutt
	skill_bons[5] = "";


	skill_name[6] = "LUCKY SHOT"
	if !UberCont.useSeed && random(500)<1
		skill_name[6] = "CASINO ROLL"
	skill_text[6] = "CHANCE KILLS REGENERATE <y>AMMO<y>"
	skill_detail[6] = "20% CHANCE KILLS REGENERATE <y>AMMO<y>";
	skill_tips[6] = "ammo everywhere"
	skill_msnd[6] =  sndMutLuckyShot
	skill_bons[6] = "+25% CHANCE#(TOTAL: 26%)";
	
	
	skill_name[7] = "BLOODLUST"
	if !UberCont.useSeed && random(500)<1
		skill_name[7] = "BUTTERED BREAD"
	skill_text[7] = "CHANCE KILLS REGENERATE <r>HP<r>"
	skill_detail[7] = "7.6% CHANCE KILLS REGENERATE <r>HP<r>#BOSS KILLS ALWAYS <r>HEAL<r>#ENEMIES YOU <r>HEAL<r> FROM EXPLODE IN <r>BLOOD<r>"
	if instance_exists(Player) && (Player.race == 12)//YC
	{
		skill_text[7] = "CHANCE KILLS REGENERATE <r>HP<r>#CAN <r>HEAL<r> <w>DUPLICATES<w>"
		skill_detail[7] = "7.6% CHANCE KILLS REGENERATE <r>HP<r>#BOSS KILLS ALWAYS <r>HEAL<r>#ENEMIES YOU <r>HEAL<r> FROM EXPLODE IN <r>BLOOD<r>#CAN <r>HEAL<r> ONE RANDOM <w>DUPLICATE<w>"
	}
	skill_tips[7] = "drink blood"
	skill_msnd[7] =  sndMutBloodlust
	skill_bons[7] = "+25% CHANCE#(TOTAL: 9.6%)";


	skill_name[8] = "GAMMA GUTS"
	if !UberCont.useSeed && random(800)<1
		skill_name[8] = "SOCIAL DISTANCING"
	skill_text[8] = "<w>ENEMIES<w> TOUCHING YOU TAKE DAMAGE#YOU TAKE LESS <w>ENEMY CONTACT DAMAGE<w>"
	skill_detail[8] = "<w>ENEMIES<w> TOUCHING YOU TAKE DAMAGE#DON'T TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>#ALLOWS <g>SERENE DREAMS<g> TO DEAL DAMAGE"
	if instance_exists(Player)
	{
		if Player.race == 13//Sheep
		{
			skill_detail[8] = "<pi>CHARGE<pi> DEALS MORE DAMAGE#<w>ENEMIES<w> TOUCHING YOU TAKE DAMAGE#DON'T TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"
		}
		else if Player.race == 2//CRYSTAL
		{
			skill_detail[8] = "<w>ENEMIES<w> TOUCHING YOU OR YOUR <p>SHIELD<p>#TAKE DAMAGE#DON'T TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"
		}
		else if Player.race == 1//FISH
		{
			skill_detail[8] = "<w>ENEMIES<w> TOUCHING YOU#TAKE DAMAGE#DON'T TAKE DAMAGE FROM#<w>EXTENDED RANGE<w> WHEN <g>ROLLING<g>#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"
		}
		else if Player.race == 18//ANGEL
		{
			skill_detail[8] = "<w>ENEMIES<w> TOUCHING YOU TAKE DAMAGE#YOUR <aq>DEFLECT<aq> DEALS MORE CONTACT DAMAGE#DON'T TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"	
		}
	}
	skill_tips[8] = "skin glows"
	skill_msnd[8] =  sndMutGammaGuts
	skill_bons[8] = "+2 CONTACT DAMAGE#TAKE 25% LESS CONTACT DAMAGE";
	

	
	skill_name[9] = "SECOND STOMACH"
	skill_text[9] = "MORE <r>HP<r> FROM MEDKITS";
	skill_detail[9] = "DOUBLE <r>HP<r> FROM MEDKITS & MEDCHESTS"
	if instance_exists(Player) && (Player.race == 12)//YC
	{
		skill_text[9] = "MORE <r>HP<r> FROM MEDKITS#MEDKITS <r>HEAL<r> <w>DUPLICATES<w>";
		skill_detail[9] = "DOUBLE <r>HP<r> FROM MEDKITS & MEDCHESTS#MEDKITS <r>HEAL<r> ALL <w>DUPLICATES<w> (1 HP)"
	}
	skill_tips[9] = "stomach rumbles"
	if isHand
	{
		skill_name[9] = "FIRST STOMACH";
		skill_tips[9] = "get it.. cause a hand has no stomach"
	}
	skill_msnd[9] =  sndMutSecondStomache
	skill_bons[9] = "50% CHANCE MEDKITS GIVE 5HP";
	if !UberCont.useSeed && random(200) < 1
	{
		skill_name[9] = "SECOND TUMMY"
		skill_text[9] = "<r>OMNOMNOMNOM<r>"
		skill_detail[9] = skill_text[9];
		skill_tips[9] = "omnomnomnom"
		skill_msnd[9] =  sndMutSecondStomache
		skill_bons[9] = "OMNOMNOMNOM";
	}
	
	skill_name[10] = "BACK MUSCLE"
	if !UberCont.useSeed && random(900)<1
		skill_name[10] = "GYM BRO"
	skill_text[10] = "HIGHER <y>AMMO MAX<y>#REDUCE <y>AMMO<y> <w>COST<w>"
	if instance_exists(Player) && (Player.race == 22)//ROGUE
	{
		skill_text[10] = "HIGHER <y>AMMO MAX<y>#REDUCE <y>AMMO<y> <w>COST<w>#INCREASE <b>PORTAL STRIKE<b> AMMO"
		skill_detail[10] = "ABOUT DOUBLE HIGHER <y>AMMO MAX<y>#MINOR <y>AMMO<y> <w>DROP RATE<w> INCREASE#7% <y>AMMO<y> <w>COST<w> REDUCTION#INCREASE <b>PORTAL STRIKE<b> AMMO"
	}
	else
	{
		skill_detail[10] = "ABOUT DOUBLE HIGHER <y>AMMO MAX<y>#MINOR <y>AMMO<y> <w>DROP RATE<w> INCREASE#7% <y>AMMO<y> <w>COST<w> REDUCTION"
	}
	skill_tips[10] = "back muscle works like mini rabbit paw"
	skill_msnd[10] =  sndMutBackMuscle
	skill_bons[10] = "+30% AMMO MAX#+4% COST REDUCTION";

	skill_name[11] = "SCARIER FACE"
	if isHand
		skill_name[11] = "SCARIER NAIL"
	//skill_text[11] = "20% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS"
	//50% OF EXCESS DAMAGE YOU DEAL#IS ADDED TO YOUR NEXT HIT
	//+5%
	skill_text[11] = "DEAL <w>FIXED<w> EXTRA DAMAGE#SOME <w>EXCESS<w> <r>DAMAGE<r> TRANSFERS TO#THE NEXT <r>DAMAGE<r> YOU <w>DEAL<w>"; 
	skill_detail[11] = "ADD A <w>FIXED<w> 0.5 EXTRA DAMAGE#TO ALL INSTANCES OF DAMAGE#DEALT TO ENEMIES##65% OF <w>EXCESS<w> <r>DAMAGE<r> YOU <w>DEAL<w>#IS ADDED TO THE <w>NEXT<w> <r>DAMAGE<r> YOU <w>DEAL<w>#GETS LESS EFFECTIVE THE MORE#EXCESS DAMAGE YOU STACK UP"
	skill_tips[11] = "imprint fear"//"mirrors will break"
	skill_msnd[11] =  sndMutScarierFace
	skill_bons[11] = "80% INSTEAD#+0.15 FIXED DAMAGE";

	skill_name[12] = "EUPHORIA"
	skill_text[12] = "SLOWER ENEMY BULLETS#SHORT <aq>INVINCIBILITY<aq> UPON GETTING HIT";
	skill_detail[12] = "SLOWER ENEMY BULLETS#WHEN YOU GET HIT YOU GAIN#<aq>INVINCIBILITY<aq> FOR A SHORT MOMENT#AND CASTS A <aq>SHIELD<aq>"
	skill_tips[12] = "time passes slowly"
	skill_msnd[12] =  sndMutEuphoria
	skill_bons[12] = "+25% IMMUNE TIME#BIGGER PROTECTION BUBBLE";


	skill_name[13] = "LONG ARMS"
	skill_text[13] = "MORE <w>MELEE<w> RANGE AND SIZE";
	skill_detail[13] = skill_text[13] + "#(WEAPON SPECIFIC MUTATION)";
	skill_tips[13] = "more reach"
	skill_msnd[13] =  sndMutLongArms
	skill_bons[13] = "+25% RANGE";
	if betterWepSpecific
		skill_bons[13] = "+65% RANGE +25% SIZE +20% WALL PIERCE";
		
	skill_name[14] = "BOILING VEINS"
	if !UberCont.useSeed && random(900)<1
		skill_name[14] = "HOT HEAD"
	skill_text[14] = "EXPLOSIONS <r>BURN<r> ENEMIES#NO DAMAGE FROM#<w>EXPLOSIONS<w>, <w>FIRE<w> AND <w>FROST<w>#WHEN UNDER 4<r>HP<r>"
	skill_detail[14] = "EXPLOSIONS <r>BURN<r> ENEMIES#NO DAMAGE FROM#<w>EXPLOSIONS<w>, <w>FIRE<w>, <w>FROST<w>#AND YOU CAN'T BE <w>FROZEN<w>#WHEN UNDER 4<r>HP<r>##(WEAPON SPECIFIC MUTATION)";
	if instance_exists(Player) && Player.race == 13
	{
			
		skill_detail[14] = "EXPLOSIONS <r>BURN<r> ENEMIES#NO DAMAGE FROM#<w>EXPLOSIONS<w>, <w>FIRE<w> AND <w>FROST<w>#AND YOU CAN'T BE <w>FROZEN<w>#WHEN UNDER 4<r>HP<r>#LOSE LESS <pi>CHARGE<pi> FROM EXPLOSIONS#(WEAPON SPECIFIC MUTATION)";
	}
	skill_tips[14] = "temperature is rising";
	skill_msnd[14] =  sndMutBoilingVeins
	skill_bons[14] = "UNDER 5HP";
	if betterWepSpecific
		skill_bons[14] = "COMPLETELY IMMUNE#MORE FLAMES";


	skill_name[15] = "SHOTGUN SHOULDERS"
	if isHand
		skill_name[15] = "SHOTGUN KNUCKLES"
	skill_text[15] = "SHOTGUN SHELLS <pi>BOUNCE<pi> FURTHER#AND DEAL <r>SPLASH DAMAGE<r>";
	skill_detail[15] = "MOST <pi>BOUNCING PROJECTILES<pi>#BOUNCE FURTHER#<w>SHELLS<w> BOUNCE TOWARDS <r>ENEMIES<r>#<w>SHELLS<w> DEAL <r>SPLASH DAMAGE<r>#<w>SHELLS<w> CAN'T BE <pi>DEFLECTED<pi> BY ENEMIES#(WEAPON SPECIFIC MUTATION)";
	skill_tips[15] = choose("shells are friends","shotgun shoulders\nextends close range damage\nfrom shotguns","shotgun shoulders\nincreases bouncer bullets bounces by 1","shotgun shoulders:\nincreases swordgun bounces")
	skill_msnd[15] =  sndMutShotGunShoulders
	skill_bons[15] = "+25% WALLBOUNCE# + 10% SPLASH DAMAGE RANGE";
	if betterWepSpecific
		skill_bons[15] = "+75% WALLBOUNCE#+50% SPLASH DAMAGE RANGE#+10% SPLASH DAMAGE";

	skill_name[16] = "RECYCLE GLAND"
	skill_text[16] = "SOME <y>BULLETS<y> BECOME <y>AMMO<y>#HIT <w>BULLETS<w> DEAL <r>SPLASH DAMAGE<r>";
	if instance_exists(Player) && (Player.race == 21 && canCheckUltra && Player.altUltra && Player.ultra_got[0])
		skill_text[16] += "#ALSO APPLIES TO <g>CASH FLOW<g>";
	skill_detail[16] = "65% OF HIT <y>BULLETS<y> BECOME <y>AMMO<y>#HIT <w>BULLETS<w> DEAL <r>SPLASH DAMAGE<r>#<w>BULLETS<w> CAN'T BE <pi>DEFLECTED<pi> BY ENEMIES#(WEAPON SPECIFIC MUTATION)";
	if instance_exists(Player) && (Player.race == 21 && canCheckUltra && Player.altUltra && Player.ultra_got[0])
		skill_detail[16] += "#ALSO APPLIES TO <g>CASH FLOW<g>";
	skill_tips[16] = "no need to aim"
	skill_msnd[16] =  sndMutRecycleGland
	skill_bons[16] = "+9% CHANCE#+10% SPLASH DAMAGE RANGE";
	if betterWepSpecific
		skill_bons[16] = "+7% CHANCE#+40% SPLASH DAMAGE RANGE#+15% SPLASH DAMAGE";

	skill_name[17] = "ENERGY BRAIN"
	skill_text[17] = "<g>ENERGY<g> WEAPONS DEAL MORE DAMAGE"
	if instance_exists(Player) && (Player.race == 21)
			skill_text[17] += "#<g>BEAM<g> LASTS LONGER AND IS BIGGER";
	skill_detail[17] = skill_text[17] + "#(WEAPON SPECIFIC MUTATION)";
	skill_tips[17] = "neurons everywhere"
	skill_msnd[17] =  sndMutLaserBrain
	skill_bons[17] = "+25% ENERGY DAMAGE";
	if betterWepSpecific
		skill_bons[17] = "+50% ENERGY DAMAGE";

	skill_text[18] = "GET FULL <r>HEALTH<r> AND SOME <y>AMMO<y>#GAIN <w>DEATH<w> <aq>PREVENTION<aq>";
	if !UberCont.lastwishused
	{
		skill_name[18] = "LAST WISH"
		skill_detail[18] = "GAIN 1 <w>LIFE<w>#<aq>PREVENT<aq> LETHAL DAMAGE#AND RESET <r>HEALTH<r> TO HALF# ONCE PER LOOP##GET FULL <r>HEALTH<r> AND SOME <y>AMMO<y> NOW"
		skill_tips[18] = "listen"
		skill_msnd[18] =  sndMutLastWish
	}
	else
	{
		skill_name[18] = "LAST WISH"
		skill_detail[18] = "<aq>PREVENT<aq> <w>LETHAL DAMAGE<w>#AND RESET HEALTH TO HALF# ONCE PER LOOP##GET FULL <r>HEALTH<r> AND SOME <y>AMMO<y> NOW##REGAIN ONE PART OF YOUR <w>LIFE<w>"
		skill_tips[18] = "listen"
		skill_msnd[18] =  sndMutLastWish
	}
	skill_bons[18] = "GET FULL AMMO#FULL HP WHEN LETHAL IS PREVENTED";

	skill_name[19] = "EAGLE EYES"
	skill_text[19] = "BETTER <w>ACCURACY<w>";
	if instance_exists(Player) && (Player.race == 21)
		skill_text[19] += "#IMPROVE <g>BEAM<g> <w>ACCURACY<w>";
	if !UberCont.useSeed && random(500) < 1
		skill_detail[19] = "BETTER <w>ACCURACY<w>#<w>AIM ASSIST<w>/<w>HOMING<w>#SEE CONTENTS OF WEAPON CHESTS#SEE FURTHER#SHOW WEAPON TIER#SHOW DAMAGE INDICATORS#INCREASE <aq>LU<aq><g>CK<g>#MORE DAMAGE#FASTER <w>FIRE RATE<w>#INSTANTLY <w>LOOP<w>#INCREASE MAX <g>LEVEL<g> BY 5#MORE <g>RAD<g> DROPS#EVERY KILL <r>OVERHEALS<r> FOR 6<r>HP<r>#GET TWO <g>ULTRA MUTATIONS<g>#SIT ON THE <p>THRONE<p>#EVERY ENEMY MORPHS INTO A CHICKEN#THE <w>CHICKEN<w> WILL DROP#A HIGH TIER WEAPON#GET <b>QUAD SPC<b>#IT COSTS 2 AMMO#<pi>AIRHORN.WAV<pi> EVERYTIME YOU SHOOT"
	else
	{
		skill_detail[19] = "BETTER <w>ACCURACY<w>#<w>AIM ASSIST<w>/<w>HOMING<w>#SEE FURTHER";
		if instance_exists(Player) && (Player.race == 21)
			skill_detail[19] += "#IMPROVE <g>BEAM<g> <w>ACCURACY<w>";
	}
	skill_tips[19] = "every shot connects"
	skill_msnd[19] =  sndMutEagleEyes
	skill_bons[19] = "+20% ACCURACY +15% HOMING";

	skill_name[20] = "IMPACT WRISTS"
	skill_text[20] = "<w>CORPSES<w> FLY & HIT HARDER";
	skill_detail[20] = "<w>CORPSES<w> FLY & HIT HARDER#FAST CORPSES CAN DESTROY WALLS"
	if instance_exists(Player) && (Player.race == 10)
	{
		skill_text[20] = "<w>CORPSES<w> FLY & HIT HARDER#TOSS <w>ALLIES<w> FURTHER";
		skill_detail[20] = "<w>CORPSES<w> FLY & HIT HARDER#FAST CORPSES CAN DESTROY WALLS#TOSS <w>ALLIES<w> FURTHER#ALLIES DEAL MORE DAMAGE WHILE FLYING"
	}
	if instance_exists(Player) && (Player.race == 14)
	{
		skill_text[20] = "<w>CORPSES<w> FLY & HIT HARDER#THROW <w>WEAPONS<w> FURTHER";
		skill_detail[20] = "<w>CORPSES<w> FLY & HIT HARDER#FAST CORPSES CAN DESTROY WALLS#THROW <w>WEAPONS<w> FURTHER"
	}
	skill_tips[20] = "see them fly"
	skill_msnd[20] =  sndMutImpactWrists
	skill_bons[20] = "+30% CORPSE SPEED#+25% CORPSE HOMING";

	skill_name[21] = "BOLT MARROW"
	skill_text[21] = "HOMING <w>BOLTS<w>#BETTER <w>BOLT<w> PIERCE"
	skill_detail[21] = "HOMING <w>BOLT<w> TYPE WEAPONS#BETTER <w>BOLT<w> PIERCE#(WEAPON SPECIFIC MUTATION)";
	skill_tips[21] = "bolts everywhere"
	skill_msnd[21] =  sndMutBoltMarrow
	skill_bons[21] = "+25% HOMING";
	if betterWepSpecific
		skill_bons[21] = "+85% HOMING";

	skill_name[22] = "SHARP STRESS"
	if scrIsGamemode(24)
	{
		skill_text[22] = "FUCK YEA SHARP STRESS!#IT STACKS!"
		skill_detail[22] = skill_text[22];
	}
	else
	{
		skill_text[22] = "WHENEVER YOU TAKE <r>DAMAGE<r>:#<w>DEAL<w> <r>DAMAGE<r> TO ALL <w>NEARBY ENEMIES<w>##<w>RELOAD<w> YOUR WEAPONS#AS <r>HP<r> GETS LOWER"//#<w>KEEP RELOAD SPEED BOOST<w>#UNTIL THE END OF AN AREA"
		skill_detail[22] = "WHENEVER YOU TAKE <r>DAMAGE<r>:#<w>DEAL<w> <r>DAMAGE<r> TO ALL <w>NEARBY ENEMIES<w>##<w>RELOAD<w> YOUR WEAPONS#AS <r>HP<r> GETS LOWER#UP TO 70% RELOAD SPEED#UP TO 35% FOR OFFHAND WEAPONS#RELOAD BOOST <w>LINGERS<w>#FOR 3 SECONDS AFTER <r>HEALING<r>#ALSO GET RELOAD BOOST WHEN MAX HP IS 1"//#<w>KEEP MAX REACHED RELOAD SPEED BOOST<w>#UNTIL <w>THE END OF AN AREA<w>"
	}
	skill_tips[22] = "ultimate low health hybrid"
	skill_msnd[22] =  sndMutSharpStress
	skill_bons[22] = "+7% RELOAD SPEED +25% DAMAGE";

	skill_name[23] = "OPEN MIND"
	skill_text[23] = "MORE <w>CHESTS<w>"
	skill_detail[23] = "EXTRA <w>CHESTS<w> SPAWN#SEE CONTENTS OF WEAPON <w>CHESTS<w>##OPENING <w>CHESTS<w>#FULLY <w>RELOADS<w> YOUR WEAPONS#REDUCE COST OF <g>ULTRA CHESTS<g>"
	if canCheckUltra && Player.ultra_got[1]
		skill_detail[23] = "EXTRA <w>CHESTS<w> SPAWN#SEE CONTENTS OF WEAPON <w>CHESTS<w>#INCREASE <g>CONFISCATE<g> CHANCE#BY 25%##OPENING <w>CHESTS<w>#FULLY <w>RELOADS<w> YOUR WEAPONS#REDUCE COST OF <g>ULTRA CHESTS<g>"
	skill_tips[23] = "open mind also increases rad canisters"
	skill_msnd[23] =  sndMutOpenMind
	skill_bons[23] = "+25% CHANCE FOR AN#EXTRA WEAPON CHEST#RAD CANISTERS RETURN";

	if !UberCont.useSeed && random(800)<1
	skill_name[24] = "TRIGGER PRINGELS"
	else
	skill_name[24] = "TRIGGER FINGERS"
	skill_text[24] = "KILLS <w>RELOAD<w>";
	skill_detail[24] = "EACH KILL#<w>RELOADS<w> YOUR WEAPONS#BY 30% OF REMAINING <w>RELOAD<w>"
	skill_tips[24] = "keep killing"
	skill_msnd[24] =  sndMutTriggerfingers
	skill_bons[24] = "+27% RELOAD (TOTAL: 38%)";

	if !UberCont.useSeed && random(1000)<1
		skill_name[25] = "BELIEVE!"
	else
		skill_name[25] = "STRONG SPIRIT"
	skill_text[25] = "<aq>PREVENT<aq> <w>LETHAL DAMAGE<w> ONCE PER AREA";
	skill_detail[25] = "<aq>PREVENT<aq> <w>LETHAL DAMAGE<w> ONCE PER AREA#AND CAST A <aq>SHIELD<aq>##RECHARGES WHEN AT FULL <r>HP<r>"
	skill_tips[25] = "denied"
	skill_msnd[25] =  sndMutStrongSpirit
	skill_bons[25] = "RECHARGES WHEN AT 75% HP";

	skill_name[26] = "HAMMER HEAD"
	skill_text[26] = "<w>DIG<w> THROUGH SOME <w>WALLS<w>";
	skill_detail[26] = "<w>DIG<w> THROUGH A LIMITED NUMBER OF <w>WALLS<w>#WHILE <w>DIGGING<w> YOU ARE <aq>IMMUNE<aq> AND <w>FAST<w>#FIND <y>RES<y><g>OUR<g><r>CES<r> IN WALLS##UNUSED WALLBREAKS#GIVE <y>RES<y><g>OUR<g><r>CES<r> NEXT AREA"
	skill_tips[26] = "hello welcome to my#minecraft let's play"
	skill_msnd[26] =  sndMutHammerHead
	skill_bons[26] = "PUSH THROUGH +25% MORE WALLS#LONGER DIG IMMUNITY#EVEN FASTER MOVEMENT";

	skill_name[27] = "PATIENCE"
	skill_text[27] = "CHOOSE A <g>MUTATION<g> NEXT AREA"
	skill_detail[27] = "CHOOSE A <g>MUTATION<g> NEXT AREA";
	if instance_exists(Player) && Player.guarenteedReroll > 0
	{
		skill_detail[27] = "CHOOSE A <g>MUTATION<g> NEXT AREA#REROLLS LEFT: "+ string(Player.guarenteedReroll + 1);
	}
	skill_tips[27] = "wait"
	skill_msnd[27] =  sndMutPatience
	skill_bons[27] = "CHOOSE RIGHT AWAY";


	skill_name[28] = "RAGE"
	skill_text[28] = "<r>KILLS<r> SLOWLY INCREASE:#<w>RELOAD SPEED<w> AND <w>DROP RATE<w>#AND DECREASES <w>ACCURACY<w>";
	skill_detail[28] = "EACH <r>KILL<r> INCREASES:#<w>DROP RATE<w>, ALL WEAPON <w>RELOAD SPEED<w>#AND DECREASES <w>ACCURACY<w> SLIGHTLY##LOSE 30 <r>RAGE<r> EACH TIME YOU GET HIT##SELF INFLICTED DAMAGE#DOES NOT REDUCE RAGE"
	skill_tips[28] = "dodge to kill"
	skill_msnd[28] =  sndMutRage
	skill_bons[28] = "GAIN +25% MORE RAGE#LOSE 5 LESS RAGE ON HIT";
	

	skill_name[29] = "HYPERSOMNIA"
	skill_text[29] = "<w>ENEMIES<w> DON'T ATTACK YOU#FOR A FEW SECONDS#AT THE START OF EACH AREA"
	if instance_exists(Player) && (Player.race == 13)
		skill_text[29] = "<w>ENEMIES<w> DON'T ATTACK YOU#FOR A FEW SECONDS#AFTER YOU ENGAGE FIRE"
	if scrIsGamemode(25)
		skill_text[29] = "<w>ENEMIES<w> DON'T ATTACK YOU#FOR A FEW SECONDS#WHEN THEY SPAWN IN"
	skill_detail[29] = skill_text[29] + "##<b>IDPD<b> AND SOME BOSSES#SPAWN IN <aq>SLEEPY<aq>#SLEEPING ENEMIES DON'T EXPLODE";
	skill_tips[29] = "sleep"
	skill_msnd[29] =  sndHypersomnia
	skill_bons[29] = "+40% SLEEP SECONDS";

	skill_name[30] = "POWER CRAVING"
	skill_text[30] = "INCREASE EFFECTIVENESS OF <w>WEAPON MODS<w>"
	skill_detail[30] = "EVERY WEAPON HAS ONE RANDOM <w>WEAPON MOD<w>#INCREASE <w>MOD MAX<w> BY ONE#INCREASE EFFECTIVENESS OF <w>WEAPON MODS<w>#MORE <w>WEAPON MODS<w> IN <g>CROWNVAULT<g>##INCREASE <w>INVERTED<w> PORTAL CHANCE +10%"
	if scrIsGamemode(25)
		skill_detail[30] = "EVERY WEAPON HAS ONE RANDOM <w>WEAPON MOD<w>#INCREASE <w>MOD MAX<w> BY ONE#INCREASE EFFECTIVENESS OF <w>WEAPON MODS<w>#MORE <w>WEAPON MODS<w> IN BETWEEN WAVES"
	skill_tips[30] = "maximum power"
	skill_msnd[30] =  sndPowerCraving
	skill_bons[30] = "-25% MOD DELAY";
	
	if !UberCont.useSeed && random(200)<1
	skill_name[31] = "TURTLE SHELL"
	else
	skill_name[31] = "TOUGH SHELL"
	skill_text[31] = "+1 <r>MAX HP<r>#<w>REDUCE INCOMING DAMAGE<w>"
	skill_detail[31] = "+1 <r>MAX HP<r>#EVERYTHING THAT DEALS#MORE THAN 2 <w>DAMAGE<w> TO YOU#DEALS ONE LESS <w>DAMAGE<w>##NOTHING CAN DEAL MORE#THAN 8 DAMAGE TO YOU"
	skill_tips[31] = "damage reduction!"
	skill_msnd[31] =  sndToughShell
	skill_bons[31] = "EVERYTHING THAT DEALS#MORE THAN 4 DAMAGE TO YOU#DEALS TWO LESS DAMAGE#7 DAMAGE MAX";
	
	skill_name[32] = "ALKALINE SALIVA"
	skill_text[32] = "FIRST <aq>HIT<aq> YOU TAKE IN AN AREA#<r>HEALS<r> YOU INSTEAD";
	skill_detail[32] = "FIRST <aq>HIT<aq> YOU TAKE IN AN AREA#<r>HEALS<r> YOU INSTEAD (2<r>HP<r>)#CAN <w>CLEANSE<w> <r>ENEMY<r> <g>VENOM<g>"
	skill_tips[32] = "alkaline saliva prevents lethal damage if thats the first hit you take"
	skill_msnd[32] =  sndMutAlkalineSaliva
	skill_bons[32] = "+1 HP HEALING";
	
	
	skill_name[33] = "GLASS ARM CANNON"//Metroid reference I guess
	skill_text[33] = "35% LESS ENEMY <r>HP<r>#-2 <r>MAX HP<r>"
	skill_detail[33] = "35% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS#-2 <r>MAX HP<r>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[33] = "35% LESS ENEMY <r>HP<r>#-2 <gb>MAX ARMOUR<gb>"
		skill_detail[33] = "35% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS#-2 <gb>MAX ARMOUR<gb>"
	}
	skill_tips[33] = "fragile"
	skill_msnd[33] =  sndMutGlassArmCannon
	if instance_exists(Player) 
	{
		if (Player.race == 4 && Player.maxhealth <= 2 && UberCont.ctot_skill_taken[33] <= 0)
		{
			skill_detail[33] = "35% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS##-2 <r>MAX HP<r>#<pi>TAKING THIS WONT KILL YOU<pi> <r><3<r>"	
		}
	}
	skill_bons[33] = "20% LESS ENEMY HP INSTEAD#KEEP YOUR HEALTH";
	
	/* OLD
	skill_name[34] = "FLEXIBLE ELBOWS"
	skill_text[34] = "RELOAD YOUR SECONDARY AT 20% SPEED##IF YOUR SECONDARY IS RELOADED:#INCREASE PRIMARY FIRERATE BY 30%##IF NOT:#EVERY ENEMY HAS A 10% CHANCE#TO DROP AN ADDITIONAL ITEM"
	if instance_exists(Player) && Player.cwep != 0
		skill_text[34] = "RELOAD YOUR OFFHAND WEAPONS#AT 20% SPEED##IF ANY OF YOUR#OFFHAND WEAPONS IS RELOADED:#INCREASE PRIMARY FIRERATE BY 30%##IF NOT:#EVERY ENEMY HAS A 10% CHANCE#TO DROP AN ADDITIONAL ITEM"
	skill_tips[34] = "looting and shooting"
	skill_msnd[34] =  sndMutFlexibleElbows
	skill_bons[34] = "+5% SECONDARY RELOAD#+2% DROP CHANCE";
	*/
	skill_name[34] = "FLEXIBLE ELBOWS"
	skill_text[34] = "<w>RELOADING<w> SOMETIMES <g>SLAPS<g> ENEMIES"
	skill_detail[34] = "+10% <w>RELOAD SPEED<w> ON ALL WEAPONS##WHENEVER YOU <w>RELOAD<w> A WEAPON#ROLL FOR A CHANCE#TO <w>SLAP<w> <y>RES<y><g>OUR<g><r>CES<r>#OUT OF A NEARBY ENEMY#CHANCE DEPENDS ON:#BASE RELOAD TIME & DROP RATE"
	skill_tips[34] = "looting and shooting"
	skill_msnd[34] =  sndMutFlexibleElbows
	skill_bons[34] = "+20% RELOAD SPEED (TOTAL: 12%)#+50% SLAP DAMAGE";
	
	
	skill_name[35] = "PUFFY CHEEKS"
	skill_text[35] = "YOU CAN PREEMPTIVELY <w>RELOAD<w>#UP TO TWO SHOTS#INCREASE SECONDARY <w>RELOAD SPEED<w>";
	skill_detail[35] = "YOU CAN PREEMPTIVELY <w>RELOAD<w>#UP TO TWO SHOTS#EXTRA SHOTS LOAD AT 60% <w>RELOAD SPEED<w>##+40% SECONDARY <w>RELOAD SPEED<w>"
	if instance_exists(Player) && Player.cwep != 0
		skill_detail[35] = "YOU CAN PREEMPTIVELY <w>RELOAD<w>#UP TO TWO SHOTS#EXTRA SHOTS LOAD AT 60% <w>RELOAD SPEED<w>##+40% <w>OFFHAND RELOAD SPEED<w>"
	skill_tips[35] = "big round cheeks"
	skill_msnd[35] =  sndMutPuffyCheeks
	skill_bons[35] = "+25% EXTRA SHOT LOAD SPEED#(TOTAL: 70%)";
	
	skill_name[36] = "ABSORBING PORES"
	skill_text[36] = "<g>RADS<g> <r>HEAL<r> AND <w>RELOAD<w>#<w>ITEMS<w> GIVE <g>RADS<g>";
	skill_detail[36] = "<g>RADS<g> <r>HEAL<r> AND <w>RELOAD<w> ALL YOUR WEAPONS#<y>AMMO<y> AND <r>HP<r> DROPS GIVE <g>RADS<g>##EVERY 150TH <g>RAD<g> <r>HEALS<r> 1<r>HP<r>"
	skill_tips[36] = "osmosis"
	skill_msnd[36] =  sndMutAbsorbingPores
	skill_bons[36] = "-30 (20%) RADS REQUIRED"
	
	
	skill_name[37] = "ECSTATIC FISTS"//REJUVINATED SKIN
	skill_text[37] = "YOU DEAL <w>MORE DAMAGE<w>#BASED ON HOW FULL YOUR <r>HEALTH<r> IS";
	skill_detail[37] = "ALL <w>DAMAGE<w> TO ENEMIES IS INCREASED#BASED ON HOW FULL YOUR <r>HEALTH<r> IS#+33% AT <r>MAX HP<r>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[37] = "YOU DEAL <w>MORE DAMAGE<w>#BASED ON HOW FULL YOUR <gb>ARMOUR<gb> IS";
		skill_detail[37] = "ALL <w>DAMAGE<w> TO ENEMIES IS INCREASED#BASED ON HOW FULL YOUR <gb>ARMOUR<gb> IS#+33% AT <gb>MAX ARMOUR<gb>"
	}
	skill_tips[37] = "glock those gun"
	skill_msnd[37] =  sndMutEcstaticFists
	skill_bons[37] = "+25% DAMAGE INCREASE (TOTAL: 42%)"
	
	skill_name[38] = "ENRICHED METABOLISM"
	skill_text[38] = "<aq>NEGATE<aq> EVERY <w>FOURTH<w> HIT YOU TAKE#AND GET <y>AMMO<y> INSTEAD"
	skill_detail[38] = "<aq>NEGATE<aq> EVERY <w>FOURTH<w> HIT YOU TAKE#AND GET <y>AMMO<y> INSTEAD"
	skill_tips[38] = "delicious"
	skill_msnd[38] =  sndMutEnrichedMetabolism
	skill_bons[38] = "EVERY THIRD HIT#BUT MUCH LESS AMMO"
	
	skill_name[39] = "ALIEN INTESTINES"
	skill_text[39] = "<g>ACTIVE<g> SPAWNS <p>TENTACLES<p>"
	skill_detail[39] = "WHENEVER YOU TRY TO USE YOUR <g>ACTIVE<g>#OR WHEN YOU RELEASE YOUR ACTIVE#<p>TENTACLES<p> COME OUT OF YOUR BODY!##MORE POWERFUL THE LONGER#YOU WAIT BETWEEN USES";
	skill_tips[39] = "spatial anomaly"
	skill_msnd[39] =  sndMutAlienIntestines
	skill_bons[39] = "CHARGES FASTER"
	
	skill_name[40] = "BOUNCY FAT"
	skill_text[40] = "IF YOU HAVE <y>AMMO<y> AND TAKE LETHAL DAMAGE#<aq>PREVENT<aq> IT AND LOSE <y>AMMO<y> INSTEAD";
	skill_detail[40] = "IF YOU HAVE <y>AMMO<y> AND TAKE LETHAL DAMAGE#<aq>PREVENT<aq> IT AND LOSE#70% OF BASE TOTAL <y>AMMO<y>#20% LESS FOR TYPES YOU'RE HOLDING"
	skill_tips[40] = "layer of fat"
	skill_msnd[40] =  sndMutBouncyFat;
	skill_bons[40] = "-25% AMMO COST (TOTAL: 53%)"
	
	skill_name[41] = "NERVES OF STEEL"
	//skill_text[41] = "REPLACE 2 <r>HEALTH<r> WITH 1 <gb>ARMOUR<gb>##WHEN <w>FULL<w> ON <gb>ARMOUR<gb>:#SLIGHTLY INCREASE <w>RELOAD SPEED<w>##WHENEVER YOU ARE <w>MISSING<w> <gb>ARMOUR<gb>#<w>SIGNIFICANTLY<w> INCREASE <w>RELOAD SPEED<w>";
	//skill_detail[41] = "REPLACE 2 <r>MAX HEALTH<r> WITH 1 <gb>MAX ARMOUR<gb>##WHEN <w>FULL<w> ON <gb>ARMOUR<gb>:#<w>+15%<w> PRIMARY <w>RELOAD SPEED<w>##WHENEVER YOU ARE <w>MISSING<w> <gb>ARMOUR<gb>:#REDUCE PRIMARY <w>RELOAD TIME<w>#BY <w>37%<w> OF <w>BASE<w> RELOAD TIME#AND <w>+20%<w> <w>CONSTANT<w> RELOAD SPEED##<w>ENEMIES<w> HAVE A VERY SMALL CHANCE#TO DROP <gb>ARMOUR<gb>"
	skill_text[41] = "REPLACE 2 <r>HEALTH<r> WITH 1 <gb>ARMOUR<gb>##WHEN YOU HAVE <w>MAX<w> <gb>ARMOUR<gb>:#<w>SLIGHTLY<w> INCREASE <w>RELOAD SPEED<w>##WHENEVER YOU HAVE <r>NO<r> <gb>ARMOUR<gb>#<w>SIGNIFICANTLY<w> INCREASE <w>RELOAD SPEED<w>";
	skill_detail[41] = "REPLACE 2 <r>HEALTH<r> WITH 1 <gb>ARMOUR<gb>##WHEN YOU HAVE <w>MAX<w> <gb>ARMOUR<gb>:#<w>SLIGHTLY<w> INCREASE PRIMARY <w>RELOAD SPEED<w>##WHENEVER YOU HAVE <r>NO<r> <gb>ARMOUR<gb>#<w>SIGNIFICANTLY<w> INCREASE PRIMARY <w>RELOAD SPEED<w>##<w>ENEMIES<w> HAVE A VERY SMALL CHANCE#TO DROP <gb>ARMOUR<gb>";
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[41] = "LOSE 1 <gb>ARMOUR<gb>#WHEN YOU HAVE <w>MAX<w> <gb>ARMOUR<gb>#<w>SLIGHTLY<w> INCREASE <w>RELOAD SPEED<w>";
		skill_detail[41] = "LOSE 1 <gb>ARMOUR<gb>#WHEN YOU HAVE <w>MAX<w> <gb>ARMOUR<gb>#<w>SLIGHTLY<w> INCREASE PRIMARY <w>RELOAD SPEED<w>";
	}
	skill_tips[41] = "conduit of power"
	skill_msnd[41] =  sndMutNervesOfSteel;
	skill_bons[41] = "REPLACE ONLY 1 HEALTH#SLIGHTLY LESS RELOAD SPEED BOOST#(34%, 14% AND 18% RELOAD SPEED)"
	
	skill_name[42] = "THE TAIL'S END"
	skill_text[42] = "<w>BURST<w> WEAPONS FIRE MORE#<w>CHARGE<w> WEAPONS CHARGE MUCH FASTER"
	skill_detail[42] = "<w>BURST<w> WEAPONS FIRE 50% MORE FREE SHOTS#<w>CHARGE<w> WEAPONS CHARGE 100% FASTER#INCREASE MAX CHARGE##INCLUDES THINGS LIKE:#FLAMETHROWERS, LASER/ION CANNONS,#DOUBLE SHOTGUNS, SPLINTER GUNS ETC.#HOVER OVER WEAPON IN HUD#TO SEE IF IT IS A BURST WEAPON#(WEAPON SPECIFIC MUTATION)"
	skill_tips[42] = "tail is a weapon specific mutation"
	skill_msnd[42] =  sndMutTailEnd;
	skill_bons[42] = "+20% CHARGE RATE & BURST AMOUNT"
	if betterWepSpecific
		skill_bons[42] = "DOUBLE BURST & INSTA CHARGE"
	
	skill_name[43] = "MOOD SWING"
	skill_text[43] = "<r>FIRE<r> SPREADS#<p>TENTACLES<p> AND <b>LIGHTNING<b> <w>STUN<w> ENEMIES#<aq>FROST<aq> BREAKS INTO <w>ICICLES<w>#WHEN <g>TOXIC<g> HITS A WALL#IT CONVERTS TO BULLETS#"
	skill_detail[43] = "<r>FIRE<r> SPREADS TO NEARBY ENEMIES#<p>TENTACLES<p> AND <b>LIGHTNING<b> <w>STUN<w> ENEMIES#STUNNED ENEMIES DONT ACT OR MOVE#<aq>FROST<aq> BREAKS INTO <w>ICICLES<w>#ICICLES CAN ONCE AGAIN FREEZE#WHEN <g>TOXIC<g> HITS A WALL#IT CONVERTS TO BULLETS#(WEAPON SPECIFIC MUTATION)";
	skill_tips[43] = "feeling like an element"
	skill_msnd[43] =  sndMutMoodSwing
	skill_bons[43] = "+FIRE RANGE, LONGER STUN#MORE ICICLES#TOXIC BULLETS ANGLE TOWARDS ENEMIES"
	if betterWepSpecific
		skill_bons[43] = "ALL EFFECTS OCCUR ON ALL ELEMENTS"
	
	skill_name[44] = "SERENE DREAMS"
	skill_text[44] = "GET TWO ORBITING#<w>CRESCENT MOONS<w>#THAT <aq>DEFLECT<aq> PROJECTILES";
	skill_detail[44] = "GET TWO ORBITING#<w>CRESCENT MOONS<w>#THAT <aq>DEFLECT<aq> A LIMITED AMOUNT#OF PROJECTILES#RECHARGES SLOWLY WHILE IN COMBAT#MOONS CAN DEAL DAMAGE WITH <g>GAMMA GUTS<g>";
	skill_tips[44] = "the night sky protects me"
	skill_msnd[44] =  sndMutSereneDream;
	skill_bons[44] = "+23% RECHARGE RATE#BIGGER SHIELD"
	
	skill_name[45] = "ADRENALINE FUEL"
	skill_text[45] = "WHILE <w>IN<w> <r>CLOSE<r> <w>COMBAT<w>:#SLOWLY GAIN <y>AMMO<y>#VERY SLOWLY <r>HEAL<r>";
	skill_detail[45] = "WHILE <w>IN CLOSE COMBAT<w> <r>NEAR ENEMIES<r>:#SLOWLY GAIN <y>AMMO<y>#VERY SLOWLY <r>HEAL<r>#WHEN USING <g>ULTRA<g> WEAPONS GAIN <g>RADS<g>##PRIORITIZES EQUIPPED AMMO#CAN QUEUE ONE HEAL#WHEN AT FULL HEALTH";
	skill_tips[45] = "rush of adrenaline"
	skill_msnd[45] =  sndMutAdrenalineFuel;
	skill_bons[45] = "+25% HEAL RATE"
	
	skill_name[46] = "INNER PEACE"
	skill_text[46] = "WHILE <w>IN COMBAT<w> AND NOT <w>TAKING DAMAGE<w>:#SLOWLY GAIN A <aq>PROTECTIVE BARRIER<aq>#THAT <aq>BLOCKS<aq> ONE HIT#CAN STACK UP TO <w>3<w> <aq>BARRIERS<aq>";
	skill_detail[46] = "WHILE <w>IN COMBAT<w> AND NOT <w>TAKING DAMAGE<w>:#SLOWLY GAIN A <aq>PROTECTIVE BARRIER<aq>#THAT <aq>BLOCKS<aq> ONE HIT#CAN STACK UP TO <w>3<w> <aq>BARRIERS<aq>#SUBSEQUENT <aq>BARRIERS<aq> CHARGE SLOWER";
	skill_tips[46] = "rush of adrenaline"
	skill_msnd[46] =  sndMutInnerPeace;
	skill_bons[46] = "+23% CHARGE RATE#CAN CHARGE UP TO 4 BARRIERS"
	
	skill_name[maxskill + 1] = "REGAL VISION"
	skill_text[maxskill + 1] = "UPGRADES YOUR SPECIAL ABILITY"
	skill_detail[maxskill + 1] = skill_text[5];
	if instance_exists(Player)
		skill_text[maxskill + 1] = "[<w>"+string(Player.race_name[Player.race])+"<w>]#"+string(Player.race_vision[Player.race])
	if instance_exists(Player)
		skill_detail[maxskill + 1] = "[<w>"+string(Player.race_name[Player.race])+"<w>]#"+string(Player.race_vision_detail[Player.race])
	skill_tips[maxskill + 1] = "envision the throne"
	skill_msnd[maxskill + 1] =  sndMutRegalVision
	skill_bons[maxskill + 1] = "";
	
	/*
	skill_name[42] = "GLUTINOUS SOMETHING"
	skill_text[42] = "ALLOWS YOU TO STACK UP ON EXCESS HEALING AND AMMO#IT GETS APPLIED AS SOON AS POSSIBLE#THE MORE EXCESS YOU HAVE STACKED UP THE SOMETHING POWER"
	skill_tips[42] = "EAT THE RICH"
	skill_bons[42] = "CARRY 1 ADDITION DROP"
	skill_msnd[42] =  sndMutBouncyFat;
	
	
	A SET OF SPECIAL SECRET WEAPON SPECIFIC MUTATIONS YOU HAVE TO DO SOME SORT OF PRE-LOOP CHALLENGE FOR, REPLACES ONE LEVEL/NORMAL MUTATION
	or just add them to the set its nice to encounter them and take them based on your weapon instead of going out of your way to get them
	skill_name[42] = "ADRENALINE RUSH"
	skill_text[42] = "AUTOMATIC WEAPONS RELOAD FASTER AS AMMO GETS LOWER"
	skill_tips[42] = "this includes flamethrowers!"
	skill_bons[42] = "+5% RELOAD SPEED"
	skill_msnd[42] =  sndMutBouncyFat;
	
	skill_name[43] = "CLICKY HEELS"
	skill_text[43] = "SINGLE FIRE WEAPONS HAVE A CHANCE TO INSTANTLY RELOAD"
	skill_tips[43] = "chance depends on reload time"
	skill_bons[43] = "+5% CHANCE"
	skill_msnd[43] =  sndMutBouncyFat;
	
	skill_name[43] = "HOT HEAD"
	skill_text[43] = "IDK"
	skill_tips[43] = "A"
	skill_bons[43] = "V"
	skill_msnd[43] =  sndMutBouncyFat;
	
	skill_name[43] = "MELTING POT"(melting in a flower bud)
	skill_text[43] = "LIGHTNING, KRAKEN, FIRE AND FROST#LEAVE BEHIND A RADIOACTIVE GOOP#THAT DAMAGES, SLOWS AND CONFUSES ENEMIES"
	skill_tips[43] = "A"
	skill_bons[43] = "V"
	skill_msnd[43] =  sndMutBouncyFat;
	
	skill_name[43] = "COVER TOVER"
	skill_text[43] = "YOU CAN SHOOT THROUGH PROPS AND SOME WALLS#PROPS ARE INDESTRUCTABLE"
	skill_tips[43] = "A"
	skill_bons[43] = "V"
	skill_msnd[43] =  sndMutBouncyFat;
	*/
	
	/*
		NERVES OF STEEL / ADRENALINE
		REPLACE 3 HEALTH WITH 1 ARMOUR
		
		WHENEVER YOU ARE MISSING ARMOUR
		REDUCE TOTAL RELOAD TIME BY 20%
		
		DAMAGE INCREASING MUTATION (GOOD AS DAMAGE INCREASE OUTSIDE OF FIRERATE INCREASE)
		SHOOTING A WALL TEMPORARILY INCREASES DAMAGE YOU DEAL (STACKS)
		DAMAGE IS INCREASED BASED ON YOUR HEALTH. +50% AT MAX HP
		CONSTANT AMMO REGEN MUTATION (GOOD AS AMMO REGEN ON BOSS FIGHTS)
		SOMETHING SOMETHING WHENEVER YOU USE YOUR ACTIVE SOMETHING SOMETHING
		SOMETHING SOMETHING FIRES YOUR WEAPON
		
		skill_name[39] = "ALIEN TAIL"SPATIAL ANOMALY
		skill_text[39] = "WHENEVER YOU TRY TO USE YOUR ACTIVE#TENTACLES SPAWN AT YOUR CROSSHAIR"
		WHEVER YOU USE YOUR ACTIVE, SOMETHING YOU ARE OKE WITH DOING CONSTANTLY BUT DONT FEEL PRESSURED TO DO CONSTANTLY
		WHENENEVER YOU USE YOUR ACTIVE TENTACLES COME OUT OF YOUR BODY#MORE AND LONGER TENTACLES IF YOU DONT USE YOUR ACTIVE FOR A WHILE
		WHENEVER YOU USE YOUR ACTIVE TENTACLES COME OUT OF YOUR BODY#MORE POWERFULL IF YOU WAIT BETWEEN ACTIVE USES
		skill_tips[39] = ""
		skill_msnd[39] =  sndPartyHorn
	*/
	/*
	skill_name[33] = "THRONE BACK"
	skill_text[33] = "UPGRADES YOUR PASSIVE ABILITY"
	if instance_exists(Player)
	skill_text[33] = string(Player.race_name[Player.race])+" "+string(Player.race_back[Player.race])
	skill_tips[33] = "rest on the throne"
	skill_msnd[33] =  sndMutThronebutt
	*/
	
	skill_name[maxskill + 2] = "NOTHING"
	skill_text[maxskill + 2] = "THERE ARE <w>NO MORE<w> <g>MUTATIONS<g> LEFT!"
	skill_detail[maxskill + 2] = skill_text[maxskill + 2];
	skill_tips[maxskill + 2] = "you have all mutations!"
	skill_msnd[maxskill + 2] =  sndPartyHorn
	skill_bons[maxskill + 2] = "EVEN MORE NOTHING <3"


}
