function scrUltras(altOverride = false, resetUltraGot = true) {
	var isOtherCharacter = false;
	// ULTRAS
	ultra_name[0] = "TOTAL FORECALL"
	ultra_text[0] = "CHOOSE AN <g>ULTRA MUTATION<g>#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(SUCH AS PLANT'S SNARE RELATED ULTRAS)#GET OFFERED <g>PATIENCE<g> WITH EVERY CHOICE"
	ultra_tips[0] = "adapting"
	
	if altOverride || (instance_exists(Player) && Player.race == 21 && Player.altUltra)
	{
		ultra_name[0] = "CASH FLOW"
		ultra_text[0] = "REPLACE BEAM WITH <y>CASH FLOW<y>#<y>CASH FLOW<y> USES <y>CASH<y> INSTEAD OF <g>RADS<g>#GET 200 <y>CASH<y> EVERY AREA#<y>CASH<y> MAXIMUM IS 500#KILLS GENERATE <y>CASH<y>#(UPGRADES TO BEAM STILL APPLY#BUT RECYCLE GLAND#INSTEAD OF ENERGY BRAIN)##YOU CAN KEEP USING ACTIVE#EVEN WHILE IN <r>DEBT<r>#BUT ACTIVE WILL BE LOCKED UNTIL#OUT OF <r>DEBT<r> AT THE START OF AN AREA"
		ultra_tips[0] = "C.R.E.A.M."
	}
	

	//FISH
	ultra_name[1] = "CONFISCATE"
	ultra_text[1] = "ENEMIES SOMETIMES DROP <w>CHESTS<w>#OPENING CHESTS CASTS A <aq>SHIELD<aq>#(EFFECTED BY DROP RATE)#<g>OPEN MIND<g> INCREASES#CHANCE BY 10%"
	ultra_tips[1] = "that's mine"

	ultra_name[2] = "GUN WARRANT"
	ultra_text[2] = "<g>INFINITE AMMO<g> AND <w>+10% RELOAD SPEED<w>#FOR THE <w>FIRST 8 SECONDS<w>#OF <w>ENTERING AN AREA<w>##KILLING A BOSS#GIVES ANOTHER 8 SECONDS OF#INFINITE AMMO AND RELOAD SPEED"
	ultra_tips[2] = "bringer of order"

	ultra_name[3] = "BUDDY COP"
	ultra_text[3] = "GET A PARTNER"
	ultra_tips[3] = choose("I missed you partner","partner stays close to you#when you reload#if not it'll go out aggro","partner actively body blocks projectiles")

	ultra_name[4] = "FISH CAN ROLL"
	ultra_text[4] = "REDUCE <y>AMMO<y>/<g>RAD<g> COST BY 5%#INCREASE PRIMARY <w>RELOAD SPEED<w>#DEPENDING ON YOUR <w>SPEED<w>#MUCH MORE EFFECTIVE WHEN <w>ROLLING<w>"
	ultra_tips[4] = "is waterboost a thing now?"
	
	if altOverride || instance_exists(Player) && Player.race == 1 && (Player.altUltra)
	{
		ultra_name[4] = "FISH CAN GUN"
		ultra_text[4] = "REDUCE <y>AMMO<y>/<g>RAD<g> COST BY 15%#THE MORE <y>AMMO<y> YOU HAVE#THE HIGHER YOUR <w>RELOAD SPEED<w>#DOES NOT HAVE AN EFFECT ON MELEE"
		ultra_tips[4] = "loaded and goated"
	}

	    //CRYSTAL 
	    ultra_name[5] = "FORTRESS"
	    ultra_text[5] = "+6 MAX <r>HP<r>"
	    ultra_tips[5] = "indestructable"
    
	    ultra_name[6] = "JUGGERNAUT"
	    ultra_text[6] = "MOVE WHILE <p>SHIELDED<p>#REDUCE SHIELDING COOLDOWN"
	    ultra_tips[6] = "crab legs"
		
		if altOverride || (instance_exists(Player) && Player.race == 2 && Player.altUltra)
		{
			ultra_name[6] = "CURSED"
		    ultra_text[6] = "<w>TELEPORT<w> AFTER <p>SHIELDING<p>#<p>SHIELDING<p> FIRES <g>LASERS<g>#ALL <g>LASERS<g> BECOME <aq>BOUNCY<aq>##<aq>IMMUNE<aq> TO ENEMY CONTACT DAMAGE#WHILE <p>SHIELDED<p>"
		    ultra_tips[6] = "cursed crystal"
		}
    
	    ultra_name[7] = "BUNKER"
	    ultra_text[7] = "SHORTER <p>SHIELD<p>#<w>SHOOT<w> WHILE <p>SHIELDED<p>#WHILE <w>STATIONARY<w> INCREASE RELOAD SPEED"
	    ultra_tips[7] = "the iron fist"
    
	    ultra_name[8] = "VENGEFUL"
	    ultra_text[8] = "SIGNIFICANTLY SHORTER <p>SHIELD<p>#<pi>DEFLECTED<pi> PROJECTILES#HOME IN ON ENEMIES#<aq>INVULNERABLE<aq> TO ALL DAMAGE#WHILE <p>SHIELDING<p>#LONGER SHIELDING COOLDOWN"
	    ultra_tips[8] = "homing effects wear of#when you're not shielding"
		/*
		if altOverride || (instance_exists(Player) && Player.race == 2 && Player.altUltra)
		{
			ultra_name[8] = "CRYSTALINE TORPEDO"
		    ultra_text[8] = "+2 MAX HP#ACTIVE COSTS 1 HP#WHILE SHIELDING#LAUNCH YOURSELF INTO A MASSIVE CRYSTAL TORPEDO#BREAK WALLS AND DEAL TONS OF DAMAGE#COMPLETLY <aq>IMMUNE<aq> WHILE SHIELDING"
		    ultra_tips[8] = "the boulder"
		}*/

	//EYES 
	ultra_name[9] = "PROJECTILE STYLE"
	ultra_text[9] = "HOLD YOUR PROJECTILES#HELD PROJECTILES <aq>BLOCK<aq>#ENEMY PROJECTILES"
	ultra_tips[9] = "need more cannons"
	
	if altOverride || (instance_exists(Player) && Player.race == 3 && Player.altUltra)
	{
		ultra_name[9] = "STRANGE STYLE"
		ultra_text[9] = "TELEKINESIS PULLS#ENEMIES AND PROJECTILES#TOWARDS YOUR <w>CROSSHAIR<w>#<w>INFINITE<w> TELEKINESIS RANGE#STRONGER PROJECTILE PUSH"
		ultra_tips[9] = "something strange"
	}

	ultra_name[10] = "MONSTER STYLE"
	ultra_text[10] = "WHEN NOT USING ACTIVE#PUSH ENEMIES AWAY"
	ultra_tips[10] = "repellent"
	if altOverride || (instance_exists(Player) && Player.race == 3 && Player.altUltra)
	{
		ultra_name[10] = "VOID STYLE"
		ultra_text[10] = "YOUR ACTIVE CHANGES INTO <v>VOID<v> <w>PULL<w>#BURST PULL ALL <r>ENEMIES<r>#AND <r>ENEMY<r> <w>PROJECTILES<w> TOWARDS YOU#CREATE A <v>VOID<v> <w>CIRCLE<w> AROUND YOURSELF#THAT CONSUMES PROJECTILES#AND DEALS DAMAGE TO ENEMIES"
		ultra_tips[10] = "see into the void"
	}

	ultra_name[11] = "BRAIN STYLE"
	ultra_text[11] = "FULLY SEE IN THE <p>DARK<p>#SOME ENEMIES ATTACK OTHER ENEMIES"
	ultra_tips[11] = "brain style works on bosses!"
	
	ultra_name[12] = "PSYCHONAUT STYLE"//thats a refrence
	ultra_text[12] = "TELEKINESIS ATTRACTS#<r>HP<r>/<y>AMMO<y> DROPS, <g>RADS<g> & <w>WEAPONS<w>#THROUGH <w>WALLS<w>#INCREASED <r>HP<r>/<y>AMMO<y> ATTRACTION SPEED"
	ultra_tips[12] = "never miss a drop"

	    //MELTING 
	    ultra_name[13] = "BRAIN CAPACITY"
	    ultra_text[13] = "BLOW UP LOW <r>HP<r> ENEMIES"// originally doesn't work with scarier face
	    ultra_tips[13] = "5hp == death"
		
		if altOverride || (instance_exists(Player) &&  Player.race == 4 && Player.altUltra)
		{
			ultra_name[13] = "DEATH STARE"
			ultra_text[13] = "LOOKING AT ENEMIES SLOWLY <r>KILLS<r> THEM#ENEMIES ARE <w>SCARED<w> OF YOU"
			ultra_tips[13] = "the face of death"
		}
    
	    ultra_name[14] = "DETACHMENT"
	    ultra_text[14] = "LOSE HALF YOUR <r>HEALTH<r>#GET 3 MORE <g>MUTATIONS<g>"//originally 3
	    ultra_tips[14] = "three is not enough"
    
	    ultra_name[15] = "POWER OVERWHELMING"
	    ultra_text[15] = "INCREASE MAX <g>LEVEL<g> BY <w>1<w>#EVEN MORE <g>RADS<g>#HALF <y>AMMO<y> COST FOR ALL WEAPONS#ALL WEAPONS COST A SMALL AMOUNT OF <g>RADS<g>"
	    ultra_tips[15] = "ultra ultra ultra ultra"
    
	    ultra_name[16] = "DOOMED"
	    ultra_text[16] = "<w>LAST TWO<w> TYPES OF ENEMIES#THAT DIED IN AN AREA#ARE <r>DEAD<r> IN THE NEXT AREA##MORE <r>BLOOD<r> DAMAGE"
	    ultra_tips[16] = "blood sweat and tears"
		
    
	//PLANT 
	ultra_name[17] = "TRAPPER"
	ultra_text[17] = "BIG <w>SNARE<w>##SNARE <r>DAMAGES<r> ENEMIES#WHEN IN YOUR LINE OF SIGHT"
	ultra_tips[17] = "nowhere to hide"

	ultra_name[18] = "KILLER"
	ultra_text[18] = "ENEMIES KILLED NEAR <w>SNARE<w>#SPAWN <w>SAPLINGS<w>##SNARE <r>DAMAGES<r> ENEMIES#WHEN IN YOUR LINE OF SIGHT"
	ultra_tips[18] = "eat the prey"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 5 && (Player.altUltra))
	{
		var regalBut = "E";
		if instance_exists(UberCont)
			regalBut = scrAsciiChar(UberCont.opt_regal)
		//TWO OR THREE HEALING MUTATIONS!
		ultra_name[18] = "PHOTOSYNTHESIS"
		ultra_text[18] = "PRESS <w>[" + regalBut + "]<w> TO MOVE#AWAY FROM <r>ENEMIES<r> AT <w>LIGHTSPEED<w>##YOU CAN ALWAYS <r>OVERHEAL<r> <w>+2<w>##WHENEVER YOU <r>HEAL<r>:#CAST THE POWER OF THE <y>SUN<y>#ON YOUR <w>CROSSHAIR<w>"
		ultra_tips[18] = "BY THE POWER OF THE SUN!"
	}
/*
	ultra_name[19] = "LEACHER"
	ultra_text[19] = "ENEMIES STUCK ON SNARE#SOMETIMES HEAL YOU#ENEMIES KILLED ON SNARE#HAVE A CHANCE TO DROP ADDITIONAL ITEMS"
	ultra_tips[19] = "nutritious"
*/

/*
	ultra_name[19] = "PHOTOSYNTHESIS"
	ultra_text[19] = "SLOWLY HEAL AND GAIN AMMO WHILE IN COMBAT#PICKING UP RESOURCES SPAWNS VINES#THAT SLOW AND DAMAGE ENEMIES"
	ultra_tips[19] = "nutritious"
*/
	ultra_name[19] = "APEX PREDATOR"
	ultra_text[19] = "BETTER <w>KILL MUTATIONS<w>#(TRIGGER FINGERS, LUCKY SHOT, RAGE...)##REPLACE <g>SNARE<g> WITH <w>SPRINT<w>#<w>KILLS<w> MAKE YOU <aq>IMMUNE<aq>#FOR A SHORT DURATION#MOVING <w>FASTER<w> INCREASES THE DURATION#EFFECT CAN STACK WITH MULTIPLE KILLS#THRONE BUTT INCREASES THE DURATION"
	ultra_tips[19] = "nutritious"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 5 && (Player.altUltra))
	{
		//EXTRA FEET OR CROWN OF SPEED
		ultra_name[19] = "KILL KILL KILL"
		ultra_text[19] = "YOUR ACTIVE CHANGES INTO#<w>KILL KILL KILL<w>:#TARGET ONE ENEMY#DEAL AN <r>ABSURD<r> AMOUNT OF <r>DAMAGE<r> TO IT#AND ANY OF ITS <w>TYPE<w>#IF YOU HAVE <p>THRONEBUTT<p> ALSO <r>HEAL<r> 2 <r>HP<r>#CAN BE DONE THRICE PER AREA##WHEN <r>KILL KILL KILL<r> HAS BEEN USED#ENABLE <g>SNARE<g> AGAIN"
		ultra_tips[19] = "KILL KILL KILL"
	}
	
	ultra_name[20] = "STEREO SNARES"
	ultra_text[20] = "SPAWN TWO <w>SNARES<w>#CAN ENSNARE ENEMY PROJECTILES##SNARE <r>DAMAGES<r> ENEMIES#WHEN IN YOUR LINE OF SIGHT"
	ultra_tips[20] = "better then original stereo snares"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 5 && (Player.altUltra))
	{
		//EXTRA FEET OR CROWN OF SPEED
		ultra_name[20] = "SONIC SPEED"
		ultra_text[20] = "YOU CAN MOVE EXTREMELY <w>FAST<w>!#ACCELERATING OR DECELERATING QUICKLY#CREATES A <w>SONIC BOOM<w>"
		ultra_tips[20] = "SONIC BOOM!"
	}
	

	    //Y.V. YUNG VENUZ YV
	    ultra_name[21] = "IM A GUN GOD"
	    ultra_text[21] = "+40% PRIMARY <w>RELOAD SPEED<w>"
	    ultra_tips[21] = "+40% higher rate of fire"
		if altOverride || (instance_exists(Player) && Player.race == 6 && Player.altUltra)
		{
			ultra_name[21] = "VENUZIAN AIRHORN"
			ultra_text[21] = "NEAR <w>INFINITE RELOAD SPEED!<w>#ALL RELOAD YOU CHEAT#WILL NEED TO BE RELOADED NEXT AREA##PICKING UP A WEAPON#NO LONGER RELOADS YOUR WEAPON";
			ultra_tips[21] = "infinite trigger finger"
		}
	    ultra_name[22] = "BACK 2 BIZNIZ"
	    ultra_text[22] = "FREE <w>POP POP<w> UPGRADE"
	    ultra_tips[22] = "more pop"
    
	    ultra_name[23] = "MAKE IT RAIN"
	    ultra_text[23] = "+50% <w>SHOTGUN RELOAD SPEED<w>#USED <w>BULLET<w> <y>AMMO<y>#CONVERTS TO <w>SHOTGUN<w> <y>AMMO<y>#(10 BULLET TO 1 SHOTGUN AMMO)##+10% <w>BULLET<w> WEAPON <w>RELOAD SPEED<w>"//"REALLY HIGH SHOTGUN FIRE RATE#USED SHOTGUN AMMO CONVERTS#TO BULLET AMMO"
	    ultra_tips[23] = "shells and bullets <3"
		if altOverride || (instance_exists(Player) && Player.race == 6 && (Player.altUltra))
		{
			ultra_name[23] = "BLASPHEMY"
			ultra_text[23] = "CAN NO LONGER POP POP GUNS#45% HIGHER <w>MELEE<w> SWING RATE#MELEE IS FULLY <w>AUTOMATIC<w>#CAN POP POP <w>MELEE<w>"
			ultra_tips[23] = "why would you forsake us gun god?"
		}
    
	    ultra_name[24] = "VERIFY VENUZ"
	    ultra_text[24] = "EVERY OTHER <w>POP POP<w> ALSO FIRES#YOUR SECONDARY WEAPON#CAN POP FULL <w>AUTO<w>#+50% SECONDARY <w>RELOAD SPEED<w>"
	    ultra_tips[24] = "poppoppoppoppoppoppoppop"
		
		if altOverride || (instance_exists(Player) && Player.race == 6 && (Player.altUltra))
		{
			ultra_name[24] = "GODS DON'T DIE"
			ultra_text[24] = "WHEN BOTH YOUR GUNS ARE <w>RELOADED<w>#YOU ARE <aq>IMMUNE<aq> FOR 2 SECONDS";
			ultra_tips[24] = "gun god gun god gun god"
		}
		
    
	//STEROIDS 
	ultra_name[25] = "AMBIDEXTUROUS"
	ultra_text[25] = "<r>WEAPON CHESTS<r> DROP#TWO OF THE SAME WEAPON#FIRING WHILE HAVING TWO#OF THE SAME WEAPONS#SLOWLY <r>HEALS<r> YOU#CHANCE DEPENDS ON:#RELOAD TIME AND AMMO COST#CAN <r>OVERHEAL<r> UP TO <w>2<w> ABOVE MAX"
	ultra_tips[25] = "big wep chests drop two duplicates"

	ultra_name[26] = "GET LOADED"
	ultra_text[26] = "<y>AMMO CHESTS<y> INCLUDE ALL <y>AMMO<y> TYPES#YOU CAN CARRY#AN <w>INFINITE<w> AMOUNT OF <y>AMMO<y>!#<y>AMMO<y> ABOVE MAX DECREASES OVER TIME##THE MORE TOTAL <y>AMMO<y> YOU HAVE#THE MORE <w>KNOCKBACK<w> YOU DEAL"
	ultra_tips[26] = "infinite strength"

	ultra_name[27] = "MIRROR HANDS"
	ultra_text[27] = "RIGHT CLICK FIRES YOUR PRIMARY#SWAPPING <w>RELOADS<w> YOUR WEAPONS"
	ultra_tips[27] = "auto pop pop"
	if altOverride || (instance_exists(Player) &&  Player.race == 7 && (Player.altUltra))
	{
		//Need to update alt ultra description in ultraIcon
		ultra_name[27] = "PUNCHSWAP"
		ultra_text[27] = "<w>SWAPPING<w> MAKES YOU SWING#WITH YOUR WEAPON#SWINGS <pi>DEFLECT<pi> PROJECTILES#AND DEAL DAMAGE"
		ultra_tips[27] = "GET KNOCKED OUT"
	}

	ultra_name[28] = "STRONG FIRE"
	ultra_text[28] = "MORE <w>BULLET<w> DAMAGE"
	ultra_tips[28] = "<3 bullets"

	    //ROBOT 
		if instance_exists(Player) && Player.race != 8
			isOtherCharacter = true;
		if altOverride || (instance_exists(Player) && Player.race == 8 && (Player.altUltra))
		{
			ultra_name[29] = "EXCLUSIVE TASTE"
			ultra_text[29] = "HOLDING ONLY ONE WEAPON WILL:#INCREASE DAMAGE DEALT TO ENEMIES BY 20%#RETURN 10% <y>AMMO<y>/<g>RAD<g> UPON FIRING#+15% <w>RELOAD SPEED<w> AND +4 MAX <r>HP<r>";
		    ultra_tips[29] = "gold tastes good"
		}
		else
		{
			ultra_name[29] = "REFINED TASTE"
			if isOtherCharacter
				ultra_text[29] = "ONLY <w>HIGH TIER<w> WEAPON DROPS#INCREASE <w>RELOAD SPEED<w> BASED ON WEAPON TIER"
			else
				ultra_text[29] = "ONLY <w>HIGH TIER<w> WEAPON DROPS#INCREASE <w>RELOAD SPEED<w> BASED ON WEAPON TIER"
		    ultra_tips[29] = "delicacy"
		}
		
		ultra_name[30] = "REGURGITATE"
		if altOverride || (instance_exists(Player) && !isOtherCharacter && Player.skill_got[23])//Has open mind
			ultra_text[30] = "EATING WEAPONS HAS A 40% CHANCE#TO DROP <w>CHESTS<w>##EATING A WEAPON DROPS IT LIKE A TURRET#THE <w>TURRET<w> FIRES THE EATEN WEAPON";
		else
			ultra_text[30] = "+15% <w>WEAPON DROP RATE<w>#EATING WEAPONS HAS A 30% CHANCE#TO DROP <w>CHESTS<w>##EATING A WEAPON DROPS IT LIKE A TURRET#THE <w>TURRET<w> FIRES THE EATEN WEAPON"
		ultra_tips[30] = "2% more chance for weapon chests"
		
		if altOverride || (instance_exists(Player) && Player.race == 8 && (Player.altUltra))
		{
			ultra_name[30] = "CURSED TECHNOLOGY"
			ultra_text[30] = "TAKING <y>CROWNS<y> <p>CURSES<p> WEAPONS#INSTALL <g>LASER<g> <w>DEFENSE<w> SYSTEM#<p>CURSED PICKUPS<p> ATTACK ENEMIES#EATING <p>CURSED WEAPONS<p> (OVER) <r>HEALS<r> <w>1<w><r>HP<r>##ONCE PER AREA:#WHEN TAKING <aq>LETHAL DAMAGE<aq>#<p>TELEPORT<p> AWAY FROM ENEMIES";
		    ultra_tips[30] = "eating guns from other dimensions"
		}
		
	    ultra_name[31] = "EXTRA STORAGE"
		if isOtherCharacter
			ultra_text[31] = "YOU CAN CARRY <w>THREE<w> WEAPONS"
		else
		ultra_text[31] = "YOU CAN CARRY <w>THREE<w> WEAPONS##<w>EATING<w> WEAPONS DOES <w>NOT CONSUME<w> THEM#AND INSTEAD <p>SENDS<p> THEM TO THE <w>NEXT AREA<w>#(CAN BE DONE ONLY ONCE PER WEAPON)"
	    ultra_tips[31] = "why not all three?"
    
	    ultra_name[32] = "GUN EXTENSION"
	    ultra_text[32] = "REPLACE ACTIVE WITH:#<w>FORCE SHOT<w>#YOUR ACTIVE FIRES YOUR WEAPON#AT THE COST OF <g>RADS<g> INSTEAD OF <y>AMMO<y>#COST IS DETERMINED BY <w>RELOAD TIME<w>##THRONEBUTT REDUCES COST"
	    ultra_tips[32] = "burping shots"
    
	//CHICKEN 
	ultra_name[33] = "HARDER TO KILL"
	ultra_text[33] = "<w>KILLS<w> EXTEND <r>BLEED<r> TIME#<g>CROWN VAULTS<g> REGENERATE <w>1<w> <r>MAX HP<r>#<r>BLEEDING<r> INCREASES <w>DAMAGE DEALT<w> BY <w>50%<w>#LOSE LESS <r>MAX HP<r> UPON DYING##ENDING AN AREA WHILE <r>BLEEDING<r>#ALWAYS <w>RESTORES YOUR HEAD<w>"
	ultra_tips[33] = "immortal"
	
	//FIRE WEAPON
	if altOverride || (instance_exists(Player) &&  Player.race == 9 && (Player.altUltra))
	{
		ultra_name[33] = "PHOENIX"
		ultra_text[33] = "CAN NO LONGER BECOME <w>HEADLESS<w> INSTEAD#WHILE YOU ARE ABOVE <g>LEVEL<g> <w>2<w>#<aq>PREVENT<aq> <w>DEATH<w>#LOSE <w>TWO LEVELS<w> AND <w>TWO RANDOM<w> <g>MUTATIONS<g>##EVERYTIME YOUR DEATH IS PREVENTED#YOU PERMANENTLY BECOME <w>STRONGER<w>#AND YOU <g>LEVEL<g> UP SLOWER"
		ultra_tips[33] = "rise and rise again"
	}

	ultra_name[34] = "NINJA"
	ultra_text[34] = "MORE <w>MELEE<w> DAMAGE"
	ultra_tips[34] = "slice em'"

	ultra_name[35] = "FOCUS"
	ultra_text[35] = "<w>SLOW MOTION<w> IS MUCH MORE EFFECTIVE#ON ENEMY PROJECTILES#(EVEN MORE EFFECTIVE WITH EUPHORIA)##SLOW MOTION COMPLETLY STOPS#YOUR PROJECTILES"
	ultra_tips[35] = "so fast"
	
	if altOverride || (instance_exists(Player) && Player.race == 9 && Player.altUltra)
	{
		ultra_name[35] = "SUCOF"
		ultra_text[35] = "EMIT <w>SESREVER<w> EVITCA"//ACTIVE REVERSES PROJECTILES | EMIT SESREVER EVITCA
		ultra_tips[35] = "reverse time"
	}

	ultra_name[36] = "VANISH"
	ultra_text[36] = "WHEN IN <w>SLOW MOTION<w>#YOU <w>VANISH<w> AND DROP A <p>DECOY<p>#WHEN <w>VANISHED<w> ENEMIES WON'T TARGET YOU##THE <p>DECOY<p> <aq>DEFLECTS<aq> ALL <r>ENEMY<r> PROJECTILES!"
	ultra_tips[36] = "stealthy"

	    //REBEL 
	    ultra_name[37] = "PERSONAL GUARD"
	    ultra_text[37] = "START LEVEL WITH 2 ALLIES#ALLIES HAVE MORE <r>HEALTH<r>"
	    ultra_tips[37] = "increased health also#increases allies lifespan"
    
	    ultra_name[38] = "RIOT"
	    ultra_text[38] = "SPAWN TWO ALLIES INSTEAD OF ONE"
	    ultra_tips[38] = "more is better"
    
	    ultra_name[39] = "EVERYONE IS CONNECTED"
	    //ultra_text[39] = "ALLIES CAST <g>LASERS<g> TOWARDS EACH OTHER#THE MORE ALLIES YOU HAVE#THE HIGHER YOUR <w>DROP RATE<w> IS#ALIES DROP MORE <y>RES<y><g>OUR<g><r>CES<r>#WHEN THEY DIE"
		ultra_text[39] = "ALLIES CAST <g>LASERS<g> TOWARDS EACH OTHER"
	    ultra_tips[39] = "hurt stone"
		
		if altOverride || (instance_exists(Player) &&  Player.race == 10 && (Player.altUltra))
		{
			ultra_name[39] = "BIG REBEL"
		    ultra_text[39] = "+61 MAX <r>HP<r>!#YOU CAN'T <r>HEAL<r>#EVERY LOOP RESET HP TO FULL#ALLIES COST <y>AMMO<y>##RESISTANT TO <g>VENOM<g> DAMAGE"
		    ultra_tips[39] = "she is a maniac!"
		}
		
	    ultra_name[40] = "DEFENSE"
	    ultra_text[40] = "PORTALS <r>HEAL<r> ALL YOUR <r>HEALTH<r>#TAKING DAMAGE SPAWNS <w>BULLETS<w>#<aq>PREVENT<aq> <r>DEATH<r> BY SACRIFICING TWO ALLIES"
	    ultra_tips[40] = "this was rebel's old passive"
    

	//HUNTER 
	ultra_name[41] = "SAFE DISTANCE"
	ultra_text[41] = "THE <w>FURTHER AWAY<w> YOU ARE FROM AN ENEMY#THE MORE <w>DAMAGE<w> YOU DO TO IT#ENEMIES FAR AWAY ACT SLOWER"
	ultra_tips[41] = "even if the indicator is not bright#you get a damage boost"

	ultra_name[42] = "NEVER MISS"
	ultra_text[42] = "YOUR PROJECTILES <w>HOME<w> IN ON ENEMIES##<w>ALL<w> PROJECTILES#<w>HOME<w> IN ON YOUR <w>MARKER<w>"
	ultra_tips[42] = choose("eagle eyes improves#the homing strength","homing also works on lasers#and hyper slugger/launcher")

	ultra_name[43] = "SCAN LINE"
	ultra_text[43] = "ALL YOUR WEAPONS ARE <w>HITSCAN<w>#+80% <w>ACCURACY<w>#(100% ACCURACY WITH EAGLE EYES)"
	ultra_tips[43] = "scanned"
	
	//Eagle eyes and energy brain results in laser eye duh
	if altOverride || (instance_exists(Player) &&  Player.race == 11 && (Player.altUltra))
	{
		ultra_name[43] = "SNIPER EYE"
		ultra_text[43] = "REPLACE YOUR ACTIVE WITH A <w>SNIPER EYE<w>#THE EYE STUNS AND BREAKS <w>WALLS<w>#DAMAGE INCREASES EACH PIERCE#POWER SLOWLY SCALES#POWER SCALES FASTER#IF YOU HAVE THRONE BUTT##<w>FULLY CHARGED<w> EYE#<w>DESTROYS<w> ENEMY PROJECTILES"
		ultra_tips[43] = "proper eyesight"
	}
	
	ultra_name[44] = "CRACK SHOT"
	ultra_text[44] = "PLACE <w>MULTIPLE MARKERS<w>#FIRE AT ALL MARKERS#WITH REDUCED <w>RELOAD TIME<w>#INCREASE <w>RETARGETING RANGE<w>"
	ultra_tips[44] = "gunslinger"

	    //YUNG CUZ 
	    ultra_name[45] = "GIT YER BAK"
	    ultra_text[45] = "SHOTS FIRED BY DUPES#DON'T COST <y>AMMO<y>/<g>RADS<g>"//-2max hp??
	    ultra_tips[45] = "like one"
    
	    ultra_name[46] = "MLG SQUAD"
	    ultra_text[46] = "CREATE MAX 4 DUPES#DUPES DON'T DECREASE#YOUR MAX <r>HP<r>"
	    ultra_tips[46] = "teamwork"
		
	    ultra_name[47] = "SPAM"
	    ultra_text[47] = "DUPES COST 2 <r>HP<r>#INSTEAD OF MAX <r>HP#ALL DUPLICATES TAKE <w>25%<w> LESS <w>RELOAD TIME<w>"
	    ultra_tips[47] = "annoying"
		
		//Pluto and no rhino skin?
		if altOverride || (instance_exists(Player) &&  Player.race == 12 && (Player.altUltra))
		{
			ultra_name[47] = "GREEN TEAM"
		    ultra_text[47] = "SPAWNING DUPES COSTS <g>RADS<g>#INSTEAD OF MAX <r>HP<r>"
		    ultra_tips[47] = "pay up"
		}
    
	    ultra_name[48] = "LAG"
	    ultra_text[48] = "FIRST TWO HITS#YOU TAKE IN A LEVEL WILL BE <aq>NEGLECTED<aq>"
	    ultra_tips[48] = "dead not dead"
    
	//SHEEP 
	ultra_name[49] = "HYPER CHARGE"
	ultra_text[49] = "CHANGE CHARGE TO A POWERFUL <pi>HYPERDASH<pi>#THAT COSTS <g>RADS<g> TO USE#EXTRA FEET INCREASES RANGE#GAMMA GUTS INCREASES DAMAGE#THRONE BUTT INCREASES BOTH"
	ultra_tips[49] = "the fluffy blur"

	ultra_name[50] = "JUST A SHEEP"
	ultra_text[50] = "ENEMIES DON'T ATTACK UNTIL#MULTIPLE ENEMIES HAVE DIED"
	ultra_tips[50] = "they're stoopid"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 13 && (Player.altUltra))
	{
		ultra_name[50] = "CODENAME S.A.S. : SECRET AGENT SHEEP"
		ultra_text[50] = "ENEMIES THAT DON'T KNOW YOU'RE THERE#TAKE 10X DAMAGE##EACH AREA#TAKE ON THE APPEARANCE#OF ANY <w>CHARACTER<w>#ENABLING YOU TO USE THEIR <w>ACTIVE<w>#(NOT THEIR PASSIVE)##<pi>SECRET GATEWAYS<pi> APPEAR#IN THE <g>CROWN VAULT<g>#CONNECTING SEVERAL AREAS"
		ultra_tips[50] = "S.A.S."
	}
	
	ultra_name[51] = "IMPENETRABLE"
	ultra_text[51] = "BETTER <pi>CHARGE<pi>!#CHARGING <pi>DEFLECTS<pi> ENEMY PROJECTILES"
	ultra_tips[51] = "what a beast"
	
	/* 
	ultra_name[51] = "INDESTRUCTABLE"
	ultra_text[51] = "IMMUNE WHILE CHARGING#CHARGE DEALS NO DAMAGE#CHARGE DOES NOT DISSIPATE"
	ultra_tips[51] = "what a beast"
	*/
	//NO EXTRA FEET NO GAMMA GUTS
	if altOverride || (instance_exists(Player) &&  Player.race == 13 && (Player.altUltra))
	{
		ultra_name[51] = "HYPNOTIZE"
		ultra_text[51] = "ENEMIES REACT AND MOVE SLOWER##ACTIVE CHANGES INTO <pi>HYPNOSIS<pi>#<pi>HYPNOSIS<pi> RE-ACTIVATES YOUR <w>PASSIVE<w>#CAN BE USED 3 TIMES EACH AREA#THRONE BUTT INCREASES USES TO 5##WHEN OUT OF <pi>HYPNOSIS<pi>#RE-ENABLE <pi>CHARGE<pi>"
		ultra_tips[51] = "no one expects a sheep to carry a gun"
	}

	ultra_name[52] = "FLUFFY"//this is actually insane with impact wrists
	ultra_text[52] = "<w>CORPSES<w> FLOAT#CORPSE COLLISION#CAN CAUSE <r>BLOOD<r> EXPLOSIONS#EVERYTHING THAT DIES#TURNS INTO A <pi>SHEEP<pi>"
	ultra_tips[52] = "cannibalism"//morph gun creates two sheep cause logic (no balance)

	    //PANDA 
	    ultra_name[53] = "TURNING BADASS"
	    ultra_text[53] = "THROWS <w>PIERCE<w> AND <pi>DEFLECT<pi> PROJECTILES#WHEN A WEAPON RETURNS#IT FIRES A MASSIVE <g>LASER<g>##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[53] = "we've got a badass over here"
    
	    ultra_name[54] = "FUCK IT"//DELIBERATE REINCARNATION"
	    ultra_text[54] = "THROWN WEAPONS <w>EXPLODE<w> ON HIT##WHENEVER YOU THROW YOUR WEAPON#IT TRANSFORMS INTO A#<pi>RANDOM<pi> WEAPON OF THE SAME TIER##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[54] = "FUCK IT!"
    
	    ultra_name[55] = "EXTINCTION EVENT"
	    //ultra_text[55] = "YOUR <w>HITBOX<w> IS EVEN SMALLER##ANY <w>WEAPON<w> COMING THROUGH A <p>PORTAL<p>#BECOMES A <w>DRONE<w> THAT FOLLOWS YOU AROUND#AND SHOOTS ENEMIES##CHANCE <p>PORTALS<p> CHANGE#WEAPONS INTO A HIGHER TIER WEAPON##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_text[55] = "WHEN AN <r>ENEMY<r> <w>TYPE<w> GOES <r>EXTINCT<r>#<w>DEAL DAMAGE<w> TO <w>ALL ENEMIES<w>#(BASED ON THEIR REMAINING HEALTH)##THROWS BOUNCE TOWARDS ENEMIES"
		ultra_tips[55] = "rise above"
		
		//Flexible elbows and or long arms
		if altOverride || (instance_exists(Player) &&  Player.race == 14 && (Player.altUltra))
		{
			ultra_name[55] = "INCONSISTENT INCOMPATABILITY"
		    ultra_text[55] = "YOUR <w>HITBOX<w> IS EVEN SMALLER##ALL WEAPONS ARE <w>FULLY AUTOMATIC<w>#YOU NO LONGER THROW WEAPONS#INSTEAD YOUR ACTIVE FIRES YOUR WEAPON#FROM THE ORIGIN OF YOUR <w>CROSSHAIR<w>";
		    ultra_tips[55] = "how does it do that"
		}
		
	    ultra_name[56] = "CLEANSING"
	    ultra_text[56] = "MORE <w>MELEE<w> SWING RATE#<p>PORTALS<p> <w>RE-ROLL<w> WEAPONS INTO#<w>MELEE WEAPONS<w>##THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[56] = "clean your hands from those filthy guns instead use knives"
    
	//ATOM 
	ultra_name[57] = "NEUTRON"
	ultra_text[57] = "BIGGER <w>EXPLOSIONS<w>#<w>EXPLOSIONS<w> DEAL MORE DAMAGE#AGAINST ENEMIES#<w>EXPLOSIVE<w> WEAPONS COST 20% LESS <y>AMMO<y>"
	ultra_tips[57] = "NUCLEAR BOMB!"

	ultra_name[58] = "PROTON"
	ultra_text[58] = "YOU DEAL MORE <w>CONTACT DAMAGE<w>#DEAL DAMAGE TO ENEMIES NEAR YOU"
	ultra_tips[58] = "always positive"
	
	ultra_name[59] = "ELECTRON"
	ultra_text[59] = "ALL WEAPONS USE <g>ENERGY<g> AMMO#<g>ENERGY<g> WEAPONS COST 20% LESS AMMO#AMMO DROPS PRIOTIZE ENERGY#<b>LIGHTNING<b> DOES MORE DAMAGE#AND TRAVELS FURTHER"
	ultra_tips[59] = "that is electrifying!"
	
	//NO ENERGY BRAIN & CROWN OF HASTE/APOCALYPSE
	if altOverride || (instance_exists(Player) &&  Player.race == 15 && (Player.altUltra))
	{
		ultra_name[59] = "PATH OF DESTRUCTION"
		ultra_text[59] = "EVERYWHERE YOU GO#YOU LEAVE BEHIND A TRAIL OF#DAMAGING <g>GOOP<g>##<w>PICKUPS<w> FADE FASTER#FADED PICKUPS <pi>REROLL<pi> INTO OTHER <w>PICKUPS<w>#PICKUPS CAN FADE/REROLL TWICE"
		ultra_tips[59] = "breaking apart reality"
	}
	
	ultra_name[60] = "ANTI MATTER"
	ultra_text[60] = "<w>TELEPORT<w> INTO <w>WALLS<w>#<w>NEW<w> AND <w>FADED PICKUPS<w>#<w>TRANSFROM<w> INTO:#(FRIENDLY) <g>ULTRA LIGHTNING<g> AND <g>RADS<g>"
	ultra_tips[60] = "phase"

	    //VIKING 
	    ultra_name[61] = "MEGA SERPENT ARMOUR STRIKE"
	    ultra_text[61] = "<w>TRIPLE SERPENT<w> <gb>ARMOUR<gb> <w>STRIKE<w>#GAIN 1 <gb>ARMOUR<gb> WHEN YOU KILL A BOSS##WHENEVER YOU <gb>ARMOUR<gb> <w>STRIKE<w>:#GAIN SOME <y>AMMO<y> AND <r>HEAL<r> <w>1<w>"
	    ultra_tips[61] = "break down the walls!"
		
		if altOverride || (instance_exists(Player) &&  Player.race == 16 && (Player.altUltra))
		{
			ultra_name[61] = "CAPTAIN OF THE KRAKEN"
			ultra_text[61] = "<p>KRAKEN<p> WEAPONS DEAL MORE DAMAGE#<p>TENTACLES<p> ARE LONGER#<p>KRAKEN<p> WEAPONS COST 25% LESS <y>AMMO<y>##<p>TENTACLE<p> <gb>ARMOUR<gb> <w>STRIKE<w>#WHENEVER YOU LOSE <gb>ARMOUR<gb>#SPAWN A <pi>TINY<pi> <p>KRAKEN<p>"//TENTACLES DESTROY ALL ENEMY PROJECTILES <-- nope
			ultra_tips[61] = "from the sea she came"
		}
		
	 
		ultra_name[62] = "ARMOUR UP"
		ultra_text[62] = "GAIN ONE EXTRA <gb>ARMOUR<gb> EACH AREA#INCREASE <gb>ARMOUR<gb> MAX BY TWO"
		ultra_tips[62] = "tank up"
	
		//IF no health mutations
		if altOverride || (instance_exists(Player) && Player.race == 16 && (Player.altUltra))
		{
			ultra_name[62] = "LIVING ARMOUR"
			//ultra_text[62] = "REPLACE 50% OF YOUR <r>HEALTH<r> WITH <gb>MAX ARMOUR<gb>##<r>HEALTH<r> DROPS BECOME <gb>ARMOUR<gb> DROPS##(SECOND STOMACH DOUBLES ARMOUR#FROM ARMOUR DROPS)#(HEALING MUTATIONS DO NOT#REGENERATE ARMOUR)"
			ultra_text[62] = "REPLACE ALL OF YOUR <r>HEALTH<r> WITH <gb>MAX ARMOUR<gb>##<r>HEALTH<r> DROPS BECOME <gb>ARMOUR<gb> DROPS#<gb>ARMOUR<gb> DROPS HAVE A LOW CHANCE TO APPEAR##(HEALING MUTATIONS DO NOT#REGENERATE ARMOUR)"
			ultra_tips[62] = "iron woman"
		}
		
	    ultra_name[63] = "COLD HEART"
	    ultra_text[63] = "<gb>ARMOUR<gb> <w>STRIKE<w> USES 2<r>HP<r>#INSTEAD OF <gb>ARMOUR<gb>##<gb>ARMOUR<gb> STRIKE <aq>FREEZES<aq> ENEMIES##WHILE YOU HAVE <gb>ARMOUR<gb>#PRIMARY <w>RELOAD SPEED<w> +20%"//"ARMOUR STRIKE FREEZES ENEMIES#AND DEALS MORE DAMAGE#WHEN YOU HAVE NO MORE ARMOUR#YOU CAN USE 2HP TO USE AN ARMOUR STRIKE"
	    ultra_tips[63] = "hearth strike"
    
	    ultra_name[64] = "BLANK ARMOUR"
	    ultra_text[64] = "WHENEVER YOU LOSE <gb>ARMOUR<gb>#TRIGGER <w>SERPENT<w> <gb>ARMOUR<gb> <w>STRIKE<w>#<w>CLEAR<w> ALL PROJECTILES#AND DEAL A MASSIVE AMOUNT OF DAMAGE#TO ALL ENEMIES ON SCREEN"
	    ultra_tips[64] = "come at me bro"
    
	//WEAPON SMITH WEAPONSMITH
	ultra_name[65] = "WEAPON MODDER"
	//ultra_text[65] = "IN EVERY AREA#A WEAPON MOD SPAWNS#INCREASE HOW OFTEN MODS TRIGGER#COMBINING A WEAPON ADDS A MOD TO IT"
	ultra_text[65] = "IN EVERY AREA#A <w>WEAPON MOD<w> SPAWNS#DOUBLE <w>WEAPON MOD<w> EFFECTIVENESS#COMBINING A WEAPON ADDS A <w>MOD<w> TO IT"
	if instance_exists(Player) && (Player.race != 17)
		ultra_text[65] = "IN EVERY AREA#A <w>WEAPON MOD<w> SPAWNS#DOUBLE <w>WEAPON MOD<w> EFFECTIVENESS"
	ultra_tips[65] = "modder"

	ultra_name[66] = "ARMOUR SMITH"
	ultra_text[66] = "WHEN <w>UPGRADING<w> A WEAPON#YOU ALSO GAIN TWO <gb>ARMOUR<gb>#<gb>ARMOUR<gb> MAX <w>+3<w>"
	ultra_tips[66] = "craft changer"
	
	//EMPY HAND
	if altOverride || (instance_exists(Player) &&  Player.race == 17 && (Player.altUltra))
	{
		ultra_name[66] = "QUICK SWAPPER"
		ultra_text[66] = "INCREASE WEAPON PICKUP RANGE##YOU DROP WEAPONS AT YOUR FEET##DROPPING A WEAPON#MAKES YOU <aq>IMMUNE<aq> FOR A SHORT DURATION#AND RELOADS BOTH YOUR WEAPONS#FIRST SHOT FIRED WHEN PICKING UP A WEAPON#COSTS 50% LESS AMMO##<p>PORTALS<p> SPIT OUT A NEW <pi>RANDOM<pi> WEAPON#UPON ENTERING AN AREA"
		ultra_tips[66] = "slide swapping!"
	}

	ultra_name[67] = "ONE WITH THE GUN"
	ultra_text[67] = "INCREASED <w>RELOAD SPEED<w> AND#REDUCED <y>AMMO<y> COST#FOR ALL WEAPONS EXCLUDING MELEE#DECREASED MELEE SWING RATE"
	ultra_tips[67] = "new meta"

	ultra_name[68] = "SCRAP FINDER"
	ultra_text[68] = "ALL WEAPON DROPS GIVE YOU <r>HEALTH<r>, <g>RADS<g>#AND MORE <y>AMMO<y> FOR ALL TYPES#PICKING UP A WEAPON#SPAWNS <b>LIGHTNING<b>"
	ultra_tips[68] = "recourseful"
	if altOverride || (instance_exists(Player) && Player.race == 17 && Player.altUltra)
	{
		ultra_name[68] = "ENGINUITY"
		ultra_text[68] = "YOUR ACTIVE BECOMES:#CHANGE YOUR WEAPON#INTO ONE OF THE SAME TIER#YOU CAN GO THROUGH#ALL AVAILABLE WEAPONS##WHENEVER YOU <w>CHANGE<w> OR <w>SWAP<w> WEAPONS#SPAWN <pi>MORPH<pi> ON YOUR <w>CROSSHAIR<w>#<p>THRONEBUTT<p> INCREASES MORPH AMOUNT"
		ultra_tips[68] = "moldable weapons"
	}
	

	    //ANGEL 
	    ultra_name[69] = "PROTECTOR"
	    ultra_text[69] = "MOVING CAN SOMETIMES#<pi>DEFLECT<pi> PROJECTILES"
	    ultra_tips[69] = "guardian"
    
	    ultra_name[70] = "DESCENT"
	    ultra_text[70] = "AS <y>AMMO<y> LOWERS#INCREASE <w>RELOAD SPEED<w>#(ONLY WORKS ON WEAPONS THAT HAVE AN AMMO TYPE)#WHEN YOU RUN OUT OF <y>AMMO<y>#<r>HEAL<r> <w>2<w> <r>HP<r>##YOU CAN FIRE ANY WEAPON#AS LONG AS YOU HAVE MORE THAN 0 AMMO"
	    ultra_tips[70] = "darkness"
    
	    ultra_name[71] = "TRANQUILITY"
		/*
			ultra_text[71] = "WHEN AT OR ABOVE FULL HEALTH#YOU DEAL 50% MORE DAMAGE"
			WHENEVER YOU ARE IMMUNE YOU FIRE PROJECTILES AT ENEMIES
		*/
		ultra_text[71] = "WHENEVER YOU ARE <aq>IMMUNE<aq>#YOU FIRE PROJECTILES#AT ENEMIES"
	    ultra_tips[71] = "no one can hurt me"
    
	    ultra_name[72] = "ASCENT"
	    ultra_text[72] = "YOU CAN FLY OVER <w>WALLS<w> FOREVER#BIGGER <pi>DEFLECT<pi> AREA##PICKING UP <p>CURSED<p> WEAPONS#<w>UNCURSES<w> THEM#MORE <p>CURSED<p> WEAPONS"
	    ultra_tips[72] = "all you need is air"
		
		//Have less than default max hp
		if altOverride || (instance_exists(Player) &&  Player.race == 18 && Player.altUltra)
		{
			ultra_name[72] = "MIRROR"
		    ultra_text[72] = "SLIGHTLY LONGER <pi>DEFLECT<pi>#ALSO <pi>DEFLECT<pi> ON YOUR CROSSHAIR"
		    ultra_tips[72] = "right back at ya"
		}
		
    
	//SKELETON 
	ultra_name[73] = "REDEMPTION"
	ultra_text[73] = "REROLL ALL YOUR <g>MUTATIONS<g>#GET PATIENCE AS AN EXTRA#CHOICE EVERY TIME.#WHEN YOU <w>LOOP<w> YOU#CAN GET AN <g>ULTRA<g> AGAIN##NORMAL MOVEMENT <w>SPEED<w>#NORMAL <w>ACCURACY<w>"
	ultra_tips[73] = "specific taste in mutations"
	
	ultra_name[74] = "DAMNATION"
	//ultra_text[74] = "FIRING A WEAPON WITH BLOOD GAMBLE#WILL REDUCE ITS RELOAD TIME BY 80%##USING BLOOD GAMBLE WHILE RELOADING#CAN FORCE YOUR WEAPON TO FIRE#AT THE COST OF 1HP"
	ultra_text[74] = "FAILED <r>BLOOD<r> GAMBLES WILL COST#5 TIMES <y>AMMO<y>#INSTEAD OF <r>HEALTH<r>#IF YOUR <y>AMMO<y> IS <r>NEGATIVE<r>#IT WILL COST <r>HEALTH<r> AGAIN##<r>BLOOD<r> GAMBLE CAN BE USED#WHILE RELOADING"
	ultra_tips[74] = "damn son!"
	
	if altOverride || (instance_exists(Player) && Player.race == 19 && Player.altUltra)
	{
		ultra_name[74] = "REMINISCE"
		ultra_text[74] = "REPLACE YOUR ACTIVE WITH <r>BLOOD SPLATTER<r>#YOU SPAWN <r>BLOOD<r> TOWARDS NEARBY CORPSES##THRONEBUTT INCREASES AMOUNT OF <r>BLOOD<r>##<r>BLOOD<r> CAN DESTROY#ALL TYPES OF PROJECTILES#<r>BLOOD<r> CAN GO THROUGH <w>WALLS<w>"
		ultra_tips[74] = "i used to have skin and warm blood"
	}
	
	/*
	ultra_name[75] = "THE BIG GAMBLE"
	ultra_text[75] = "GET A RANDOM ULTRA MUTATION#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(SUCH AS PLANT'S SNARE RELATED ULTRAS)"
	ultra_tips[75] = "hybrid character"
	*/
	ultra_name[75] = "HARDENED BONE"
	ultra_text[75] = "<aq>IMMUNE<aq> WHILE <w>STATIONARY<w>##SUCCESSFUL <r>BLOOD<r> GAMBLE#MAKES YOU <aq>IMMUNE<aq> FOR A SHORT DURATION##FAILED <r>BLOOD<r> GAMBLE#CREATES <r>BLOOD<r> EXPLOSIONS"
	ultra_tips[75] = "hybrid character"

	ultra_name[76] = "UNSTOPPABLE"
	ultra_text[76] = "GAIN TWO <w>LIVES<w>"
	ultra_tips[76] = "never dead"
	
	if altOverride || (instance_exists(Player) &&  Player.race == 19 && Player.ultimategamble==true)
	{
	    ultra_name[76] = "THE ULTIMATE GAMBLE"
	    ultra_text[76] = "<w>50% CHANCE<w> TO <r>DIE<r> OR TO GET#<w>TWO RANDOM<w> <g>ULTRA MUTATIONS<g>#FROM <w>ANOTHER CHARACTER<w>#DOESN'T INCLUDE THINGS YOU CAN'T USE#(SUCH AS PLANT'S SNARE RELATED ULTRAS)##<r>YOU CANNOT USE ANY<r> <w>LIVES!<w>"
	    ultra_tips[76] = "that went well!"
	}

	    //BUSINESSHOG 
	    ultra_name[77] = "PROSPERITY"
	    ultra_text[77] = "ENEMIES DROP MORE <g>RADS<g>#BOSSES DROP <g>ULTRA<g> CHESTS#INSTEAD OF <y>GOLD<y> CHESTS"
	    ultra_tips[77] = "money everywhere"
		
		//Have heavy heart
		if altOverride || (instance_exists(Player) &&  Player.race == 20 && Player.race == 20 && Player.altUltra)
		{
			ultra_name[77] = "HOARDING THIEF"
		    ultra_text[77] = "GO TO YV'S CRIB#YOUR SHOP BECOMES A <w>WEAPON WHEEL<w>#SELECT A SLOT TO STORE#YOUR PRIMARY WEAPON#WEAPONS CAN BE TAKEN OUT AT ANY TIME#THRONE BUTT DOUBLES INVENTORY SIZE##AT THE START OF EACH LOOP#<r>OVERHEAL<r> BASED ON TOTAL#WEAPON TIER#IN YOUR INVENTORY"
		    ultra_tips[77] = "tax evasion"
		}
		
	    ultra_name[78] = "QUANTITY"
	    ultra_text[78] = "MORE <w>SHOP<w> ITEMS"
	    ultra_tips[78] = "options"
    
	    ultra_name[79] = "INVESTMENT"
		if GetPlayerLoops() > 1
		{
			ultra_text[79] = "GAIN <w>NOTHING<w> NOW#IF YOU REACH THE NEXT <w>LOOP<w>:##GAIN ONE EXTRA MUTATION#AND <w>STEAL<w> A RANDOM <g>ULTRAS<g>#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(SUCH AS PLANT'S SNARE RELATED ULTRAS)"
		}
		else
		{
			ultra_text[79] =  "GAIN <w>NOTHING<w> NOW#IF YOU REACH <w>LOOP 2<w>:##GAIN ONE EXTRA MUTATION#AND <w>STEAL<w> A RANDOM <g>ULTRAS<g>#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(SUCH AS PLANT'S SNARE RELATED ULTRAS)"
		}
	    ultra_tips[79] = "are you that good?"
    
	    ultra_name[80] = "GOLD DIGGER"
	    ultra_text[80] = "SIGNIFICANTLY INCREASE#<y>GOLDEN<y> WEAPON <w>RELOAD SPEED<w>#REDUCE <y>GOLDEN<y> WEAPON COST BY 20%"
	    ultra_tips[80] = "she take my money!#when I'm in need!"
    
    
	//HORROR 
	ultra_name[81] = "STALKER"
	ultra_text[81] = "ENEMIES EXPLODE INTO <g>RAD<g> BULLETS#DEPENDING ON#THE AMOUNT OF <g>RADS<g> THEY DROP#ALSO WORKS ON OTHER RAD DROPS"
	ultra_tips[81] = "stalking and walking"

	ultra_name[82] = "ANOMALY"
	ultra_text[82] = "<p>PORTALS<p> APPEAR EARLIER"
	ultra_tips[82] = "the anomaly meta"

	ultra_name[83] = "MELTDOWN"
	ultra_text[83] = "INCREASE <g>RADIATION<g> VALUE BY 20%#REDUCE <g>BEAM<g> COST BY 10%#<g>ULTRA WEAPONS<g> COST 40% LESS <g>RADS<g>"
	ultra_tips[83] = "freezeup"

	ultra_name[84] = "POWER"
	ultra_text[84] = "HOMING <g>BEAM<g>#<g>BEAM<g> GOES THROUGH <w>WALLS<w>#<g>BEAM<g> DESTROYS PROJECTILES BETTER"
	ultra_tips[84] = "thats a good beam"
	if altOverride || (instance_exists(Player) && Player.race == 21 && Player.altUltra)
	{
		ultra_name[84] = "MORPHING CAT"
		//ultra_text[84] = "YOU CAN PHASE THROUGH WALLS WHILE USING BEAM#BEAM MORPHS#USING BEAM SPAWNS MORPH BULLETS AND LASERS AROUND YOU#WHEN OUT OF <g>RADS<g> BEAM USES <g>ENERGY<g> <y>AMMO<y>"
		ultra_text[84] = "SET YOUR <r>HEALTH<r> TO <w>9<w>##EACH AREA CHOOSE A <g>MUTATION<g> TO <pi>REROLL<pi>#GAIN ANOTHER <g>MUTATION<g> <w>CHOICE<w>##<w>KILLS<w> SPAWN <pi>MORPPH<pi>"
		ultra_tips[84] = "cute kitty with big guns"
	}

	// ULTRA E IS ULTRA 0


	    //ROGUE 
	    ultra_name[85] = "SUPER PORTAL STRIKE"
	    ultra_text[85] = "DOUBLE <b>PORTAL STRIKE<b> AMMO MAX#ENEMIES CAN DROP <b>PORTAL STRIKE<b> AMMO#USING <b>PORTAL STRIKE<b> <r>HEALS<r> YOU#(DOUBLED BY SECOND STOMACH)#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[85] = "money everywhere"
    
	    ultra_name[86] = "SUPER BLAST ARMOUR"
	    ultra_text[86] = "STRONGER <b>BLAST ARMOUR<b>#<b>BLAST ARMOUR<b> BECOMES STRONGER#THE MORE IT TRIGGERS IN EACH AREA#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[86] = "options"
    
	    ultra_name[87] = "NEW CAPTAIN"
	    ultra_text[87] = "AT THE START OF AN AREA#SUMMON A GROUP OF <b>IDPD<b>#THAT FIGHT FOR YOU#REPEAT EACH TIME#YOU PICK UP <b>PORTAL STRIKE<b> AMMO#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
		if instance_exists(Player) && (Player.race != 22)
			ultra_text[87] = "AT THE START OF AN AREA#SUMMON A GROUP OF <b>IDPD<b>#THAT FIGHT FOR YOU";
	    ultra_tips[87] = "rogue leader"
		
		if altOverride || (instance_exists(Player) && Player.race == 22 && Player.altUltra)
		{
			ultra_name[87] = "IMMORTAL POLICE"
		    ultra_text[87] = "REPLACE PORTAL STRIKE WITH <g>REVIVE<g>#<g>REVIVE<g> USES <b>PORTAL STRIKE<b> AMMO#LOWER MAXIMUM <b>PORTAL STRIKE<b> AMMO BY 1#THRONE BUTT <g>REVIVES<g> YOU AT HALF <r>HP<r>#INSTEAD OF 1<r>HP<r>#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
		    ultra_tips[87] = "rogue freak"
		}
    
	    ultra_name[88] = "ULTRA POPO"
	    ultra_text[88] = "<g>ULTRA<g> WEAPONS COST <w>30%<w> LESS <g>RADS<g>#<b>PORTAL STRIKE<b> COSTS <g>RADS<g> INSTEAD#REPLACE <b>PORTAL STRIKE<b> AMMO CHESTS#WITH <g>RAD<g> CANNISTERS#<b>BLAST ARMOUR<b> PRODUCES <g>RADS<g>#<g>RADS<g> SPAWN <g>ULTRA LIGHTNING<g>"
	    ultra_tips[88] = "I can do that better"
    
    
	//FROG 
	ultra_name[89] = "DISTANCE"
	ultra_text[89] = "<g>RADS<g> EMIT <g>TOXIC GAS<g>"
	ultra_tips[89] = "can't run from my gas"

	ultra_name[90] = "INTIMACY"
	ultra_text[90] = "CONTINUOUSLY EMIT <g>GAS<g>#EMIT <g>GAS<g> QUICKER USING YOUR ACTIVE"
	ultra_tips[90] = "come closer"

	ultra_name[91] = "MOMMA"
	ultra_text[91] = "<w>ACTIVE<w> CREATES FRIENDLY <g>BALLGUYS<g>"
	ultra_tips[91] = "I am the mother now"
	
	ultra_name[92] = "POTENCY"
	ultra_text[92] = "NORMAL <w>CONTROLS<w>##WHILE IN COMBAT#SLOWLY CONSUME <g>GAS<g> TO <r>HEAL<r>#CAN <r>OVERHEAL<r> UP TO <w>2<w> ABOVE <r>MAX HP<r>"
	ultra_tips[92] = "you can gas while moving"

		if altOverride || (instance_exists(Player) && Player.race == 23 && Player.altUltra) {
			ultra_name[92] = "SPIKE BALL"
			ultra_text[92] = "NORMAL <w>CONTROLS<w>#EMIT <w>SPLINTERS<w> INSTEAD OF <g>GAS<g>#ALL <w>SPLINTERS<w> ARE <g>GASEOUS<g>"
			ultra_tips[92] = "porkupain"
		}

	    //Elementor 
	    ultra_name[93] = "EARTHBENDER"
	    ultra_text[93] = "YOU AND YOUR PROJECTILES#PHASE THROUGH YOUR <w>WALLS<w>#BIGGER <w>TERRAFORM<w>"
	    ultra_tips[93] = "get to cover!"
		
		//used patience
		if altOverride || (instance_exists(Player) && Player.race == 24 && Player.altUltra)
		{
			ultra_name[93] = "AIR LORD"
		    ultra_text[93] = "YOUR ACTIVE CHANGES INTO#<w>WIND<w> PUSH#<w>WIND<w> PUSHES PROJECTILES AND ENEMIES#ENEMIES HITTING A <w>WALL<w> TAKE MORE DAMAGE#THRONE BUTT MAKES THE WIND STRONGER"
		    ultra_tips[93] = "blow"
		}
    
	    ultra_name[94] = "ICE COLD"
	    ultra_text[94] = "<aq>COOL<aq> EVERYTHING NEAR YOU#<aq>ICE COLD<aq> <w>WALLS<w>"
	    ultra_tips[94] = "cool down"
    
	    ultra_name[95] = "BURNING HOT"
	    ultra_text[95] = "<r>FIRE<r> TRAIL ON ALL YOUR PROJECTILES#MORE <r>FLAME<r> DAMAGE#<r>FIRE<r> HOMES"
	    ultra_tips[95] = "spicy"
		
	    ultra_name[96] = "TSUNAMI"
	    ultra_text[96] = "<b>LIGHTNING<b> AND <p>KRAKEN<p> ARE <b>MI<b><pi>X<pi><p>ED<p>#OCCASIONALLY PRODUCE <b>LIGHTNING<b>/<p>KRAKEN<p>##WHEN USING <b>LIGHTNING<b> WEAPONS:#GAIN <w>EXPLOSIVE<w> <y>AMMO<y>##WHEN USING <p>KRAKEN<p> WEAPONS:#GAIN <g>ENERGY<g> <y>AMMO<y>"
	    ultra_tips[96] = "you gain explosive ammo#when using a lightning weapon#you gain energy ammo#when using a kraken weapon"
    

	//MUTATION SMITH 
	ultra_name[97] = "SURGEON"
	ultra_text[97] = "EVEN BETTER <w>WEAPON<w>#<w>SPECIFIC<w> <g>MUTATIONS<g>"
	ultra_tips[97] = "delicacy"
	
	//No weapon specific mutations (except for bolt marrow)
	if altOverride || (instance_exists(Player) &&  Player.race == 25 && Player.altUltra)
	{
		ultra_name[97] = "BEEKEEPER"
		ultra_text[97] = "<g>RADIATION<g> SPAWNS <w>SWARM BOLTS<w>#ENEMIES HOLD 25% MORE <g>RADS<g>"
		ultra_tips[97] = "retired to a farm"
	}
    
	ultra_name[98] = "PLAGUE DOCTOR"
	ultra_text[98] = "YOUR ACTIVE CHANGES INTO#<p>INFEST<p> ENEMIES USING <g>RADS<g>"
	ultra_tips[98] = "I am here to heal you"
    
	ultra_name[99] = "NECROMANCER"
	ultra_text[99] = "YOUR ACTIVE CHANGES INTO#<g>REVIVE<g> CORPSES INTO ALLY <g>FREAKS<g>"
	ultra_tips[99] = "doctor necromancer"
    
	ultra_name[100] = "SEDATIVES"
	ultra_text[100] = "YOUR PROJECTILES PUT ENEMIES TO <aq>SLEEP<aq>#FOR A SHORT MOMENT"
	ultra_tips[100] = "sleeping enemies don't react#for a moment"


	    //GOOD O'L HUMPHRY 
	    ultra_name[101] = "EXPERIENCED"
	    ultra_text[101] = "GAIN 150% <w>SKILL<w> WHEN YOU DEAL DAMAGE"
	    ultra_tips[101] = "learning quickly"
        
	    ultra_name[102] = "RAPID MUSTACHE GROWTH"
	    ultra_text[102] = "SKILL ALSO INCREASES <w>RELOAD SPEED<w>"
	    ultra_tips[102] = "quickdraw"
        
	    ultra_name[103] = "PROTECTIVE FACIAL HAIR"
	    ultra_text[103] = "WHEN YOU HAVE MORE THEN <w>200 SKILL<w>#AND YOU DIE#YOUR DEATH WILL BE <aq>PREVENTED<aq>#AND YOUR SKILL WILL BE RESET#YOU CAN'T GAIN SKILL#FOR 3 SECONDS AFTER TRIGGERING THIS"
	    ultra_tips[103] = "strong skillet"
        
		ultra_name[104] = "DISCIPLINE"
	    ultra_text[104] = "SLIGHTLY INCREASE ACTIVE COST#ACTIVE CAN <w>SHRINK<w>#ALL ENEMY PROJECTILES#INTO <p>NOTHINGNESS<p>#DOUBLE <w>STUN<w> DURATION"
	    ultra_tips[104] = "discipline those projectiles!"
		
		//Have any director weapon
		if altOverride || (instance_exists(Player) && Player.race == 26 && Player.altUltra)
		{
			ultra_name[104] = "GRUMPY LECTURE"
			//TODO change to unequipped ammo
		    ultra_text[104] = "ACTIVE COSTS <w>UNEQUIPPED<w> <y>AMMO<y>#INSTEAD OF SKILL#ACTIVE <pi>DEFLECTS<pi> & DESTROYS#ALL ENEMY PROJECTILES"
		    ultra_tips[104] = "teach them a lesson!"
		}
		/*
	    ultra_name[104] = "FRUITS OF LABOR"
	    ultra_text[104] = "INCREASED SPRINT SPEED#IMMUNE TO CONTACT DAMAGE#WHILE SPRINTING"
	    ultra_tips[104] = "fast old man"
		*/
		
	//HANDS
	ultra_name[105] = "IRRADIATED"
	ultra_text[105] = "ALL DAMAGE YOU DEAL TO AN ENEMY#IS INCREASED DEPENDING ON#HOW <w>CLOSE<w> YOU ARE TO THE ENEMY#DAMAGE BUFF IS HIGHER IN <w>INVERTED AREAS<w>"
	ultra_tips[105] = "let me touch you"
    
	ultra_name[106] = "NEGATIVE ENVIROMENT"
	ultra_text[106] = "WALLS CONTAIN SWARM BOLTS#<w>INVERTED PORTALS<w>#(OVER) <r>HEAL<r> YOU FOR 3 <r>HP<r>"
	ultra_tips[106] = "I'm a glass half empty kinda hand"
	
	if altOverride || (instance_exists(Player) && Player.race == 27 && Player.altUltra)
	{
		//Secret B skin ultra
		ultra_name[106] = "HOT HANDS!"
		ultra_text[106] = "<r>FIERY<r> HANDS#MORE <r>FIRE<r> DAMAGE#HOMING <r>FIRE<r>#EVEN MORE <r>FIRE<r> DAMAGE#WHILE IN <w>INVERTED AREAS<w>#<w>INVERTED PORTALS<w>#(OVER) <r>HEAL<r> YOU FOR <w>3<w> <r>HP<r>"
		ultra_tips[106] = "cooking hands"
	}
	
	ultra_name[107] = "MANY HANDS"
	ultra_text[107] = "CAN HAVE <w>TWO HANDS<w> OUT AT A TIME#PUNCH PROJECTILES OUT OF EXISTENCE#YOU CAN HAVE <w>THREE HANDS<w> WHILE#IN AN <w>INVERTED AREA<w>"
	ultra_tips[107] = "consecutive normal punches"
	
	if altOverride || (instance_exists(Player) && Player.race == 27 && Player.altUltra)
	{
		//Secret C skin ultra
		ultra_name[107] = "BOOM HANDS!"
		ultra_text[107] = "<w>EXPLOSIVE<w> HANDS#HAND IS SLOWER#NORMAL HAND SPEED IN <w>INVERTED AREAS<w>#<w>INVERTED PORTALS<w>#(OVER) <r>HEAL<r> YOU FOR <w>3<w> <r>HP<r>"
		ultra_tips[107] = "everything you touch just fucking explodes"
	}
    
	ultra_name[108] = "DELICATE HANDS"
	ultra_text[108] = "ALLOWS YOUR HAND TO COLLECT#<r>RADS<r> & <w>PICKUPS<w>##HAND LEAVES A <w>TRAIL<w>#THAT <w>SPEEDS YOU UP<w> AND <w>SLOWS<w> <r>ENEMIES<r>#INCLUDING <w>PROJECTILES<w>##<w>HAND IS FASTER<w>#THE HAND IS EVEN FASTER#WHILE IN AN <w>INVERTED AREA<w>"
	ultra_tips[108] = "i shouldn't be level 10 to pick up ammo"
	
		//THIEF
	    ultra_name[109] = "HIDDEN IN PLAIN SIGHT"
	    ultra_text[109] = "SOME <w>KILLS<w> CAN SPAWN A <p>HIDING FIELD<p>#THAT CAN <p>HIDE<p> YOU#EVEN	WHILE IN <w>LINE OF SIGHT<w> TO <r>ENEMIES<r>##INCREASE <p>STEALTH<p> SWAP <aq>IMMUNITY<aq> DURATION"
	    ultra_tips[109] = "they will never see you coming"
        
	    ultra_name[110] = "INVULNERABLE INVISIBILITY"
	    ultra_text[110] = "YOU ARE COMPLETLY <aq>IMMUNE<aq> DURING <p>STEALTH<p>#<p>STEALTH<p> ACTIVATES QUICKER#MOVE FASTER DURING <p>STEALTH<p>"
	    ultra_tips[110] = "can't be seen, can't be hit"
		
		//have any ammo mutation or crown of greed
		if altOverride || (instance_exists(Player) && Player.race == 28 && Player.altUltra)
		{
			ultra_name[110] = "GREEDY THIEF"
		    ultra_text[110] = "INCREASE HOW MUCH <y>AMMO<y> YOU <w>STEAL<w>##FOR EACH <y>AMMO TYPE<y> THAT IS#AT OR ABOVE BASE MAX:#GAIN <w>+1<w> <r>MAX HP<r>#GAIN <w>+2<w> FOR EACH <w>EQUIPPED<w> <y>AMMO<y> <w>TYPE<w>"
		    ultra_tips[110] = "the collector"
		}
        
		ultra_name[111] = "KNIFE SKILLS"
		ultra_text[111] = "ALL <w>MELEE WEAPONS<w> DEAL#<w>+5 FIXED DAMAGE<w>##UPGRADED NON <p>STEALTH<p> <w>STAB<w>#MORE <r>DAMAGE<r>#<r>SPLASH DAMAGE<r>#CAN STEAL ITEMS/WEAPONS#STEAL MORE <y>AMMO<y>"
		ultra_tips[111] = "show your chops"
        
		ultra_name[112] = "SWIFT STRIKE"
	    ultra_text[112] = "STEALTH PERSISTS FOR#A <w>FEW SECONDS<w> AFTER <w>SHOOTING<w>##YOU CAN STAB <w>3<w> <r>ENEMIES<r>#BEFORE <w>BREAKING<w> <p>STEALTH<p>"
	    ultra_tips[112] = "multiple assassinations"
		
		
	
	//NO THING NoThing
	ultra_name[113] = "ZERO"
	ultra_text[113] = "USING <v>VOID CONSUMPTION<v>:#<w>TEMPORARILY<w> INCREASES <r>MAX HEALTH<r> BY <w>1<w>"
	ultra_tips[113] = "0"
	
	if altOverride || (instance_exists(Player) && Player.race == 29 && Player.altUltra)
	{
		//Increase damage of void consumption based on the total portal essence you hold.
		ultra_name[113] = "INFINITY"
		//ultra_text[113] = "USING <v>VOID CONSUMPTION<v>:#<w>TEMPORARILY<w> GRANTS <w>INFINITE AMMO<w>"
		ultra_text[113] = "COLLECT <w>50%<w> MORE <p>PORTAL ESSENCE<p>##WHENEVER YOU GAIN <y>AMMO<y>#GAIN MORE BASED ON#THE TOTAL <p>PORTAL ESSENCE<p> YOU HOLD";
		ultra_tips[113] = "8"
	}
        
	ultra_name[114] = "ABYSS"
	ultra_text[114] = "WHEN YOU <r>KILL<r> AN <r>ENEMY<r>#<w>ALL<w> <r>ENEMIES<r> OF THAT <w>TYPE<w>#WILL BE SENT TO THE <w>NEXT AREA<w>##THE ENEMY TYPE SENT OVER#CANNOT CROSS OVER AGAIN#DOES NOT WORK ON BOSSES"
	ultra_tips[114] = "send them inbetween"
        
	ultra_name[115] = "NULL"
	ultra_text[115] = "<r>HEALTH<r> AND <y>AMMO<y> DROPS CAN BE <p>CONSUMED<p> TWICE"
	ultra_tips[115] = "absolute"
    /*
	ultra_name[116] = "DYING WHEN AT OR ABOVE LEVEL 10#WILL RESET YOUR LEVEL TO 1 AND PREVENT DEATH"
	ultra_text[116] = "SLIGHTLY INCREASE ACTIVE COST#ACTIVE CAN <w>SHRINK<w>#ALL ENEMY PROJECTILES#INTO <p>NOTHINGNESS<p>#DOUBLE <w>STUN<w> DURATION"
	ultra_tips[116] = "discipline those projectiles!"
	*/
	ultra_name[116] = "NIL"
	ultra_text[116] = "FOR EACH <r>HEALTH<r> MISSING:#GAIN A <p>VOID SPHERE<p>#THAT SPIRALS AROUND YOU#DEALING DAMAGE#DELETING ENEMY PROJECTILES"// AND<w>COLLECTING<w> <y>RES<y><g>OUR<g><r>CES<r>"
	ultra_tips[116] = "absent"
	
	maxultra = 116;
	
	
	ultra_name[117] = "TRASH"
	ultra_text[117] = "<pi>DIE<pi> WHENEVER YOU TAKE DAMAGE"
	ultra_tips[117] = "challenge run"
	
	
	dir = 0
	if resetUltraGot
		repeat(maxultra+2)
		{ultra_got[dir] = 0
		dir += 1}
	
	scrSecretUltraStat();
}
