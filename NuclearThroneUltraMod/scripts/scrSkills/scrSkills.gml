
function scrSkills() {
	maxskill = 42;


	dir = 0
	repeat(maxskill+1)
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
	skill_text[0] = "+50% <w>WEAPON DROPRATE<w>#EVERY ENEMY HAS A +1% CHANCE#TO DROP AN <w>ADDITIONAL WEAPON<w>##DROPPED WEAPONS <w>FIRE AT ENEMIES<w>"
	skill_msnd[0] = sndMutHeavyHeart
	skill_tips[0] = "guns got guns"
	skill_bons[0] = "+10% WEAPON DROPRATE";

	skill_name[1] = "RHINO SKIN"
	if !UberCont.useSeed && random(200) < 1
		skill_name[1] = "JUGGERNOG";
	skill_text[1] = "+4 <r>MAX HP<r>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[1] = "+4 <gb>MAX ARMOUR<gb>"
	}
	skill_tips[1] = "thick skin"
	skill_msnd[1] =  sndMutRhinoSkin
	skill_bons[1] = "+1 MAX HP";

	skill_name[2] = "EXTRA FEET"
	skill_text[2] = "MORE <w>SPEED<w>,#WALK NORMAL ON ALL <w>TERRAIN<w>#CLOSE <w>DODGES<w> SOMETIMES#DROP <y>RES<y><g>OUR<g><r>CES<r>#CAN'T BE <w>DISPLACES<w> BY ENEMIES"//"MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES#DROP A WEAPON/ITEM & ALWAYS DROP RADS"
	skill_tips[2] = choose("run forever","run forever","run forever","you can't be displaced#when you have extra feet");
	skill_msnd[2] =  sndMutExtraFeet
	skill_bons[2] = "SLIGHTLY MORE SPEED#+1 RAD ON DODGE";
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
				skill_text[2] = "FASTER <w>ROLL<w>#MORE WALK <w>SPEED<w>#WALK NORMAL ON ALL <w>TERRAIN<w>#CLOSE <w>DODGES<w> SOMETIMES DROP <y>RES<y><g>OUR<g><r>CES<r>#CAN'T BE <w>DISPLACES<w> BY ENEMIES"
			}
			else if Player.race == 13
			{
			
				skill_text[2] = "FASTER <pi>CHARGE<pi>#MORE <pi>CHARGE<pi> <w>CONTROL<w>#MORE WALK <w>SPEED<w>,#WALK NORMAL ON ALL <w>TERRAIN<w>#CLOSE <w>DODGES<w> SOMETIMES DROP <y>RES<y><g>OUR<g><r>CES<r>#CAN'T BE <w>DISPLACES<w> BY ENEMIES"
			}
			else
			{
				if random(1000)<1
					skill_text[2] = "BE <w>FAST<w>#YOU CAN'T BE <pi>SUCKED<pi>";
			}
		}
	}
	

	skill_name[3] = "PLUTONIUM HUNGER"
	skill_text[3] = "STRONGER <g>ATTRACT<g> POWER"
	skill_tips[3] = "need those rads"
	skill_msnd[3] =  sndMutPluto
	skill_bons[3] = "+10% RANGE";
	if random(500)<1
	{
	skill_name[3] = "URANUS HUNGER"
	skill_tips[3] = "I need uranus!"
	}

	skill_name[4] = "RABBIT PAW"
	skill_text[4] = "35% MORE <y>AMMO<y> AND <r>HEALTH<r> DROPS#5% MORE <w>WEAPONDROPS<w>"
	skill_tips[4] = "feeling lucky"
	skill_msnd[4] =  sndMutRabbitPaw
	skill_bons[4] = "+5% AMMO AND HEALTH DROPS";

	skill_name[5] = "THRONE BUTT"
	skill_text[5] = "UPGRADES YOUR SPECIAL ABILITY"
	if instance_exists(Player)
	skill_text[5] = string(Player.race_name[Player.race])+" "+string(Player.race_butt[Player.race])
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
	skill_text[6] = "21% CHANCE KILLS REGENERATE <y>AMMO<y>"
	skill_tips[6] = "ammo everywhere"
	skill_msnd[6] =  sndMutLuckyShot
	skill_bons[6] = "+2% CHANCE";
	
	
	skill_name[7] = "BLOODLUST"
	skill_text[7] = "7.7% CHANCE KILLS REGENERATE <r>HP<r>#BOSS KILLS ALWAYS <r>HEAL<r>#ENEMIES YOU HEAL FROM EXPLODE IN <r>BLOOD<r>"
	if scrIsHardMode()//HARD MODE
		skill_text[7] = "7.2% CHANCE KILLS REGENERATE <r>HP<r>#BOSS KILLS ALWAYS <r>HEAL<r>#ENEMIES YOU HEAL FROM EXPLODE IN <r>BLOOD<r>"
	skill_tips[7] = "drink blood"
	skill_msnd[7] =  sndMutBloodlust
	skill_bons[7] = "+0.25% CHANCE";


	skill_name[8] = "GAMMA GUTS"
	skill_text[8] = "<w>ENEMIES<w> TOUCHING YOU TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"
	if instance_exists(Player)
	{
		if Player.race == 13//Sheep
		{
			skill_text[8] = "<pi>CHARGE<pi> DEALS MORE DAMAGE#<w>ENEMIES<w> TOUCHING YOU TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"
		}
		else if Player.race == 2//CRYSTAL
		{
			skill_text[8] = "<w>ENEMIES<w> TOUCHING YOU OR YOUR <p>SHIELD<p>#TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING <g>GAMMA GUTS<g>#YOU TAKE 50% LESS <w>ENEMY CONTACT DAMAGE<w>"
		}
	}
	skill_tips[8] = "skin glows"
	skill_msnd[8] =  sndMutGammaGuts
	skill_bons[8] = "+1 CONTACT DAMAGE";
	

	if !UberCont.useSeed && random(200) < 1
	{
	skill_name[9] = "SECOND TUMMY"
	skill_text[9] = "<r>OMNOMNOMNOM<r>"
	skill_tips[9] = "omnomnomnom"
	skill_msnd[9] =  sndMutSecondStomache
	skill_bons[9] = "OMNOMNOMNOM";
	}
	else
	{
		skill_name[9] = "SECOND STOMACH"
		skill_text[9] = "DOUBLE <r>HP<r> FROM MEDKITS & MEDCHESTS#DOUBLE <r>HP<r> FROM MEDCHESTS,#<g>ALKALINE SALIVA<g>#AND <g>ABSORBING PORES<g>"
		if scrIsHardMode() //HARD MODE
			skill_text[9] = "3 <r>HP<r> FROM MEDKITS#DOUBLE <r>HP<r> FROM MEDCHESTS,#<g>ALKALINE SALIVA<g>#AND <g>ABSORBING PORES<g>"
		skill_tips[9] = "stomach rumbles"
		if isHand
		{
			skill_name[9] = "FIRST STOMACH";
			skill_tips[9] = "get it.. cause a hand has no stomach"
		}
		skill_msnd[9] =  sndMutSecondStomache
		skill_bons[9] = "50% CHANCE MEDKITS GIVE 5HP";
	}

	skill_name[10] = "BACK MUSCLE"
	skill_text[10] = "HIGHER <y>AMMO MAX<y>"
	skill_tips[10] = "back muscle works like mini rabbit paw"
	skill_msnd[10] =  sndMutBackMuscle
	skill_bons[10] = "+10% AMMO MAX";

	skill_name[11] = "SCARIER FACE"
	if isHand
		skill_name[11] = "SCARIER NAIL"
	skill_text[11] = "20% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS"
	skill_tips[11] = "mirrors will break"
	skill_msnd[11] =  sndMutScarierFace
	skill_bons[11] = "+2% LESS ENEMY HP";

	skill_name[12] = "EUPHORIA"
	skill_text[12] = "SLOWER ENEMY BULLETS#WHEN YOU GET HIT YOU GAIN#<aq>INVINCIBILITY<aq> FOR A SHORT MOMENT"
	skill_tips[12] = "time passes slowly"
	skill_msnd[12] =  sndMutEuphoria
	skill_bons[12] = "+10% IMMUNE TIME";


	skill_name[13] = "LONG ARMS"
	skill_text[13] = "MORE <w>MELEE<w> RANGE AND SIZE"
	skill_tips[13] = "more reach"
	skill_msnd[13] =  sndMutLongArms
	skill_bons[13] = "+20% RANGE";
	if betterWepSpecific
		skill_bons[13] = "+60% RANGE +20% SIZE +20% WALL PIERCE";
		
	skill_name[14] = "BOILING VEINS"
	skill_text[14] = "NO DAMAGE FROM#<w>EXPLOSIONS<w>, <w>FIRE<w> AND <w>FROST<w>#WHEN UNDER 5<r>HP<r>"
	skill_tips[14] = "temperature is rising";
	skill_msnd[14] =  sndMutBoilingVeins
	skill_bons[14] = "UNDER 6HP";
	if betterWepSpecific
		skill_bons[14] = "COMPLETELY IMMUNE";


	skill_name[15] = "SHOTGUN SHOULDERS"
	if isHand
		skill_name[15] = "SHOTGUN KNUCKLES"
	skill_text[15] = "ALL YOUR <w>BOUNCING PROJECTILES<w>#BOUNCE FURTHER#<w>SHELLS<w> DEAL <r>SPLASH DAMAGE<r>#<w>SHELLS<w> CAN'T BE <pi>DEFLECTED<pi> BY ENEMIES"//#BOUNCER BULLETS CAN BOUNCE#ONE ADDITIONAL TIME" effect is minor no need to tell?
	skill_tips[15] = choose("shells are friends","shotgun shoulders\nextends close range damage\nfrom shotguns","shotgun shoulders\nincreases bouncer bullets bounces by 1","shotgun shoulders:\nincreases swordgun bounces")
	skill_msnd[15] =  sndMutShotGunShoulders
	skill_bons[15] = "+20% WALLBOUNCE";
	if betterWepSpecific
		skill_bons[15] = "+75% WALLBOUNCE +50% SPLASH DAMAGE RANGE";

	skill_name[16] = "RECYCLE GLAND"
	skill_text[16] = "65% OF HIT <w>BULLETS<w> BECOME <y>AMMO<y>#<w>BULLETS<w> CAN'T BE <w>DEFLECTED<w> BY ENEMIES"
	skill_tips[16] = "no need to aim"
	skill_msnd[16] =  sndMutRecycleGland
	skill_bons[16] = "+5% CHANCE";
	if betterWepSpecific
		skill_bons[16] = "+10% CHANCE";

	skill_name[17] = "ENERGY BRAIN"
	skill_text[17] = "<g>ENERGY<g> WEAPONS DEAL MORE DAMAGE"
	skill_tips[17] = "neurons everywhere"
	skill_msnd[17] =  sndMutLaserBrain
	skill_bons[17] = "+10% ENERGY DAMAGE";
	if betterWepSpecific
		skill_bons[17] = "+30% CHANCE";
	
	if UberCont.lastwishused=false
	{
	skill_name[18] = "LAST WISH"
	skill_text[18] = "<aq>PREVENT<aq> LETHAL DAMAGE#AND RESET <r>HEALTH<r> TO MAX# ONCE PER LOOP##GET FULL <r>HEALTH<r> AND SOME <y>AMMO<y>"
	skill_tips[18] = "listen"
	skill_msnd[18] =  sndMutLastWish
	}
	else
	{
	skill_name[18] = "LAST WISH"
	skill_text[18] = "<aq>PREVENT<aq> <w>LETHAL DAMAGE<w>#AND RESET HEALTH TO MAX# ONCE PER LOOP##GET FULL <r>HEALTH<r> AND SOME <y>AMMO<y>##REGAIN ONE PART OF YOUR <w>LIFE<w>"
	skill_tips[18] = "listen"
	skill_msnd[18] =  sndMutLastWish
	}
	skill_bons[18] = "GET FULL AMMO#+3HP WHEN LETHAL IS PREVENTED";

	skill_name[19] = "EAGLE EYES"
	if random(500) < 1
		skill_text[19] = "BETTER <w>ACCURACY<w>#SMALL <w>AIM ASSIST<w>/<w>HOMING<w>#SEE CONTENTS OF WEAPON CHESTS#SEE FURTHER#SHOW WEAPON TIER#SHOW DAMAGE INDICATORS#INCREASE <aq>LU<aq><g>CK<g>#MORE DAMAGE#FASTER <w>FIRE RATE<w>#INSTANTLY <w>LOOP<w>#INCREASE MAX <g>LEVEL<g> BY 5#MORE <g>RAD<g> DROPS#EVERY KILL <r>OVERHEALS<r> FOR 6<r>HP<r>#GET TWO <g>ULTRA MUTATIONS<g>#SIT ON THE <p>THRONE<p>#EVERY ENEMY MORPHS INTO A CHICKEN#THE <w>CHICKEN<w> WILL DROP#A HIGH TIER WEAPON#GET <b>QUAD SPC<b>#IT COSTS 2 AMMO#<pi>AIRHORN.WAV<pi> EVERYTIME YOU SHOOT"
	else
		skill_text[19] = "BETTER <w>ACCURACY<w>#SMALL <w>AIM ASSIST<w>/<w>HOMING<w>#SEE FURTHER";
	skill_tips[19] = "every shot connects"
	skill_msnd[19] =  sndMutEagleEyes
	skill_bons[19] = "+4% ACCURACY +5% HOMING";

	skill_name[20] = "IMPACT WRISTS"
	skill_text[20] = "<w>CORPSES<w> FLY & HIT HARDER#FAST CORPSES CAN DESTROY WALLS"
	skill_tips[20] = "see them fly"
	skill_msnd[20] =  sndMutImpactWrists
	skill_bons[20] = "+15% CORPSE SPEED";

	skill_name[21] = "BOLT MARROW"
	skill_text[21] = "HOMING <w>BOLTS<w>#BETTER <w>BOLT<w> PIERCE"
	skill_tips[21] = "bolts everywhere"
	skill_msnd[21] =  sndMutBoltMarrow
	skill_bons[21] = "+15% HOMING";
	if betterWepSpecific
		skill_bons[21] = "+80% HOMING";

	skill_name[22] = "SHARP STRESS"
	if scrIsGamemode(24)
	{
		skill_text[22] = "FUCK YEA SHARP STRESS!#IT STACKS!"
	}
	else
	{
		skill_text[22] = "WHENEVER YOU TAKE DAMAGE#DEAL DAMAGE TO ALL ENEMIES ON SCREEN#<w>RELOAD<w> YOUR WEAPONS#AS <r>HP<r> GETS LOWER"
	}
	skill_tips[22] = "ultimate low health hybrid"
	skill_msnd[22] =  sndMutSharpStress
	skill_bons[22] = "+5% RELOAD SPEED +15% DAMAGE";

	skill_name[23] = "OPEN MIND"
	skill_text[23] = "EXTRA <w>CHESTS<w> SPAWN#SEE CONTENTS OF WEAPON <w>CHESTS<w>##OPENING <w>CHESTS<w>#FULLY <w>RELOADS<w> YOUR WEAPONS"
	if canCheckUltra && Player.ultra_got[1]
		skill_text[23] = "EXTRA <w>CHESTS<w> SPAWN#SEE CONTENTS OF WEAPON <w>CHESTS<w>#INCREASE <g>CONFISCATE<g> CHANCE#BY 25%##OPENING <w>CHESTS<w>#FULLY <w>RELOADS<w> YOUR WEAPONS"
	skill_tips[23] = "open mind also increases rad canisters"
	skill_msnd[23] =  sndMutOpenMind
	skill_bons[23] = "+20% CHANCE FOR AN#EXTRA WEAPON CHEST";

	if random(800)<1
	skill_name[24] = "TRIGGER PRINGELS"
	else
	skill_name[24] = "TRIGGER FINGERS"
	skill_text[24] = "EACH KILL#<w>RELOADS<w> YOUR WEAPONS#BY 40% OF REMAINING <w>RELOAD<w>"
	skill_tips[24] = "keep killing"
	skill_msnd[24] =  sndMutTriggerfingers
	skill_bons[24] = "+5% RELOAD";

	if random(1000)<1
		skill_name[25] = "BELIEVE!"
	else
		skill_name[25] = "STRONG SPIRIT"
	skill_text[25] = "<aq>PREVENT<aq> <w>LETHAL DAMAGE<w> ONCE PER AREA#RECHARGES WHEN AT FULL <r>HP<r>"
	skill_tips[25] = "denied"
	skill_msnd[25] =  sndMutStrongSpirit
	skill_bons[25] = "RECHARGES WHEN AT 75% HP";

	skill_name[26] = "HAMMER HEAD"
	skill_text[26] = "PUSH THROUGH A LIMITED NUMBER OF <w>WALLS<w>#FIND <y>RES<y><g>OUR<g><r>CES<r> IN WALLS##UNUSED WALLBREAKS#GIVE <y>RES<y><g>OUR<g><r>CES<r> NEXT AREA"
	skill_tips[26] = "hello welcome to my#minecraft let's play"
	skill_msnd[26] =  sndMutHammerHead
	skill_bons[26] = "PUSH THROUGH 5 MORE WALLS";

	skill_name[27] = "PATIENCE"
	skill_text[27] = "CHOOSE A <g>MUTATION<g> NEXT AREA"
	if instance_exists(Player) && Player.guarenteedReroll > 0
	{
		skill_text[27] = "CHOOSE A <g>MUTATION<g> NEXT AREA#REROLLS LEFT: "+ string(Player.guarenteedReroll);
	}
	skill_tips[27] = "wait"
	skill_msnd[27] =  sndMutPatience
	skill_bons[27] = "CHOOSE RIGHT AWAY";


	skill_name[28] = "RAGE"
	skill_text[28] = "EACH <w>KILL<w> INCREASES:#<w>DROPRATE<w>, ALL WEAPON <w>RELOAD SPEED<w>#AND DECREASES <w>ACCURACY<w> SLIGHTLY##LOSE 50 <r>RAGE<r> EACH TIME YOU GET HIT"
	skill_tips[28] = "dodge to kill"
	skill_msnd[28] =  sndMutRage
	skill_bons[28] = "GAIN 15% MORE RAGE";
	

	skill_name[29] = "HYPERSOMNIA"
	skill_text[29] = "<w>ENEMIES<w> DON'T ATTACK YOU#FOR A COUPLE OF SECONDS#AT THE START OF EACH AREA"
	if instance_exists(Player) && (Player.race == 13)
		skill_text[29] = "<w>ENEMIES<w> DON'T ATTACK YOU#FOR A COUPLE OF SECONDS#AFTER YOU ENGAGE FIRE"
	if scrIsGamemode(25)
		skill_text[29] = "<w>ENEMIES<w> DON'T ATTACK YOU#FOR A COUPLE OF SECONDS#WHEN THEY SPAWN IN"
	skill_tips[29] = "sleep"
	skill_msnd[29] =  sndHypersomnia
	skill_bons[29] = "+2 SLEEP SECONDS";

	skill_name[30] = "POWER CRAVING"
	skill_text[30] = "EVERY WEAPON HAS ONE RANDOM <w>WEAPON MOD<w>#INCREASE <w>MOD MAX<w> BY ONE#INCREASE EFFECTIVENESS OF <w>WEAPON MODS<w>#MORE <w>WEAPON MODS<w> IN <g>CROWNVAULT<g>##INCREASE <w>INVERTED<w> PORTAL CHANCE +10%"
	skill_tips[30] = "maximum power"
	skill_msnd[30] =  sndPowerCraving
	skill_bons[30] = "-10% MOD DELAY";
	
	if random(200)<1
	skill_name[31] = "TURTLE SHELL"
	else
	skill_name[31] = "TOUGH SHELL"
	skill_text[31] = "EVERYTHING THAT DEALS#MORE THAN 1 <w>DAMAGE<w> TO YOU#DEALS ONE LESS <w>DAMAGE<w>"
	skill_tips[31] = "damage reduction!"
	skill_msnd[31] =  sndToughShell
	skill_bons[31] = "EVERYTHING THAT DEALS#MORE THAN 4 DAMAGE TO YOU#DEALS TWO LESS DAMAGE";
	
	skill_name[32] = "ALKALINE SALIVA"
	skill_text[32] = "FIRST <aq>HIT<aq> YOU TAKE IN AN AREA#<r>HEALS<r> YOU INSTEAD (1<r>HP<r>)#(2HP) IF YOU HAVE SECOND STOMACH"
	skill_tips[32] = "alkaline saliva prevents lethal damage if thats the first hit you take"
	skill_msnd[32] =  sndMutAlkalineSaliva
	skill_bons[32] = "+1 HP HEALING";
	
	
	skill_name[33] = "GLASS ARM CANNON"//Metroid reference I guess
	skill_text[33] = "27% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS##-2 <r>MAX HP<r>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[33] = "27% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS##-2 <gb>MAX ARMOUR<gb>"
	}
	skill_tips[33] = "fragile"
	skill_msnd[33] =  sndMutGlassArmCannon
	if instance_exists(Player) 
	{
		if (Player.race == 4 && Player.maxhealth <= 2 && UberCont.ctot_skill_taken[33] <= 0)
		{
			skill_text[33] = "27% LESS ENEMY <r>HP<r>#SLIGHTLY LESS EFFECTIVE#ON BIG HEALTHPOOLS##-2 <r>MAX HP<r>#<pi>TAKING THIS WONT KILL YOU<pi> <r><3<r>"	
		}
	}
	skill_bons[33] = "-1 MAX HP INSTEAD";
	
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
	skill_text[34] = "+10% <w>RELOAD SPEED<w> ON ALL WEAPONS##WHENEVER YOU <w>RELOAD<w> A WEAPON#ROLL FOR A CHANCE#TO <w>SLAP<w> <y>RES<y><g>OUR<g><r>CES<r>#OUT OF A NEARBY ENEMY#CHANCE DEPENDS ON BASE RELOAD TIME"
	skill_tips[34] = "looting and shooting"
	skill_msnd[34] =  sndMutFlexibleElbows
	skill_bons[34] = "+4% RELOAD SPEED";
	
	
	skill_name[35] = "PUFFY CHEEKS"
	skill_text[35] = "YOU CAN PREEMPTIVELY <w>RELOAD<w>#UP TO TWO SHOTS#EXTRA SHOTS LOAD AT 60% <w>RELOAD SPEED<w>##+10% SECONDARY <w>RELOAD SPEED<w>"
	if instance_exists(Player) && Player.cwep != 0
		skill_text[35] = "YOU CAN PREEMPTIVELY <w>RELOAD<w>#UP TO TWO SHOTS#EXTRA SHOTS LOAD AT 60% <w>RELOAD SPEED<w>##+10% <w>OFFHAND RELOAD SPEED<w>"
	skill_tips[35] = "big round cheeks"
	skill_msnd[35] =  sndMutPuffyCheeks
	skill_bons[35] = "+10% EXTRA SHOT LOAD SPEED";
	
	skill_name[36] = "ABSORBING PORES"
	if scrIsHardMode()
		skill_text[36] = "<y>AMMO<y> AND <r>HP<r> DROPS GIVE <g>RADS<g>##EVERY 150TH <g>RAD<g> <r>HEALS<r> 1<r>HP<r>#(HEALING DOUBLED BY SECOND STOMACH)##<g>RADS<g> <w>RELOAD<w> YOUR WEAPONS"
	else
		skill_text[36] = "<y>AMMO<y> AND <r>HP<r> DROPS GIVE <g>RADS<g>##EVERY 120TH <g>RAD<g> <r>HEALS<r> 1<r>HP<r>#(HEALING DOUBLED BY SECOND STOMACH)##<g>RADS<g> <w>RELOAD<w> YOUR WEAPONS"
	skill_tips[36] = "osmosis"
	skill_msnd[36] =  sndMutAbsorbingPores
	skill_bons[36] = "-5 RADS REQUIRED"
	
	
	skill_name[37] = "ECSTACTIC FISTS"//REJUVINATED SKIN
	skill_text[37] = "ALL <w>DAMAGE<w> TO ENEMIES IS INCREASED#BASED ON HOW FULL YOUR <r>HEALTH<r> IS#+35% AT <r>MAX HP<r>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[37] = "ALL <w>DAMAGE<w> TO ENEMIES IS INCREASED#BASED ON HOW FULL YOUR <gb>ARMOUR<gb> IS#+35% AT <gb>MAX ARMOUR<gb>"
	}
	skill_tips[37] = "glock those gun"
	skill_msnd[37] =  sndMutEcstaticFists
	skill_bons[37] = "+5% DAMAGE INCREASE"
	
	skill_name[38] = "ENRICHED METABOLISM"
	skill_text[38] = "<aq>NEGATE<aq> EVERY FOURTH HIT YOU TAKE#AND GET <y>AMMO<y> INSTEAD"
	skill_tips[38] = "delicious"
	skill_msnd[38] =  sndMutEnrichedMetabolism
	skill_bons[38] = "+25% AMMO"
	
	skill_name[39] = "ALIEN INTESTINES"
	skill_text[39] = "WHENEVER YOU TRY TO USE YOUR <g>ACTIVE<g>#<p>TENTACLES<p> COME OUT OF YOUR BODY!##MORE POWERFUL THE LONGER#YOU WAIT BETWEEN USES"
	skill_tips[39] = "spatial anomaly"
	skill_msnd[39] =  sndMutAlienIntestines
	skill_bons[39] = "CHARGES FASTER"
	
	skill_name[40] = "BOUNCY FAT"
	skill_text[40] = "IF YOU HAVE <y>AMMO<y> AND TAKE LETHAL DAMAGE#<aq>PREVENT<aq> IT AND LOSE#50% OF BASE TOTAL <y>AMMO<y>"
	skill_tips[40] = "layer of fat"
	skill_bons[40] = "-5% AMMO COST"
	skill_msnd[40] =  sndMutBouncyFat;
	
	skill_name[41] = "NERVES OF STEEL"
	skill_text[41] = "REPLACE 3 <r>HEALTH<r> WITH 1 <gb>ARMOUR<gb>#WHENEVER YOU ARE MISSING <gb>ARMOUR<gb>#REDUCE TOTAL <w>RELOAD TIME<w> BY 35%#<w>ENEMIES<w> HAVE A CHANCE TO DROP <gb>ARMOUR<gb>"
	if canCheckUltra && Player.ultra_got[62] && Player.altUltra //Living armour
	{
		skill_text[41] = "LOSE 2 <gb>ARMOUR<gb>#WHENEVER YOU ARE MISSING <gb>ARMOUR<gb>#REDUCE TOTAL <w>RELOAD TIME<w> BY 35%#<w>ENEMIES<w> HAVE A SMALL CHANCE TO DROP <gb>ARMOUR<gb>"
	}
	skill_tips[41] = "conduit of power"
	skill_bons[41] = "-2 HEALTH INSTEAD"
	skill_msnd[41] =  sndMutNervesOfSteel;
	
	skill_name[42] = "THE TAIL'S END"
	skill_text[42] = "<w>BURST<w> WEAPONS FIRE MORE#<w>CHARGE<w> WEAPONS CHARGE FASTER"
	skill_tips[42] = "tail end includes flamethrowers and is concidered a weapon specific mutation"
	skill_bons[42] = "+10% CHARGE RATE & BURST AMOUNT"
	if betterWepSpecific
		skill_bons[42] = "DOUBLE BURST & INSTA CHARGE"
	skill_msnd[42] =  sndMutTailEnd;
	/*
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
	
	skill_name[43] = "NOTHING"
	skill_text[43] = "THERE ARE <w>NO MORE<w> <g>MUTATIONS<g> LEFT!"
	skill_tips[43] = ""
	skill_bons[43] = ""
	skill_msnd[43] =  sndPartyHorn


}
