function scrUltras(altOverride = false) {
	var isOtherCharacter = false;
	// ULTRAS
	ultra_name[0] = "TOTAL FORECALL"
	ultra_text[0] = "CHOOSE AN ULTRA MUTATION#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)#GET OFFERED PATIENCE WITH EVERY CHOICE"
	ultra_tips[0] = "adapting"
	
	if altOverride || (instance_exists(Player) && Player.race == 21 && (Player.altUltra || Player.unlockAlternativeUltras || (scrCheckGold(Player.wep_name[Player.wep]) || scrCheckGold(Player.wep_name[Player.bwep]))))
	{
		ultra_name[0] = "CASH FLOW"
		ultra_text[0] = "REPLACE BEAM WITH CASH FLOW#CASH FLOW USES CASH INSTEAD OF RADS#GET 100 CASH EVERY AREA#CASH MAXIMUM IS 500#KILLS GENERATE CASH#(UPGRADES TO BEAM STILL APPLY)##YOU CAN KEEP USING ACTIVE#EVEN WHILE IN DEBT#BUT ACTIVE WILL BE LOCKED UNTIL#OUT OF DEBT AT THE START OF AN AREA"
		ultra_tips[0] = "C.R.E.A.M."
	}
	

	//FISH
	ultra_name[1] = "CONFISCATE"
	ultra_text[1] = "ENEMIES SOMETIMES DROP CHESTS#(EFFECTED BY DROPRATE)#OPEN MIND INCREASES#CHANCE BY 10%"
	ultra_tips[1] = "that's mine"

	ultra_name[2] = "GUN WARRANT"
	ultra_text[2] = "INFINITE AMMO THE FIRST 7 SECONDS#OF ENTERING A LEVEL#KILLING A BOSS GIVES#ANOTHER 7 SECONDS OF INFINITE AMMO"
	ultra_tips[2] = "bringer of order"

	ultra_name[3] = "BUDDY COP"
	ultra_text[3] = "GET A PARTNER"
	ultra_tips[3] = choose("I missed you partner","partner stays close to you#when you reload#if not it'll go out aggro","partner actively body blocks projectiles")

	ultra_name[4] = "FISH CAN ROLL"
	ultra_text[4] = "REDUCE AMMO/RAD COST BY 5%#INCREASED PRIMARY FIRE RATE#DEPENDING ON YOUR SPEED#MUCH MORE EFFECTIVE WHEN ROLLING"
	ultra_tips[4] = "is waterboost a thing now?"
	
	if instance_exists(Player) && Player.race == 1 && (Player.altUltra || Player.unlockAlternativeUltras || Player.bskin == 2)
	{
		ultra_name[4] = "FISH CAN GUN"
		ultra_text[4] = "REDUCE AMMO/RAD COST BY 15%#THE MORE AMMO YOU HAVE#THE HIGHER YOUR FIRERATE#DOES NOT HAVE AN EFFECT ON MELEE"
		ultra_tips[4] = "loaded and goated"
	}

	    //CRYSTAL 
	    ultra_name[5] = "FORTRESS"
	    ultra_text[5] = "+6 MAX HP"
	    ultra_tips[5] = "indestructable"
    
	    ultra_name[6] = "JUGGERNAUT"
	    ultra_text[6] = "MOVE WHILE SHIELDED"
	    ultra_tips[6] = "crab legs"
		
		if altOverride || (instance_exists(Player) && Player.race == 2 && (Player.altUltra || Player.unlockAlternativeUltras || ((Player.curse || Player.bcurse) && instance_exists(UltraIcon))))
		{
			ultra_name[6] = "CURSED"
		    ultra_text[6] = "TELEPORT AFTER SHIELDING#SHIELDING FIRES LASERS"
		    ultra_tips[6] = "cursed crystal"
		}
    
	    ultra_name[7] = "BUNKER"
	    ultra_text[7] = "SHORTER SHIELD#SHOOT WHILE SHIELDED#WHILE STATIONARY INCREASE FIRERATE"
	    ultra_tips[7] = "the iron fist"
    
	    ultra_name[8] = "VENGEFUL"
	    ultra_text[8] = "DEFLECTED PROJECTILES#HOME IN ON ENEMIES#INVULNERABLE TO ALL DAMAGE#WHILE SHIELDING"
	    ultra_tips[8] = "homing effects wear of#when you're not shielding"

	//EYES 
	ultra_name[9] = "PROJECTILE STYLE"
	ultra_text[9] = "HOLD YOUR PROJECTILES#HELD PROJECTILES BLOCK#ENEMY PROJECTILES"
	ultra_tips[9] = "need more cannons"
	
	if altOverride || (instance_exists(Player) && (Player.altUltra || Player.unlockAlternativeUltras || (scrHasEyesMutations() && instance_exists(UltraIcon))))
	{
		ultra_name[9] = "STRANGE STYLE"
		ultra_text[9] = "TELEKINESIS PULLS#ENEMIES AND PROJECTILES#TOWARDS YOUR CROSSHAIR#INFINITE TELEKINESIS RANGE#STRONGER PROJECTILE PUSH"
		ultra_tips[9] = "something strange"
	}

	ultra_name[10] = "MONSTER STYLE"
	ultra_text[10] = "WHEN NOT USING ACTIVE#PUSH ENEMIES AWAY"
	ultra_tips[10] = "repellent"

	ultra_name[11] = "BRAIN STYLE"
	ultra_text[11] = "FULLY SEE IN THE DARK#SOME ENEMIES ATTACK OTHER ENEMIES"
	ultra_tips[11] = "brain style works on bosses!"

	ultra_name[12] = "PSYCHONAUT STYLE"//thats a refrence
	ultra_text[12] = "TELEKINESIS ATTRACTS#ITEM DROPS, RADS & WEAPONS#THROUGH WALLS#INCREASED ITEM ATTRACTION SPEED"
	ultra_tips[12] = "never miss a drop"

	    //MELTING 
	    ultra_name[13] = "BRAIN CAPACITY"
	    ultra_text[13] = "BLOW UP LOW HP ENEMIES"// originally doesn't work with scarier face
	    ultra_tips[13] = "5hp == death"
		
		if altOverride || (instance_exists(Player) &&  Player.race == 4 && (Player.altUltra || Player.unlockAlternativeUltras || (Player.maxhealth == 1 && !scrIsGamemode(5) && instance_exists(UltraIcon))))
		{
			ultra_name[13] = "DEATH STARE"
			ultra_text[13] = "LOOKING AT ENEMIES SLOWLY KILLS THEM#ENEMIES ARE SCARED OF YOU"
			ultra_tips[13] = "the face of death"
		}
    
	    ultra_name[14] = "DETACHMENT"
	    ultra_text[14] = "LOSE HALF YOUR HEALTH#GET 3 MORE MUTATIONS"//originally 3
	    ultra_tips[14] = "three is not enough"
    
	    ultra_name[15] = "POWER OVERWHELMING"
	    ultra_text[15] = "INCREASE LEVEL CAP BY 1#EVEN MORE RADS#HALF AMMO COST FOR ALL WEAPONS#ALL WEAPONS COST A SMALL AMOUNT OF RADS"
	    ultra_tips[15] = "ultra ultra ultra ultra"
    
	    ultra_name[16] = "DOOMED"
	    ultra_text[16] = "THE TYPE OF ENEMY THAT DIES#LAST IN AN AREA#IS DEAD IN THE NEXT AREA#MORE BLOOD DAMAGE"
	    ultra_tips[16] = "blood sweat and tears"
		
    
	//PLANT 
	ultra_name[17] = "TRAPPER"
	ultra_text[17] = "BIG SNARE"
	ultra_tips[17] = "nowhere to hide"

	ultra_name[18] = "KILLER"
	ultra_text[18] = "ENEMIES KILLED ON SNARE#SPAWN SAPLINGS"
	ultra_tips[18] = "aggression!"
/*
	ultra_name[19] = "LEACHER"
	ultra_text[19] = "ENEMIES STUCK ON SNARE#SOMETIMES HEAL YOU#ENEMIES KILLED ON SNARE#HAVE A CHANCE TO DROP ADDITIONAL ITEMS"
	ultra_tips[19] = "nutritious"
*/
	ultra_name[19] = "APEX PREDATOR"
	ultra_text[19] = "REPLACE SNARE WITH SPRINT#KILLS MAKE YOU IMMUNE#FOR A SHORT DURATION#MOVING FASTER INCREASES THE DURATION#EFFECT CAN STACK WITH MULTIPLE KILLS#THRONE BUTT INCREASES THE DURATION"
	ultra_tips[19] = "nutritious"
	
	ultra_name[20] = "STEREO SNARES"
	ultra_text[20] = "SPAWN TWO SNARES#SNARES DESTROY PROJECTILES"
	ultra_tips[20] = "better then original stereo snares"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 5 && (Player.altUltra || Player.unlockAlternativeUltras || (instance_exists(UltraIcon) && (scrIsCrown(23) && Player.skill_got[2]))))
	{
		//EXTRA FEET OR CROWN OF SPEED
		ultra_name[20] = "SONIC SPEED"
		ultra_text[20] = "YOU CAN MOVE EXTREMELY FAST!#ACCELERATING OR DECELERATING QUICKLY#CREATES A SONIC BOOM"
		ultra_tips[20] = "SONIC BOOM!"
	}
	

	    //Y.V. YUNG VENUZ YV
	    ultra_name[21] = "IM A GUN GOD"
	    ultra_text[21] = "40% HIGHER RATE OF FIRE#RELOAD SECONDARY AT 10% SPEED"
	    ultra_tips[21] = "+40% higher rate of fire"
    
	    ultra_name[22] = "BACK 2 BIZNIZ"
	    ultra_text[22] = "FREE POP POP UPGRADE"
	    ultra_tips[22] = "more pop"
    
	    ultra_name[23] = "MAKE IT RAIN"
	    ultra_text[23] = "REALLY HIGH SHOTGUN FIRE RATE#USED BULLET AMMO#CONVERTS TO SHOTGUN AMMO#(10 BULLET TO 1 SHOTGUN AMMO)"//"REALLY HIGH SHOTGUN FIRE RATE#USED SHOTGUN AMMO CONVERTS#TO BULLET AMMO"
	    ultra_tips[23] = "shells and bullets <3"
		if altOverride || (instance_exists(Player) && Player.race == 6 && (Player.altUltra || Player.unlockAlternativeUltras || (instance_exists(UltraIcon) && (scrMeleeWeapons(Player.wep) || Player.wep == 0) && (scrMeleeWeapons(Player.bwep) || Player.bwep == 0))))
		{
			ultra_name[23] = "BLASPHEMY"
			ultra_text[23] = "CAN NO LONGER POP POP GUNS#45% HIGHER MELEE SWING RATE#MELEE IS FULLY AUTOMATIC#CAN POP POP MELEE"
			ultra_tips[23] = "why would you forsake us gun god?"
		}
    
	    ultra_name[24] = "VERIFY VENUZ"
	    ultra_text[24] = "EVERY OTHER POP POP ALSO FIRES#YOUR SECONDARY WEAPON#CAN POP FULL AUTO#RELOAD SECONDARY AT 50% SPEED"
	    ultra_tips[24] = "blood gamble"
    
	//STEROIDS 
	ultra_name[25] = "AMBIDEXTUROUS"
	ultra_text[25] = "WEAPON CHESTS DROP#TWO OF THE SAME WEAPON#FIRING WHILE HAVING TWO#OF THE SAME WEAPONS#SLOWLY HEALS YOU"
	ultra_tips[25] = "big wep chests drop two duplicates"

	ultra_name[26] = "GET LOADED"
	ultra_text[26] = "AMMO CHESTS INCLUDE ALL AMMO TYPES#YOU CAN CARRY#AN INFINITE AMOUNT OF AMMO!#AMMO ABOVE MAX DECREASES OVER TIME##THE MORE TOTAL AMMO YOU HAVE#THE MORE KNOCKBACK YOU DEAL"
	ultra_tips[26] = "infinite strength"

	ultra_name[27] = "MIRROR HANDS"
	ultra_text[27] = "RIGHT CLICK FIRES YOUR PRIMARY#SWAPPING RELOADS YOUR WEAPONS"
	ultra_tips[27] = "auto pop pop"
	if altOverride || (instance_exists(Player) &&  Player.race == 7 && (Player.altUltra || Player.unlockAlternativeUltras || (instance_exists(UltraIcon) && (Player.wep == Player.bwep))))
	{
		//Need to update alt ultra description in ultraIcon
		ultra_name[27] = "PUNCHSWAP"
		ultra_text[27] = "SWAPPING MAKES YOU SWING#WITH YOUR WEAPON#SWINGS DEFLECT PROJECTILES#AND DEAL DAMAGE"
		ultra_tips[27] = "GET KNOCKED OUT"
	}

	ultra_name[28] = "STRONG FIRE"
	ultra_text[28] = "MORE BULLET DAMAGE"
	ultra_tips[28] = "<3 bullets"

	    //ROBOT 
		if instance_exists(Player) && Player.race != 8
			isOtherCharacter = true;
		if altOverride || (instance_exists(Player) && Player.race == 8 && (Player.spr_idle == sprMutant8DIdle || Player.unlockAlternativeUltras))
		{
			ultra_name[29] = "EXCLUSIVE TASTE"
			ultra_text[29] = "HOLDING ONLY ONE WEAPON WILL:#INCREASE DAMAGE DEALT TO ENEMIES BY 20%#RETURN 10% AMMO/RAD UPON FIRING#+15% FIRERATE AND +4 MAX HP##AUTO EAT WEAPONS LEFT IN THE LEVEL";
		    ultra_tips[29] = "gold tastes good"
		}
		else
		{
			ultra_name[29] = "REFINED TASTE"
			if isOtherCharacter
				ultra_text[29] = "ONLY HIGH TIER WEAPON DROPS#EVERY ENEMY HAS A 4% CHANCE#TO DROP A WEAPON#INCREASE FIRERATE BASED ON WEAPON TIER"
			else
				ultra_text[29] = "ONLY HIGH TIER WEAPON DROPS#EVERY ENEMY HAS A 4% CHANCE#TO DROP A WEAPON#INCREASE FIRERATE BASED ON WEAPON TIER##AUTO EAT WEAPONS LEFT IN THE LEVEL"
		    ultra_tips[29] = "delicacy"
		}
		
		ultra_name[30] = "REGURGITATE"
		if altOverride || (instance_exists(Player) && !isOtherCharacter && Player.skill_got[23])//Has open mind
			ultra_text[30] = "EATING WEAPONS HAS A 40% CHANCE#TO DROP CHESTS##EATING A WEAPON DROPS IT LIKE A TURRET#THE TURRET FIRES THE EATEN WEAPON##AUTO EAT WEAPONS LEFT IN THE LEVEL";
		else
			ultra_text[30] = "EATING WEAPONS HAS A 30% CHANCE#TO DROP CHESTS##EATING A WEAPON DROPS IT LIKE A TURRET#THE TURRET FIRES THE EATEN WEAPON##AUTO EAT WEAPONS LEFT IN THE LEVEL"
		ultra_tips[30] = "2% more chance for weapon chests"
    
	    ultra_name[31] = "EXTRA STORAGE"
		if isOtherCharacter
			ultra_text[31] = "YOU CAN CARRY THREE WEAPONS"
		else
			ultra_text[31] = "YOU CAN CARRY THREE WEAPONS#EATING WEAPONS GIVES MORE RADS##AUTO EAT WEAPONS LEFT IN THE LEVEL"
	    ultra_tips[31] = "why not all three?"
    
	    ultra_name[32] = "GUN EXTENSION"
	    ultra_text[32] = "REPLACE ACTIVE WITH:#FORCE SHOT#YOUR ACTIVE FIRES YOUR WEAPON#AT THE COST OF RADS INSTEAD OF AMMO#COST IS DETERMINED BY FIRERATE!##THRONEBUTT REDUCES COST"//"OCCASIONALLY PRODUCE LIGHTNING#EATING WEAPONS CREATES RADS & LIGHTNING##AUTO EAT WEAPONS LEFT IN LEVEL"
	    ultra_tips[32] = "no omnomnom"
    
	//CHICKEN 
	ultra_name[33] = "HARDER TO KILL"
	ultra_text[33] = "KILLS EXTEND BLEED TIME"
	ultra_tips[33] = "immortal"
	
	//FIRE WEAPON
	if altOverride || (instance_exists(Player) &&  Player.race == 9 && (Player.altUltra || Player.unlockAlternativeUltras || (scrHasFireWeapon() && instance_exists(UltraIcon))))
	{
		ultra_name[33] = "PHOENIX"
		ultra_text[33] = "WHILE YOU ARE ABOVE LEVEL 1#PREVENT THE LOSS OF YOUR HEAD#INSTEAD, REGAIN ALL YOUR HP#LOSE A LEVEL AND A RANDOM MUTATION##EVERYTIME YOUR DEATH IS PREVENTED#YOU PERMANENTLY BECOME STRONGER#AND YOU LEVEL UP SLOWER"
		ultra_tips[33] = "rise and rise again"
	}

	ultra_name[34] = "NINJA"
	ultra_text[34] = "MORE MELEE DAMAGE"
	ultra_tips[34] = "slice em'"

	ultra_name[35] = "FOCUS"
	ultra_text[35] = "SLOW MOTION IS MUCH MORE EFFECTIVE#ON ENEMY PROJECTILES#(EVEN MORE EFFECTIVE WITH EUPHORIA)##SLOW MOTION COMPLETLY STOPS#YOUR PROJECTILES"
	ultra_tips[35] = "so fast"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 9 && ((scrIsCrown(12) && instance_exists(UltraIcon)) || Player.altUltra))
	{
		ultra_name[35] = "SUCOF"
		ultra_text[35] = "SELITCEJORP SESREVER EVITCA"//ACTIVE REVERSES PROJECTILES | EMIT SESREVER EVITCA
		ultra_tips[35] = "reverse time"
	}

	ultra_name[36] = "VANISH"
	ultra_text[36] = "WHEN IN SLOW MOTION#YOU VANISH AND DROP A DECOY#WHEN VANISHED ENEMIES WON'T TARGET YOU"
	ultra_tips[36] = "stealthy"

	    //REBEL 
	    ultra_name[37] = "PERSONAL GUARD"
	    ultra_text[37] = "START LEVEL WITH 2 ALLIES#ALLIES HAVE MORE HEALTH"
	    ultra_tips[37] = "increased health also#increases allies lifespan"
    
	    ultra_name[38] = "RIOT"
	    ultra_text[38] = "SPAWN TWO ALLIES INSTEAD OF ONE"
	    ultra_tips[38] = "more is better"
    
	    ultra_name[39] = "EVERONE IS CONNECTED"
	    ultra_text[39] = "ALLIES CAST LASERS TOWARDS EACH OTHER#THE MORE ALLIES YOU HAVE#THE HIGHER YOUR DROP RATE IS#ALIES DROP MORE RESOURCES#WHEN THEY DIE"
	    ultra_tips[39] = "hurt stone"
		
		if altOverride || (instance_exists(Player) &&  Player.race == 10 && (Player.altUltra || Player.unlockAlternativeUltras || (scrCheckUltra(Player.wep_name[Player.wep]) || (!Player.skill_got[1] && !Player.skill_got[7] && !Player.skill_got[9]&& !Player.skill_got[25]) || scrCheckUltra(Player.wep_name[Player.bwep]) && instance_exists(UltraIcon))))
		{
			ultra_name[39] = "BIG REBEL"
		    ultra_text[39] = "+40 MAX HP!#YOU CAN'T HEAL#EVERY LOOP RESET HP TO FULL#ALLIES COST AMMO"
		    ultra_tips[39] = "she is a maniac!"
		}
		
	    ultra_name[40] = "DEFENSE"
	    ultra_text[40] = "PORTALS HEAL ALL YOUR HEALTH#WHENEVER YOU TAKE DAMAGE YOU#SPAWN DEFENSIVE BULLETS#MORE ALLY BULLET DAMAGE"
	    ultra_tips[40] = "this was rebel's old passive"
    

	//HUNTER 
	ultra_name[41] = "SAFE DISTANCE"
	ultra_text[41] = "THE FURTHER AWAY YOU ARE FROM AN ENEMY#THE MORE DAMAGE YOU DO TO IT"
	ultra_tips[41] = "even if the indicator is not bright#you get a damage boost"

	ultra_name[42] = "NEVER MISS"
	ultra_text[42] = "YOUR PROJECTILES HOME IN ON ENEMIES"
	ultra_tips[42] = choose("eagle eyes improves#the homing strength","homing also works on lasers#and hyper slugger/launcher")

	ultra_name[43] = "FOCUSED FIRE"
	ultra_text[43] = "ENEMY AND YOUR PROJECTILES#HOME IN ON YOUR MARKER"
	ultra_tips[43] = "friendly fire?"
	
	//Eagle eyes and energy brain results in laser eye duh
	if altOverride || (instance_exists(Player) &&  Player.race == 11 && (Player.altUltra || Player.unlockAlternativeUltras || (Player.skill_got[19] && Player.skill_got[17] && instance_exists(UltraIcon))))
	{
		ultra_name[43] = "SNIPER EYE"
		ultra_text[43] = "REPLACE YOUR ACTIVE WITH A SNIPER EYE#THE EYE BREAKS WALLS#PIERCES, STUNS AND DAMAGES ENEMIES#DAMAGE INCREASES EACH PIERCE#MORE POWERFUL#THE LONGER YOU WAIT BETWEEN SHOTS#POWER SCALES FASTER#IF YOU HAVE THRONE BUTT"
		ultra_tips[43] = "proper eyesight"
	}
	
	ultra_name[44] = "CRACK SHOT"
	ultra_text[44] = "PLACE MULTIPLE MARKERS#FIRE AT ALL MARKERS#WITHOUT EXTRA RELOAD TIME"
	ultra_tips[44] = "gunslinger"

	    //YUNG CUZ 
	    ultra_name[45] = "GIT YER BAK"
	    ultra_text[45] = "SHOTS FIRED BY BUDDIES#DON'T COST AMMO/RADS"//-2max hp??
	    ultra_tips[45] = "like one"
    
	    ultra_name[46] = "MLG SQUAD"
	    ultra_text[46] = "CREATE MAX 3 BUDDIES#BUDDIES DON'T DECREASE#YOUR MAX HP"
	    ultra_tips[46] = "teamwork"
		
	    ultra_name[47] = "SPAM"
	    ultra_text[47] = "BUDDIES COST 2 HP#INSTEAD OF MAX HP#PORTALS HEAL"
	    ultra_tips[47] = "annoying"
		
		//Pluto and no rhino skin?
		if altOverride || (instance_exists(Player) &&  Player.race == 12 && (Player.altUltra || Player.unlockAlternativeUltras || (
		!Player.skill_got[1] && Player.skill_got[3]
		&& instance_exists(UltraIcon))))
		{
			ultra_name[47] = "GREEN TEAM"
		    ultra_text[47] = "SPAWNING BUDDIES COSTS RADS#INSTEAD OF MAX HP#BUDDIES DROP MORE RESOURCES"
		    ultra_tips[47] = "pay up"
		}
    
	    ultra_name[48] = "LAG"
	    ultra_text[48] = "FIRST THREE HITS#YOU TAKE IN A LEVEL WILL BE NEGLECTED"
	    ultra_tips[48] = "dead not dead"
    
	//SHEEP 
	ultra_name[49] = "UNSTOPPABLE"
	ultra_text[49] = "CHANGE CHARGE TO A POWERFUL HYPERDASH#THAT COSTS RADS TO USE#EXTRA FEET INCREASES RANGE#GAMMA GUTS INCREASES DAMAGE#THRONE BUTT INCREASES BOTH"
	ultra_tips[49] = "the fluffy blur"

	ultra_name[50] = "JUST A SHEEP"
	ultra_text[50] = "ENEMIES DON'T ATTACK UNTIL#MULTIPLE ENEMIES HAVE DIED"
	ultra_tips[50] = "they're stoopid"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 13 && (Player.altUltra || Player.unlockAlternativeUltras || (
	scrHasASecretCrown()
	&& instance_exists(UltraIcon))))
	{
		ultra_name[50] = "CODENAME S.A.S. : SECRET AGENT SHEEP"
		ultra_text[50] = "ENEMIES THAT DON'T KNOW YOU'RE THERE#TAKE 10X DAMAGE##EACH AREA#TAKE ON THE APPEARANCE#OF ANY CHARACTER#ENABLING YOU TO USE THEIR ACTIVE##SECRET GATEWAYS APPEAR#IN THE CROWN VAULT#CONNECTING SEVERAL AREAS"
		ultra_tips[50] = "S.A.S."
	}
	
	ultra_name[51] = "IMPENETRABLE"
	ultra_text[51] = "BETTER CHARGE!#CHARGING DEFLECTS ENEMY PROJECTILES"
	ultra_tips[51] = "what a beast"
	
	/* 
	ultra_name[51] = "INDESTRUCTABLE"
	ultra_text[51] = "IMMUNE WHILE CHARGING#CHARGE DEALS NO DAMAGE#CHARGE DOES NOT DISSIPATE"
	ultra_tips[51] = "what a beast"
	*/
	//NO EXTRA FEET NO GAMMA GUTS
	if altOverride || (instance_exists(Player) &&  Player.race == 13 && (Player.altUltra || Player.unlockAlternativeUltras || (
	!Player.skill_got[2] && !Player.skill_got[8]
	&& instance_exists(UltraIcon))))
	{
		ultra_name[51] = "HYPNOTIZE"
		ultra_text[51] = "ENEMIES REACT AND MOVE SLOWER##ACTIVE CHANGES INTO HYPNOSIS#HYPNOSIS RE-ACTIVATES YOUR PASSIVE#CAN BE USED 3 TIMES EACH AREA#THRONE BUTT INCREASES USES TO 5"
		ultra_tips[51] = "no one expects a sheep to carry a gun"
	}

	ultra_name[52] = "FLUFFY"//this is actually insane with impact wrists
	ultra_text[52] = "CORPSES FLOAT#CORPSE COLLISION#CAN CAUSES BLOOD EXPLOSIONS#EVERYTHING THAT DIES#TURNS INTO A SHEEP"
	ultra_tips[52] = "cannibalism"//morph gun creates two sheep cause logic (no balance)

	    //PANDA 
	    ultra_name[53] = "TURNING BADASS"
	    ultra_text[53] = "THROWS PIERCE AND DEFLECT PROJECTILES#MORE THROW DAMAGE##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[53] = "strong arms!"
    
	    ultra_name[54] = "FUCK IT"//DELIBERATE REINCARNATION"
	    ultra_text[54] = "THROWN WEAPONS EXPLODE ON HIT##WHENEVER YOU THROW YOUR WEAPON#IT TRANSFORMS INTO A#RANDOM WEAPON OF THE SAME TIER##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[54] = "rngezus"
    
	    ultra_name[55] = "DONE BEING EXTINCT"
	    ultra_text[55] = "WHEN A WEAPON RETURNS#IT FIRES A MASSIVE LASER##WHENEVER A THROWN WEAPON HITS#DROP EXTRA RESOURCES##CHANCE PORTALS CHANGE#WEAPONS INTO A HIGHER TIER WEAPON##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[55] = "rise above"
		
		//Flexible elbows and or long arms
		if altOverride || (instance_exists(Player) &&  Player.race == 14 && (Player.altUltra || Player.unlockAlternativeUltras || (
		(Player.skill_got[13] || Player.skill_got[34] || Player.skill_got[20]) && !Player.skill_got[5]
		&& instance_exists(UltraIcon))))
		{
			ultra_name[55] = "INCONSISTENT INCOMPATABILITY"
		    ultra_text[55] = "ALL WEAPONS ARE FULLY AUTOMATIC#YOU NO LONGER THROW WEAPONS#INSTEAD YOUR ACTIVE FIRES YOUR WEAPON#FROM THE ORIGIN OF YOUR CROSSHAIR";
		    ultra_tips[55] = "how does it do that"
		}
		
	    ultra_name[56] = "CLEANSING"
	    ultra_text[56] = "MORE MELEE SWING RATE#PORTALS NO LONGER RANDOMIZE WEAPONS##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[56] = "survival above pacifism"
    
	//ATOM 
	ultra_name[57] = "NEUTRON"
	ultra_text[57] = "BIGGER FIERY EXPLOSIONS#EXPLOSIONS DEAL MORE DAMAGE#AGAINST ENEMIES#EXPLOSIVE WEAPONS COST 20% LESS AMMO"
	ultra_tips[57] = "NUCLEAR BOMB!"

	ultra_name[58] = "PROTON"
	ultra_text[58] = "YOU DEAL MORE CONTACT DAMAGE#DEAL DAMAGE TO ENEMIES NEAR YOU"
	ultra_tips[58] = "always positive"
	

	ultra_name[59] = "ELECTRON"
	ultra_text[59] = "ENERGY WEAPONS COST 20% LESS AMMO#LIGHTNING DOES MORE DAMAGE#AND TRAVELS FURTHER"
	ultra_tips[59] = "that is electrifying!"
	
	//NO ENERGY BRAIN & CROWN OF HASTE/APOCALYPSE
	if altOverride || (instance_exists(Player) &&  Player.race == 15 && (Player.altUltra || Player.unlockAlternativeUltras || (
	(!Player.skill_got[17] && (scrIsCrown(4) || scrIsCrown(28)))
	&& instance_exists(UltraIcon))))
	{
		ultra_name[59] = "PATH OF DESTRUCTION"
		ultra_text[59] = "EVERYWHERE YOU GO#YOU LEAVE BEHIND A TRAIL OF#DAMAGING GOOP##PICKUPS FADE FASTER#FADED PICKUPS REROLL INTO OTHER PICKUPS#PICKUPS CAN FADE/REROLL TWICE"
		ultra_tips[59] = "always positive"
	}
	
	ultra_name[60] = "ANTI MATTER"
	ultra_text[60] = "TELEPORT INTO WALLS#FADED PICKUPS TRANSFROM INTO#(FRIENDLY) ULTRA LIGHTNING AND RADS"
	ultra_tips[60] = "phase"

	    //VIKING 
	    ultra_name[61] = "MEGA SERPENT ARMOUR STRIKE"
	    ultra_text[61] = "TRIPLE SERPENT ARMOUR STRIKE#GAIN 1 ARMOUR WHEN YOU KILL A BOSS"
	    ultra_tips[61] = "break down the walls!"
		
		if altOverride || (instance_exists(Player) &&  Player.race == 16 && (Player.altUltra || Player.unlockAlternativeUltras || ((scrKrakenWeapons(Player.wep) || scrKrakenWeapons(Player.bwep)) && instance_exists(UltraIcon))))
		{
			ultra_name[61] = "CAPTAIN OF THE KRAKEN"
			ultra_text[61] = "KRAKEN WEAPONS DEAL MORE DAMAGE#TENTACLES ARE LONGER#KRAKEN WEAPONS COST 30% LESS AMMO"
			ultra_tips[61] = "from the sea she came"
		}
		
	    if instance_exists(Player)
	    {
		    if Player.race=19||Player.race=20||Player.race=21{//skeleton hog and horror
			    ultra_name[62] = "ARMOUR UP"
			    ultra_text[62] = "GAIN ONE ARMOUR EACH AREA#INCREASE ARMOUR MAX BY TWO"
			    ultra_tips[62] = "tank up"
		    }
		    else {
			    ultra_name[62] = "ARMOUR UP"
			    ultra_text[62] = "GAIN ONE EXTRA ARMOUR EACH AREA#INCREASE ARMOUR MAX BY TWO"
			    ultra_tips[62] = "tank up"
		    }
	    }
	    else {
		    ultra_name[62] = "ARMOUR UP"
		    ultra_text[62] = "GAIN ONE EXTRA ARMOUR EACH AREA#INCREASE ARMOUR MAX BY TWO"
		    ultra_tips[62] = "tank up"
	    }
		//IF no health mutations
		if altOverride || (instance_exists(Player) && Player.race == 16 && (Player.altUltra || Player.unlockAlternativeUltras || (!Player.skill_got[7] && !Player.skill_got[36] && !Player.skill_got[32] && !Player.skill_got[31] && instance_exists(UltraIcon))))
		{
			ultra_name[62] = "LIVING ARMOUR"
			ultra_text[62] = "REPLACE ALL YOUR HEALTH WITH ARMOUR##HEALTH DROPS BECOME ARMOUR DROPS##(SECOND STOMACH DOUBLES ARMOUR#FROM ARMOUR DROPS)#(HEALING MUTATIONS DO NOT REGENERATE ARMOUR)"
			ultra_tips[62] = "iron woman"
		}
		
	    ultra_name[63] = "COLD HEART"
	    ultra_text[63] = "ARMOUR STRIKE USES 3HP#INSTEAD OF ARMOUR##ARMOUR STRIKE FREEZES ENEMIES##WHILE YOU HAVE ARMOUR#INCREASE PRIMARY FIRERATE BY 20%"//"ARMOUR STRIKE FREEZES ENEMIES#AND DEALS MORE DAMAGE#WHEN YOU HAVE NO MORE ARMOUR#YOU CAN USE 2HP TO USE AN ARMOUR STRIKE"
	    ultra_tips[63] = "hearth strike"
    
	    ultra_name[64] = "BLANK ARMOUR"
	    ultra_text[64] = "WHENEVER YOU LOSE ARMOUR#YOU CLEAR ALL PROJECTILES#AND DEAL A MASSIVE AMOUNT OF DAMAGE#TO ALL ENEMIES ON SCREEN"
	    ultra_tips[64] = "come at me bro"
    
	//WEAPON SMITH WEAPONSMITH
	ultra_name[65] = "WEAPON MODDER"
	//ultra_text[65] = "IN EVERY AREA#A WEAPON MOD SPAWNS#INCREASE HOW OFTEN MODS TRIGGER#COMBINING A WEAPON ADDS A MOD TO IT"
	ultra_text[65] = "IN EVERY AREA#A WEAPON MOD SPAWNS#DOUBLE WEAPONMOD EFFECTIVENESS#COMBINING A WEAPON ADDS A MOD TO IT"
	if instance_exists(Player) && (Player.race != 17)
		ultra_text[65] = "IN EVERY AREA#A WEAPON MOD SPAWNS#DOUBLE WEAPONMOD EFFECTIVENESS"
	ultra_tips[65] = "modder"

	ultra_name[66] = "ARMOUR SMITH"
	ultra_text[66] = "WHEN UPGRADING A WEAPON#YOU ALSO GAIN TWO ARMOUR#ARMOUR MAX IS 3"
	ultra_tips[66] = "craft changer"
	
	//EMPY HAND
	if altOverride || (instance_exists(Player) &&  Player.race == 17 && (Player.altUltra || Player.unlockAlternativeUltras || (Player.bwep == 0 && instance_exists(UltraIcon))))
	{
		ultra_name[66] = "QUICK SWAPPER"
		ultra_text[66] = "INCREASE WEAPON PICKUP RANGE##YOU DROP WEAPONS AT YOUR FEET##DROPPING A WEAPON#MAKES YOU IMMUNE FOR A SHORT DURATION##PORTALS SPIT OUT A NEW RANDOM WEAPON#UPON ENTERING AN AREA"
		ultra_tips[66] = "slide swapping!"
	}

	ultra_name[67] = "ONE WITH THE GUN"
	ultra_text[67] = "INCREASED FIRE RATE AND#REDUCED AMMO COST#FOR ALL WEAPONS EXCLUDING MELEE#DECREASED MELEE SWING RATE"
	ultra_tips[67] = "new meta"

	ultra_name[68] = "SCRAP FINDER"
	ultra_text[68] = "ALL WEAPON DROPS GIVE YOU HEALTH, RADS#AND MORE AMMO FOR ALL TYPES#PICKING UP A WEAPON#SPAWNS LIGHTNING"
	ultra_tips[68] = "recourseful"
	if altOverride || (instance_exists(Player) && (Player.race == 17 && (Player.altUltra || Player.unlockAlternativeUltras || (instance_exists(UltraIcon) && (scrHasMorphMod() || scrHasMorphWeapon())))))
	{
		ultra_name[68] = "ENGINUITY"
		ultra_text[68] = "YOUR ACTIVE BECOMES:#CHANGE YOUR WEAPON#INTO ONE OF THE SAME TIER#YOU CAN GO THROUGH#ALL AVAILABLE WEAPONS##WHENEVER YOU CHANGE OR SWAP WEAPONS#SPAWN MORPH ON YOUR CROSSHAIR"
		ultra_tips[68] = "moldable weapons"
	}
	

	    //ANGEL 
	    ultra_name[69] = "PROTECTOR"
	    ultra_text[69] = "MOVING CAN SOMETIMES#DEFLECT PROJECTILES"
	    ultra_tips[69] = "guardian"
    
	    ultra_name[70] = "DESCENT"
	    ultra_text[70] = "INSTEAD OF HEALING YOUR ACTIVE#GIVES AMMO FOR YOUR PRIMARY#AT THE COST OF HEALTH#THRONE BUTT DOUBLES THE AMMO"
	    ultra_tips[70] = "emo style"
    
	    ultra_name[71] = "TRANQUILITY"
	    ultra_text[71] = "WHEN AT OR ABOVE FULL HEALTH#YOU DEAL 50% MORE DAMAGE"
	    ultra_tips[71] = "experience tranquility"
    
	    ultra_name[72] = "ASCENT"
	    ultra_text[72] = "YOU CAN FLY OVER WALLS FOREVER#ALSO DEFLECT ON YOUR RETICLE"
	    ultra_tips[72] = "all you need is air"
		
		//Have less than default max hp
		if altOverride || (instance_exists(Player) &&  Player.race == 18 && (Player.altUltra || Player.unlockAlternativeUltras || (
		((Player.maxhealth < 8 && !scrIsGamemode(9)) || (scrIsGamemode(9) && Player.maxhealth < 8 + UberCont.casualModeHPIncrease))
		&& instance_exists(UltraIcon))))
		{
			ultra_name[72] = "MIRROR"
		    ultra_text[72] = "ACTIVE NO LONGER HEALS#ACTIVE COST IS ALWAYS REDUCED#(AS IF YOU ARE ON MAX HP)#ALSO DEFLECT ON YOUR RETICLE"
		    ultra_tips[72] = "right back at ya"
		}
		
    
	//SKELETON 
	ultra_name[73] = "REDEMPTION"
	ultra_text[73] = "REROLL ALL YOUR MUTATIONS#GET PATIENCE AS AN EXTRA#CHOICE EVERY TIME.#WHEN YOU LOOP YOU#CAN GET AN ULTRA AGAIN##NORMAL MOVEMENT SPEED#NORMAL ACCURACY"
	ultra_tips[73] = "specific taste in mutations"
	
	ultra_name[74] = "DAMNATION"
	//ultra_text[74] = "FIRING A WEAPON WITH BLOOD GAMBLE#WILL REDUCE ITS RELOAD TIME BY 80%##USING BLOOD GAMBLE WHILE RELOADING#CAN FORCE YOUR WEAPON TO FIRE#AT THE COST OF 1HP"
	ultra_text[74] = "FAILED BLOOD GAMBLES WILL COST#5 TIMES AMMO#INSTEAD OF HEALTH#IF YOUR AMMO IS NEGATIVE#IT WILL COST HEALTH AGAIN##BLOOD GAMBLE CAN BE USED#WHILE RELOADING"
	ultra_tips[74] = "damn son!"
	
	if altOverride || (instance_exists(Player) && (Player.race == 19 && (Player.altUltra || Player.unlockAlternativeUltras || (instance_exists(UltraIcon) && scrHasBloodWeapon()))))
	{
		ultra_name[74] = "REMINISCE"
		ultra_text[74] = "REPLACE YOUR ACTIVE WITH BLOOD SPLATTER#YOU SPAWN BLOOD TOWARDS NEARBY CORPSES##THRONEBUTT INCREASES AMOUNT OF BLOOD##BLOOD CAN DESTROY#ALL TYPES OF PROJECTILES#BLOOD CAN GO THROUGH WALLS"
		ultra_tips[74] = "i used to have skin and warm blood"
	}
	
	/*
	ultra_name[75] = "THE BIG GAMBLE"
	ultra_text[75] = "GET A RANDOM ULTRA MUTATION#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
	ultra_tips[75] = "hybrid character"
	*/
	ultra_name[75] = "HARDENED BONE"
	ultra_text[75] = "IMMUNE WHILE STATIONARY##SUCCESSFUL BLOOD GAMBLE#MAKES YOU IMMUNE FOR A SHORT DURATION##FAILED BLOOD GAMBLE#CREATES BLOOD EXPLOSIONS"
	ultra_tips[75] = "hybrid character"

	ultra_name[76] = "UNSTOPPABLE"
	ultra_text[76] = "GAIN THREE LIVES"
	ultra_tips[76] = "never dead"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 19 && (Player.ultimategamble==true || Player.unlockAlternativeUltras))
	{
	    ultra_name[76] = "THE ULTIMATE GAMBLE"
	    ultra_text[76] = "50% CHANCE TO DIE OR TO GET#TWO RANDOM ULTRA MUTATIONS#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
	    ultra_tips[76] = "that went well!"
	}

	    //BUSINESSHOG 
	    ultra_name[77] = "PROSPERITY"
	    ultra_text[77] = "ENEMIES DROP MORE RADS#BOSSES DROP ULTRA CHESTS#INSTEAD OF GOLD CHESTS"
	    ultra_tips[77] = "money everywhere"
		
		//Have heavy heart
		if altOverride || (instance_exists(Player) &&  Player.race == 20 && (Player.race == 20 && (Player.altUltra || Player.unlockAlternativeUltras || (
		(Player.skill_got[0])
		&& instance_exists(UltraIcon)))))
		{
			ultra_name[77] = "HOARDING THIEF"
		    ultra_text[77] = "GO TO YV'S CRIB#YOUR SHOP BECOMES A WEAPON WHEEL#SELECT A SLOT TO STORE#YOUR PRIMARY WEAPON#WEAPON CAN BE TAKEN OUT AT ANY TIME#THRONE BUTT DOUBLES INVENTORY SIZE"
		    ultra_tips[77] = "tax evasion"
		}
		
	    ultra_name[78] = "QUANTITY"
	    ultra_text[78] = "MORE SHOP ITEMS"
	    ultra_tips[78] = "options"
    
	    ultra_name[79] = "INVESTMENT"
		if GetPlayerLoops() > 1
		{
			ultra_text[79] = "GAIN NOTHING NOW#IF YOU REACH THE NEXT LOOP#YOU CAN CHOOSE TWO RANDOM ULTRAS#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
		}
		else
		{
			ultra_text[79] = "GAIN NOTHING NOW#IF YOU REACH LOOP 2#YOU CAN CHOOSE TWO RANDOM ULTRAS#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
		}
	    ultra_tips[79] = "are you that good?"
    
	    ultra_name[80] = "GOLD DIGGER"
	    ultra_text[80] = "SIGNIFICANTLY INCREASE#GOLDEN WEAPON FIRE RATE"
	    ultra_tips[80] = "she take my money!#when I'm in need!"
    
    
	//HORROR 
	ultra_name[81] = "STALKER"
	ultra_text[81] = "ENEMIES EXPLODE INTO RAD BULLETS#DEPENDING ON#THE AMOUNT OF RADS THEY DROP"
	ultra_tips[81] = "stalking and walking"

	ultra_name[82] = "ANOMALY"
	ultra_text[82] = "PORTALS APPEAR EARLIER"
	ultra_tips[82] = "the anomaly meta"

	ultra_name[83] = "MELTDOWN"
	ultra_text[83] = "DOUBLE RADIATION CAPACITY#INCREASE RADIATION VALUE BY 20%"
	ultra_tips[83] = "freezeup"

	ultra_name[84] = "POWER"
	ultra_text[84] = "HOMING BEAM#BEAM GOES THROUGH WALLS#BEAM DESTROYS PROJECTILES BETTER"
	ultra_tips[84] = "thats a good beam"

	// ULTRA E IS ULTRA 0


	    //ROGUE 
	    ultra_name[85] = "SUPER PORTAL STRIKE"
	    ultra_text[85] = "MORE PORTAL AMMO#DOUBLE PORTAL STRIKE AMMO PER PICKUP#ENEMIES CAN DROP PORTAL STRIKE AMMO#USING PORTAL STRIKE HEALS YOU#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[85] = "money everywhere"
    
	    ultra_name[86] = "SUPER BLAST ARMOUR"
	    ultra_text[86] = "STRONGER BLAST ARMOUR#BLAST ARMOUR BECOMES STRONGER#THE MORE IT TRIGGERS IN EACH AREA#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[86] = "options"
    
	    ultra_name[87] = "NEW CAPTAIN"
	    ultra_text[87] = "AT THE START OF AN AREA#SUMMON A GROUP OF IDPD#THAT FIGHT FOR YOU#REPEAT EACH TIME#YOU PICK UP PORTAL STRIKE AMMO#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
		if instance_exists(Player) && (Player.race != 22)
			ultra_text[87] = "AT THE START OF AN AREA#SUMMON A GROUP OF IDPD#THAT FIGHT FOR YOU";
	    ultra_tips[87] = "rogue leader"
		
		if altOverride || (instance_exists(Player) && (Player.race == 22 && (Player.altUltra || Player.unlockAlternativeUltras || (scrHasAnEmptyLife() && instance_exists(UltraIcon)))))
		{
			ultra_name[87] = "IMMORTAL POLICE"
		    ultra_text[87] = "REPLACE PORTAL STRIKE WITH REVIVE#REVIVE USES PORTAL STRIKE AMMO#LOWER MAXIMUM PORTALSTRIKE AMMO BY 1#THRONE BUTT REVIVES YOU AT FULL HP#INSTEAD OF 1HP#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
		    ultra_tips[87] = "rogue freak"
		}
    
	    ultra_name[88] = "ULTRA POPO"
	    ultra_text[88] = "ULTRA WEAPONS COST LESS RADS#PORTAL STRIKE COSTS RADS INSTEAD#REPLACE PORTAL STRIKE AMMO CHESTS#WITH RAD CHESTS#BLAST ARMOUR PRODUCES RADS#RADS SPAWN ULTRA LIGHTNING"
	    ultra_tips[88] = "I can do that better"
    
    
	//FROG 
	ultra_name[89] = "DISTANCE"
	ultra_text[89] = "RADS EMIT TOXIC GAS"
	ultra_tips[89] = "can't run from my gas"

	ultra_name[90] = "INTIMACY"
	ultra_text[90] = "CONTINUOUSLY EMIT GAS#EMIT GAS QUICKER USING YOUR ACTIVE"
	ultra_tips[90] = "come closer"

	ultra_name[91] = "MOMMA"
	ultra_text[91] = "ACTIVE CREATES FRIENDLY BALLGUYS"
	ultra_tips[91] = "I am the mother now"
	
	ultra_name[92] = "POTENCY"
	ultra_text[92] = "NORMAL CONTROLS##WHILE IN COMBAT#SLOWLY CONSUME GASS TO HEAL"
	ultra_tips[92] = "you can gas while moving"

	    if instance_exists(Player)
	    {
		    if  Player.race == 23 && (Player.altUltra || Player.unlockAlternativeUltras || (Player.wep_type[Player.wep] == 3 && Player.wep_type[Player.bwep] == 3 && instance_exists(UltraIcon))){
				ultra_name[92] = "SPIKE BALL"
				ultra_text[92] = "NORMAL CONTROLS#EMIT SPLINTERS INSTEAD OF GASS#ALL SPLINTERS ARE GASEOUS"
				ultra_tips[92] = "porkupain"
		    }
	    }

	    //Elementor 
	    ultra_name[93] = "EARTHBENDER"
	    ultra_text[93] = "YOU AND YOUR PROJECTILES#PHASE THROUGH YOUR WALLS"
	    ultra_tips[93] = "get to cover!"
    
	    ultra_name[94] = "ICE COLD"
	    ultra_text[94] = "STRONGER & HOMING DEBRIS#DEBRIS FREEZES ENEMIES##YOUR WALLS CREATE#MORE DEBRIS WHEN DESTROYED"
	    ultra_tips[94] = "ice ice CHAINREACTION BABY!"
    
	    ultra_name[95] = "BURNING HOT"
	    ultra_text[95] = "MORE FLAME DAMAGE#FIRE HOMES#FIRE TRAIL"
	    ultra_tips[95] = "spicy"
		
	    ultra_name[96] = "THUNDER BOMB"
	    ultra_text[96] = "OCCASIONALLY PRODUCE LIGHTNING##WHEN USING LIGHTNING WEAPONS:#GAIN EXPLOSIVE AMMO##WHEN USING KRAKEN WEAPONS:#GAIN ENERGY AMMO"
	    ultra_tips[96] = "you gain explosive ammo#when using a lightning weapon#you gain energy ammo#when using a kraken weapon"
		
		//CROWN OF REINCARNATION/FREEDOM
		if altOverride || (instance_exists(Player) && (Player.race == 24 && (Player.altUltra || Player.unlockAlternativeUltras || (
		(scrIsCrown(11) || scrIsCrown(25) || Player.skill_got[2]) && !Player.skill_got[17]
		&& instance_exists(UltraIcon)))))
		{
			ultra_name[96] = "AIR LORD"
		    ultra_text[96] = "YOUR ACTIVE CHANGES INTO#WIND PUSH#WIND PUSHES PROJECTILES AND ENEMIES#ENEMIES HITTING A WALL TAKE MORE DAMAGE#THRONE BUTT MAKES THE WIND STRONGER"
		    ultra_tips[96] = "blow"
		}
    

	//MUTATION SMITH 
	ultra_name[97] = "SURGEON"
	ultra_text[97] = "EVEN BETTER WEAPON#SPECIFIC MUTATIONS"
	ultra_tips[97] = "delicacy"
	
	//No weapon specific mutations (except for bolt marrow)
	if altOverride || (instance_exists(Player) &&  Player.race == 25 && (Player.altUltra || Player.unlockAlternativeUltras || (!Player.skill_got[13] && !Player.skill_got[16] && !Player.skill_got[17] && !Player.skill_got[15] && !Player.skill_got[14] && instance_exists(UltraIcon))))
	{
		ultra_name[97] = "BEEKEEPER"
		ultra_text[97] = "SOME RADIATION SPAWNS SWARM BOLTS"
		ultra_tips[97] = "retired to a farm"
	}
    
	ultra_name[98] = "PLAGUE DOCTOR"
	ultra_text[98] = "YOUR ACTIVE CHANGES INTO#INFEST ENEMIES USING RADS#THRONE BUTT DECREASES RAD COST"
	ultra_tips[98] = "I am here to heal you"
    
	ultra_name[99] = "NECROMANCER"
	ultra_text[99] = "YOUR ACTIVE CHANGES INTO#REVIVE CORPSES INTO ALLY FREAKS#THRONE BUTT INCREASES THE DAMAGE#THEY DEAL"
	ultra_tips[99] = "doctor necromancer"
    
	ultra_name[100] = "SEDATIVES"
	ultra_text[100] = "YOUR PROJECTILES PUT ENEMIES TO SLEEP#FOR A SHORT MOMENT#THRONE BUTT INCREASES#THE SLEEP DURATION"
	ultra_tips[100] = "sleeping enemies don't react#for a moment"


	    //GOOD O'L HUMPHRY 
	    ultra_name[101] = "EXPERIENCED"
	    ultra_text[101] = "GAIN TWO SKILL INSTEAD OF ONE#PER HIT SHOT"
	    ultra_tips[101] = "learning quickly"
        
	    ultra_name[102] = "RAPID MUSTACHE GROWTH"
	    ultra_text[102] = "SKILL ALSO INCREASES FIRE RATE"
	    ultra_tips[102] = "quickdraw"
        
	    ultra_name[103] = "PROTECTIVE FACIAL HAIR"
	    ultra_text[103] = "WHEN YOU HAVE MORE THEN 200 SKILL#AND YOU DIE#YOUR DEATH WILL BE PREVENTED#AND YOUR SKILL WILL BE RESET#YOU CAN'T GAIN SKILL#FOR 60 SECONDS AFTER TRIGGERING THIS"
	    ultra_tips[103] = "strong skillet"
        
		ultra_name[104] = "DISCIPLINE"
	    ultra_text[104] = "ACTIVE CAN SHRINK#ALL ENEMY PROJECTILES#INTO NOTHINGNESS#ACTIVE STUNS ENEMIES FOR LONGER"
	    ultra_tips[104] = "discipline those projectiles!"
		
		//Have any director weapon
		if altOverride || (instance_exists(Player) &&  Player.race == 26 && (Player.altUltra || Player.unlockAlternativeUltras || (scrHasDirector() && instance_exists(UltraIcon))))
		{
			ultra_name[104] = "GRUMPY LECTURE"
			//TODO change to unequipped ammo
		    ultra_text[104] = "ACTIVE COSTS UNEQUIPPED AMMO#INSTEAD OF SKILL#ACTIVE DEFLECTS & DESTROYS#ALL ENEMY PROJECTILES"
		    ultra_tips[104] = "teach them a lesson!"
		}
		/*
	    ultra_name[104] = "FRUITS OF LABOR"
	    ultra_text[104] = "INCREASED SPRINT SPEED#IMMUNE TO CONTACT DAMAGE#WHILE SPRINTING"
	    ultra_tips[104] = "fast old man"
		*/
		
	//HANDS
	ultra_name[105] = "IRRADIATED"
	ultra_text[105] = "ALL DAMAGE YOU DEAL TO AN ENEMY#IS INCREASED DEPENDING ON#HOW CLOSE YOU ARE TO THE ENEMY#DAMAGE BUFF IS HIGHER IN INVERTED AREAS"
	ultra_tips[105] = "let me touch you"
    
	ultra_name[106] = "NEGATIVE ENVIROMENT"
	ultra_text[106] = "WALLS CONTAIN SWARM BOLTS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
	ultra_tips[106] = "I'm a glass half empty kinda hand"
	
	if instance_exists(Player) && (Player.race == 27 && Player.bskin == 1)
	{
		//Secret B skin ultra
		ultra_name[106] = "HOT HANDS!"
		ultra_text[106] = "FIERY HANDS#MORE FIRE DAMAGE#HOMING FIRE#EVEN MORE FIRE DAMAGE#WHILE IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
		ultra_tips[106] = "secret b-skin ultra mutation"
	}
	else if instance_exists(Player) && (Player.race == 27 && Player.bskin == 2)
	{
		//Secret C skin ultra
		ultra_name[106] = "BOOM HANDS!"
		ultra_text[106] = "EXPLOSIVE HANDS#HAND IS SLOWER#NORMAL HAND SPEED IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
		ultra_tips[106] = "secret c-skin ultra mutation"
	}
	
	ultra_name[107] = "MANY HANDS"
	ultra_text[107] = "CAN HAVE TWO HANDS OUT AT A TIME#PUNCH PROJECTILES OUT OF EXISTENCE#YOU CAN HAVE THREE HANDS WHILE#IN AN INVERTED AREA"
	ultra_tips[107] = "consecutive normal punches"
    
	ultra_name[108] = "DELICATE HANDS"
	ultra_text[108] = "ALLOWS YOUR HAND TO COLLECT#RADS, PICKUPS AND WEAPONS#HAND IS FASTER#THE HAND IS EVEN FASTER#WHILE IN AN INVERTED AREA"
	ultra_tips[108] = "i shouldn't be level 10 to pick up ammo"
	
	maxultra = 108;
	
	ultra_name[109] = "TRASH"
	ultra_text[109] = "DIE WHENEVER YOU TAKE DAMAGE"
	ultra_tips[109] = "challenge run"

	dir = 0
	repeat(maxultra+2)
	{ultra_got[dir] = 0
	dir += 1}
	
	scrSecretUltraStat();
}
