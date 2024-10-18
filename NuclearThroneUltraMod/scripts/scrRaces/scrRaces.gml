function scrRaces() {

	var isUnique = instance_exists(UberCont) && UberCont.opt_pickup != UberCont.opt_regal;
	var regalBut = "E";
	if instance_exists(UberCont)
		regalBut = scrAsciiChar(UberCont.opt_regal)
	race_name[0] = "RANDOM"
	race_pass[0] = "???"
	race_acti[0] = "???"
	race_butt[0] = ""
	race_butt_detail[0] = "";
	//race_inpsiration[0] = "";
	race_lock[0] = ""
	race_have[0] = 1
	race_bskin[0] = 0
	race_cskin[0] = 0
	race_dskin[0] = 0
	race_eskin[0] = 0
	race_fskin[0] = 0
	race_gskin[0] = 0
	race_bskin_lock[0] = ""
	race_cskin_lock[0] = ""


	race_name[1] = "FISH"
	race_pass[1] = "GETS MORE <y>AMMO<y>"
	race_acti[1] = "<aq>DODGE<aq> <w>ROLL<w>"
	race_butt[1] = "<aq>WATER<aq> <w>BOOST<w>#MORE <y>AMMO<y> FROM DROPS"
	race_butt_detail[1] = "<aq>WATER<aq> <w>BOOST<w>#UNLIMITED <w>ROLLING<w>#CHARGE A <aq>WAVE<aq> WHILE <w>ROLLING<w>#<aq>WAVE<aq> REDIRECTS <w>ENEMIES<w> AND <w>PROJECTILES<w>##GET EVEN MORE <y>AMMO<y>#FROM <y>AMMO<y> PICKUPS";
	race_vision[1] = "FISH CAN <w>JUMP<w>";
	race_vision_detail[1] = "ACTIVE LETS YOU <w>JUMP<w>#CAN STILL <w>ROLL<w> MID AIR!";
	race_lock[1] = "UNLOCKED FROM THE START"
	race_have[1] = 1
	race_swep[1] = 1
	race_bskin[1] = 0
	race_cskin[1] = 0
	race_dskin[1] = 0
	race_eskin[1] = 0
	race_fskin[1] = 0
	race_gskin[1] = 0
	race_bskin_lock[1] = "REACH LOOP#WITH GAMEMODE:# FISH'S PARTNER ONLY"
	race_cskin_lock[1] = "LOOP WITH#EVERY CHARACTER"


	race_name[2] = "CRYSTAL"
	race_pass[2] = "MORE MAX <r>HP<r>"
	race_acti[2] = "<p>SHIELD<p>"
	race_butt[2] = "LONGER <p>SHIELD<p>"
	race_butt_detail[2] = "75% LONGER <p>SHIELD<p>"
	race_vision[2] = "PRESS <w>[E]<w> WHILE <p>SHIELDING<p>#TO TURN INTO A <p>TORPEDO<p>#COSTS <w>2<w> <r>HEALTH<r>";
	race_vision_detail[2] = "PRESS <w>[E]<w> WHILE <p>SHIELDING<p>#TO TURN INTO A <p>TORPEDO<p>#COSTS <w>2<w> <r>HEALTH<r>#YOU ARE <aq>IMMUNE<aq> WHILE IN <p>TORPEDO<p> FORM";
	if isUnique
	{
		race_vision[2] = string_replace_all(race_vision[2],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[2] = string_replace_all(race_vision_detail[2],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[2] = "UNLOCKED FROM THE START"
	race_have[2] = 1
	race_swep[2] = 1
	race_bskin[2] = 0
	race_cskin[2] = 0
	race_dskin[2] = 0
	race_eskin[2] = 0
	race_fskin[2] = 0
	race_gskin[2] = 0
	race_bskin_lock[2] = "REACH CURSED CAVES#AS CRYSTAL"
	race_cskin_lock[2] = "REACH INVERTED CAVES#AS CRYSTAL"


	race_name[3] = "EYES"
	race_pass[3] = "SEES IN THE DARK"
	race_acti[3] = "<w>TELEKINESIS<w>"
	race_butt[3] = "STRONGER <w>TELEKINESIS<w>"
	race_butt_detail[3] = "DOUBLE <w>TELEKINESIS<w> STRENGTH";
	race_vision[3] = "PRESS <w>[E]<w> TO CREATE A <w>MIND SPIRAL<w>";
	race_vision_detail[3] = "PRESS <w>[E]<w> TO CREATE A <w>MIND SPIRAL<w>#IT PULLS EVERYTHING#CAN HAVE ONLY ONE SPIRAL OUT AT A TIME";
	if isUnique
	{
		race_vision[3] = string_replace_all(race_vision[3],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[3] = string_replace_all(race_vision_detail[3],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[3] = "REACH SEWERS TO UNLOCK"
	race_have[3] = 0
	race_swep[3] = 1
	race_bskin[3] = 0
	race_cskin[3] = 0
	race_dskin[3] = 0
	race_eskin[3] = 0
	race_fskin[3] = 0
	race_gskin[3] = 0
	race_bskin_lock[3] = "REACH PIZZA SEWERS#AS EYES"
	race_cskin_lock[3] = "LOOP WITH EAGLE EYES#AS EYES"


	race_name[4] = "MELTING"
	race_pass[4] = "LESS MAX <r>HP<r>, MORE <g>RADS<g>"
	race_acti[4] = "EXPLODE CORPSES"
	race_butt[4] = "BIGGER <w>CORPSE<w> EXPLOSIONS"
	race_butt_detail[4] = "TRIPLE <r>BLOOD<r> <w>CORPSE<w> EXPLOSIONS";
	race_vision[4] = "<w>ACTIVE<w> MAKES YOU <aq>IMMUNE<aq>#FOR A SHORT TIME";
	race_vision_detail[4] = race_vision[4];
	race_lock[4] = "DIE TO UNLOCK"
	race_have[4] = 0
	race_swep[4] = 1
	race_bskin[4] = 0
	race_cskin[4] = 0
	race_dskin[4] = 0
	race_eskin[4] = 0
	race_fskin[4] = 0
	race_gskin[4] = 0
	race_bskin_lock[4] = "LOOP WITHOUT#HEALTH INCREASING OR DAMAGE PREVENTING#MUTATIONS AND CROWNS"//#RHINO SKIN,#STRONG SPIRIT#ALKALINE SALIVA#BOUNCY FAT#NERVES OF STEEL#TOUGH SHELL#LAST WISH, INNER PEACE#CROWN OF PROTECTION#AND CROWN OF LIFE#CROWN OF STABILITY#AS MELTING"
	race_cskin_lock[4] = "REACH LOOP 3 ON#1HP EQUALITY#GAMEMODE#AS MELTING"


	race_name[5] = "PLANT"
	race_pass[5] = "IS <w>FASTER<w>"
	race_acti[5] = "<w>SNARE<w> ENEMIES"
	race_butt[5] = "<w>SNARE<w> FINISHES ENEMIES#UNDER 35% <r>HP<r>##<w>SNARE<w> IS SLIGHTLY BIGGER"
	race_butt_detail[5] = "<w>SNARE<w> FINISHES ENEMIES#UNDER 35% <r>HP<r>#(THRESHOLD CAN BE INCREASED WITH DAMAGE BOOSTS)##SNARE IS 25% BIGGER";
	race_vision[5] = "CAST A VINE#BETWEEN YOU AND YOUR <g>SNARE<g>#<w>TRAPPED<w> <r>ENEMIES<r> DEAL <w>NO<w> CONTACT DAMAGE";
	race_vision_detail[5] = race_vision[5];
	race_lock[5] = "KILL 100 ENEMIES TO UNLOCK"
	race_have[5] = 0
	race_swep[5] = 1
	race_bskin[5] = 0
	race_cskin[5] = 0
	race_dskin[5] = 0
	race_eskin[5] = 0
	race_fskin[5] = 0
	race_gskin[5] = 0
	race_bskin_lock[5] = "REACH WONDERLAND#IN UNDER 8 MINUTES#AS PLANT"
	race_cskin_lock[5] = "KILL 2.000#ENEMIES IN ONE RUN#AS PLANT"


	race_name[6] = "Y.V."
	race_pass[6] = "FASTER <w>RELOAD SPEED<w>"
	race_acti[6] = "POP POP"
	race_butt[6] = "BRRRAP"
	race_butt_detail[6] = "ACTIVE FIRES 4 TIMES#INSTEAD OF 2";
	//race_vision[6] = "PRESS <w>[E]<w> TO: INSTANTLY <w>RELOAD<w>#AND SHIFT RELOAD TIME#TO YOUR NEXT SHOT";
	//race_vision[6] = "HOLD <w>[E]<w> TO:#GIVE YOUR CURRENT WEAPON SENTIENCE#PRESSING [E] FIRES THAT WEAPON"
	race_vision[6] = "PRESS <w>[E]<w> TO: INSTANTLY <w>RELOAD<w>#AND SHIFT RELOAD TIME#TO YOUR <w>SECONDARY<w>##CAN ONLY BE DONE#WHEN SECONDARY IS RELOADED";
	race_vision_detail[6] = "PRESS <w>[E]<w> WHILE RELOADING TO:#INSTANTLY <w>RELOAD<w> YOUR <w>PRIMARY<w>#AND SHIFT RELOAD TIME#TO YOUR <w>SECONDARY<w>##CAN ONLY BE DONE#WHEN SECONDARY IS RELOADED#REQUIRES YOU TO HOLD A SECONDARY";
	if isUnique
	{
		race_vision[6] = string_replace_all(race_vision[6],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[6] = string_replace_all(race_vision_detail[6],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[6] = "REACH Y.V.'S MANSION TO UNLOCK"
	race_have[6] = 0
	race_swep[6] = 39
	race_bskin[6] = 0
	race_cskin[6] = 0
	race_dskin[6] = 0
	race_eskin[6] = 0
	race_fskin[6] = 0
	race_gskin[6] = 0
	race_bskin_lock[6] = "UNLOCK ALL#GOLDEN WEAPONS#FOR ONE CHARACTER"
	race_cskin_lock[6] = "UNLOCK#A GOLDEN WEAPON#FOR ALL CHARACTERS"


	race_name[7] = "STEROIDS"
	race_pass[7] = "IS LESS <w>ACCURATE<w>#ALL WEAPONS ARE FULLY AUTOMATIC"
	race_acti[7] = "<w>DUAL WIELDING<w>"
	race_butt[7] = "FIRING WITH ONE WEAPON#HAS A CHANCE TO#GIVE <y>AMMO<y> FOR THE OTHER"
	race_butt_detail[7] = "FIRING WITH ONE WEAPON#HAS A CHANCE TO#GIVE <y>AMMO<y> FOR THE OTHER#MORE EFFECTIVE WHEN#FIRING BOTH WEAPONS"
	//race_vision[7] = "HOLD <w>[E]<w> TO:#FIRE BOTH WEAPONS <w>ACCURATELY<w>#AT A FASTER RELOAD SPEED#BUT YOU ARE STATIONARY";
	race_vision[7] = "PRESS <w>[E]<w> TO:#TOGGLE <w>FIRING STANCE<w>##<w>NORMAL<w> OR##<w>CROUCHED<w>:#FIRE AT A <w>HIGHER ACCURACY<w> AND#FASTER <w>RELOAD SPEED<w>#BUT YOU ARE ALMOST <r>STATIONARY<r>";
	if isUnique
	{
		race_vision[7] = string_replace_all(race_vision[7],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_vision_detail[7] = race_vision[7];
	race_lock[7] = "REACH LABS TO UNLOCK"
	race_have[7] = 0
	race_swep[7] = 1
	race_bskin[7] = 0
	race_cskin[7] = 0
	race_dskin[7] = 0
	race_eskin[7] = 0
	race_fskin[7] = 0
	race_gskin[7] = 0
	race_bskin_lock[7] = "DEFEAT#TECHNOMANCER#AS STEROIDS"
	race_cskin_lock[7] = "DEFEAT#INVERTED BIG MACHINE#AS STEROIDS"


	race_name[8] = "ROBOT"
	race_pass[8] = "FINDS BETTER TECH"
	race_acti[8] = "HOLD TO <w>EAT WEAPONS<w>"
	race_butt[8] = "BETTER GUN <g>NUTRITION<g>"
	race_butt_detail[8] = "ANOTHER <r>HP<r>/<y>AMMO<y> DROP#AND MORE <g>RADS<g> WHEN <w>EATING<w>#ALWAYS <r>HEAL<r> WHEN EATING"
	race_vision[8] = "PRESS <w>[E]<w> TO: <w>EAT<w> A NEARBY <r>ENEMY<r>";
	race_vision_detail[8] = "PRESS <w>[E]<w> NEAR AN ENEMY TO:#START <w>EATING<w> THAT ENEMY#STAY IN RANGE TO COMPLETE THE EATING#EATING TAKES LONGER#IF THE ENEMY HAS MORE HEALTH#GET THE SAME <y>RES<y><g>OUR<g><r>CES<r>#AS IF YOU ATE A WEAPON";
	if isUnique
	{
		race_vision[8] = string_replace_all(race_vision[8],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[8] = string_replace_all(race_vision_detail[8],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[8] = "REACH SCRAPYARD TO UNLOCK"
	race_have[8] = 0
	race_swep[8] = 1
	race_bskin[8] = 0
	race_cskin[8] = 0
	race_dskin[8] = 0
	race_eskin[8] = 0
	race_fskin[8] = 0
	race_gskin[8] = 0
	race_bskin_lock[8] = "EAT A TIER 18+ OR HYPER WEAPON"
	race_cskin_lock[8] = "EAT AN ULTRA WEAPON"


	race_name[9] = "CHICKEN"
	race_pass[9] = "HARD TO KILL"
	race_acti[9] = "HOLD FOR <w>SLOW MOTION<w>"
	race_butt[9] = "NORMAL <w>MOVEMENT SPEED<w>#AND NORMAL <w>RELOAD SPEED<w>#DURING <w>SLOWMOTION<w>"//"NORMAL RATE OF FIRE#DURING SLOW MOTION"
	race_butt_detail[9] = race_butt[9];
	race_vision[9] = "<p>FOCUS<p> DOES NOT DRAIN#WHILE <w>STATIONARY<w>##PRESS <w>[E]<w> DURING <w>SLOW MOTION<w> TO:#<w>REWIND<w> YOUR <w>POSITION<w>#AND <r>HEALTH<r> (IF IT WAS HIGHER)#BACK TO#THE <w>START<w> OF SLOW MOTION#TRIGGERS WHEN SLOW MOTION <w>ENDS<w>";
	race_vision_detail[9] = "<p>FOCUS<p> DOES NOT DRAIN#WHILE <w>STATIONARY<w>##PRESS <w>[E]<w> DURING <w>SLOW MOTION<w> TO:#<w>REWIND<w> BACK TO THE <w>START<w> OF SLOW MOTION";
	if isUnique
	{
		race_vision[9] = string_replace_all(race_vision[9],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[9] = string_replace_all(race_vision_detail[9],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[9] = "OPEN A BIG HP CHEST"
	race_have[9] = 0
	race_swep[9] = 46
	race_bskin[9] = 0
	race_cskin[9] = 0
	race_dskin[9] = 0
	race_eskin[9] = 0
	race_fskin[9] = 0
	race_gskin[9] = 0
	race_bskin_lock[9] = "ACQUIRE#THE BLACK SWORD"
	race_cskin_lock[9] = "ACQUIRE#THE DARK SWORD#LOOP WITH#CHICKEN SWORD"


	race_name[10] = "REBEL"
	race_pass[10] = "<p>PORTALS<p> <r>HEAL<r>"
	race_acti[10] = "SPAWN ALLIES"
	race_butt[10] = "HIGHER <w>ALLY RELOAD SPEED<w>"
	race_butt_detail[10] = "+50% <w>ALLY RELOAD SPEED<w>";
	race_vision[10] = "PRESS <w>[E]<w> TO: GRAB NEARBY ALLIES#PRESS AGAIN TO <w>THROW<w> YOUR ALLY";
	race_vision_detail[10] = "PRESS <w>[E]<w> TO:#GRAB NEARBY ALLIES#PRESS <w>[E]<w> AGAIN TO <w>THROW<w> YOUR ALLY";
	if isUnique
	{
		race_vision[10] = string_replace_all(race_vision[10],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[10] = string_replace_all(race_vision_detail[10],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[10] = "REACH FROZEN CITY TO UNLOCK"
	race_have[10] = 0
	race_swep[10] = 1
	race_bskin[10] = 0
	race_cskin[10] = 0
	race_dskin[10] = 0
	race_eskin[10] = 0
	race_fskin[10] = 0
	race_gskin[10] = 0
	race_bskin_lock[10] = "COMPLETE A#MAIN AREA ON LOOP#WITHOUT FIRING#AS REBEL"
	race_cskin_lock[10] = "REACH B?N??T L?N?"


	race_name[11] = "HUNTER"
	race_pass[11] = "HIGHER PROJECTILE <w>VELOCITY<w>#BETTER <w>ACCURACY<w>"
	race_acti[11] = "MARK ENEMIES"
	race_butt[11] = "<w>MARKED<w> ENEMIES#TAKE <w>35%<w> MORE <w>DAMAGE<w>"
	race_butt_detail[11] = race_butt[11];
	race_vision[11] = "PRESS <w>[E]<w> TO:#TEMPORARILY DISABLE <w>WALLS<w>#TOWARD YOUR <w>AIM<w>##<w>PROJECTILES<w> SHOT THROUGH <w>DISABLED WALLS<w>#GET A <w>DAMAGE BOOST<w>";
	race_vision_detail[11] = "PRESS <w>[E]<w> TO:#DISABLE <w>WALLS<w> FOR <w>2<w> SECONDS#TOWARD YOUR <w>AIM<w>##<w>PROJECTILES<w> SHOT THROUGH <w>DISABLED WALLS<w>#GET A <w>25% DAMAGE BOOST<w>";
	if isUnique
	{
		race_vision[11] = string_replace_all(race_vision[11],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[11] = string_replace_all(race_vision_detail[11],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[11] = "DEFLECT A SNIPER SHOT\nBACK AT THE SNIPER\nTO UNLOCK"
	race_have[11] = 0
	race_swep[11] = 80//sniper rifle
	race_bskin[11] = 0
	race_cskin[11] = 0
	race_dskin[11] = 0
	race_eskin[11] = 0
	race_fskin[11] = 0
	race_gskin[11] = 0
	race_bskin_lock[11] = "REACH THE PALACE#ONLY USING#ANY STARTING WEAPON#AS HUNTER"
	race_cskin_lock[11] = "KILL AN HARD MODE#ULTRA SNIPER BOT#AS HUNTER"


	race_name[12] = "Y.C."
	race_pass[12] = "FIND MORE <r>HP<r> CHESTS#MORE DUPES = MORE <y>AMMO<y> FROM PICKUPS"
	race_acti[12] = "<w>DUPLICATE<w>"
	race_butt[12] = "GAIN EVEN MORE <y>AMMO<y>#DEPENDING ON NUMBER OF DUPLICATES"
	race_butt_detail[12] = race_butt[12] + "#EXTRA AMMO GAINED PER DUPLICATE#IS DOUBLED"
	race_vision[12] = "HOLD <w>[E]<w> TO:#TURN YOUR <w>DUPLICATES<w> INTO <p>HACKS<p>#<w>AIMBOT<w>, <y>INFINITE AMMO<y> AND <aq>GHOSTING<aq>";
	race_vision_detail[12] = "HOLD <w>[E]<w> TO:#TURN YOUR DUPLICATES INTO <p>HACKS<p>#TEMPORARILY ENABLED <w>IN ORDER<w>#<w>AIMBOT<w>, <y>INFINITE AMMO<y> AND <aq>GHOSTING<aq>##AFTER ALL HACKS ARE ENABLED (3+ DUPES)#NEXT DUPLICATES INCREASES <w>DURATION<w>";
	if isUnique
	{
		race_vision[12] = string_replace_all(race_vision[12],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[12] = string_replace_all(race_vision_detail[12],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[12] = "KILL A MIMIC TO UNLOCK"
	race_have[12] = 0
	race_swep[12] = 39//golden revolver
	race_bskin[12] = 0
	race_cskin[12] = 0
	race_dskin[12] = 0
	race_eskin[12] = 0
	race_fskin[12] = 0
	race_gskin[12] = 0
	race_bskin_lock[12] = "GO TO THE CRIB"
	race_cskin_lock[12] = "AS YUNG CUZ#COMPLETE 3 AREAS#IN A ROW#WITHOUT HAVING#MORE THAN 1 MAX HP";


	race_name[13] = "SHEEP"
	race_pass[13] = "ENEMIES WON'T ATTACK#UNTIL THEY SPOT YOU"
	race_acti[13] = "HOLD TO <pi>CHARGE<pi>"
	race_butt[13] = "<r>FIRE<r> <pi>CHARGE<pi>"
	race_butt_detail[13] = "<r>FIRE<r> <pi>CHARGE<pi>#MORE CHARGE DAMAGE#MORE CHARGE CONTROL#FASTER CHARGE"
	//race_vision[13] = "PRESS <w>[E]<w> WHILE CHARGING TO PARRY INCOMING DAMAGE";
	//race_vision[13] = "PRESS <w>[E]<w> WHILE AT <w>FULL<w> <pi>CHARGE<pi> TO:#<pi>SUPER CHARGE<pi><w>!<w>##CAN ALSO BE USE WHEN <w>UNSEEN<w>";
	race_vision[13] = "PRESS <w>[E]<w> WHEN AT <w>FULL<w> <pi>CHARGE<pi> TO:#ACTIVATE A <pi>SUPER CHARGE<pi><w>!<w>##CAN ALSO <pi>SUPER CHARGE<pi> WHEN <w>UNSEEN<w>";
	race_vision_detail[13] = "PRESS <w>[E]<w> WHEN AT <w>FULL<w> <pi>CHARGE<pi> TO:#ACTIVATE A <pi>SUPER CHARGE<pi><w>!<w>#COMPLETLY <aq>IMMUNE<aq> DURING <pi>SUPER CHARGE<pi>#<pi>SUPER CHARGE<pi> GOES TOWARDS YOUR <w>AIM<w>##CAN ALSO <pi>SUPER CHARGE<pi> WHEN <w>UNSEEN<w>#OR RIGHT AFTER A <pi>HYPERDASH<pi>";
	if isUnique
	{
		race_vision[13] = string_replace_all(race_vision[13],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[13] = string_replace_all(race_vision_detail[13],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[13] = "MORPH AN ENEMY TO UNLOCK"
	race_have[13] = 0
	race_swep[13] = 0//nothing
	race_bskin[13] = 0
	race_cskin[13] = 0
	race_dskin[13] = 0
	race_eskin[13] = 0
	race_fskin[13] = 0
	race_gskin[13] = 0
	race_bskin_lock[13] = "SAVE A LOST SHEEP#AS SHEEP"
	race_cskin_lock[13] = "COMPLETE A#MAIN AREA#WITHOUT FIRING#AFTER THE SCRAPYARD#AS SHEEP"


	race_name[14] = "PANDA"
	race_pass[14] = "SMALLER HITBOX#<pi>RANDOMIZE<pi> WEAPONS THROWN IN A <p>PORTAL<p>#THROWN WEAPONS <w>TELEPORT<w> BACK"//"PRIMARY WEAPON IS RANDOMIZED#TO ONE OF THE SAME TIER#EACH AREA#EXCEPT YOUR STARTING WEAPON"
	race_acti[14] = "PRESS/HOLD <w>THROW<w> WEAPONS"
	race_butt[14] = "#SHORTER <w>THROWN<w> WEAPON RETURN DELAY#MORE <w>THROW<w> DAMAGE"
	race_butt_detail[14] = "#REDUCED <w>THROWN<w> WEAPON#RETURN DELAY (0.83 SEC)#+20% MORE <w>THROW<w> DAMAGE"
	race_vision[14] = "PRESS <w>[E]<w> TO <w>TOGGLE<w> <b>SLEEP<b><w>!<w>#WHILE <b>SLEEPING<b>:#SPIN NEARBY <w>WEAPONS<w> AROUND YOU#<w>CONSECUTIVE HITS<w> <r>HEAL<r>";
	race_vision_detail[14] = "PRESS <w>[E]<w> TO <w>TOGGLE<w> <b>SLEEP<b><w>!<w>#WHILE <b>SLEEPING<b>:#SPIN NEARBY <w>WEAPONS<w> AROUND YOU#EVERY <w>5<w> HITS YOUR <w>SPINNING WEAPONS<w> DEAL#<r>HEAL<r> <w>1<w>";
	if isUnique
	{
		race_vision[14] = string_replace_all(race_vision[14],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[14] = string_replace_all(race_vision_detail[14],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[14] = "VISIT THE JUNGLE TO UNLOCK"
	race_have[14] = 0
	race_swep[14] = 200//panda stick
	race_bskin[14] = 0
	race_cskin[14] = 0
	race_dskin[14] = 0
	race_eskin[14] = 0
	race_fskin[14] = 0
	race_gskin[14] = 0
	race_bskin_lock[14] = "CONVERT A#GOLDEN WEAPON#INSIDE OF A PORTAL"
	race_cskin_lock[14] = "LOOP BY#ONLY THROWING WEAPONS#AND NOT USING THEM"


	race_name[15] = "ATOM"
	race_pass[15] = "ITEMS DESPAWN QUICKER#YOU DEAL <g>CONTACT DAMAGE<g>"
	race_acti[15] = "<w>TELEPORT<w>"
	race_butt[15] = "EXPLOSIVE <p>TELEPORTATION<p>"
	race_butt_detail[15] = "UPON <p>TELEPORTING<p>#FIRE AN EXPLOSIVE LASER#TOWARDS YOUR PREVIOUS POSITION#CAUSE <g>PLASMA<g> AND <b>LIGHTNING<b>#AT DESTINATION"
	race_vision[15] = "PRESS <w>[E]<w> TO:#CREATE A PERSISTENT <p>PORTAL<p>#THAT <p>TELEPORTS<p>#<y>RES<y><g>OUR<g><r>CES<r> <r>CHE<r><y>STS<y> AND <r>ENEMIES<r>";
	if isUnique
	{
		race_vision[15] = string_replace_all(race_vision[15],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_vision_detail[15] = race_vision[15];
	race_lock[15] = "TAKE CRYSTAL'S THRONE BUTT TO UNLOCK"
	race_have[15] = 0
	race_swep[15] = 19//laser pistol
	race_bskin[15] = 0
	race_cskin[15] = 0
	race_dskin[15] = 0
	race_eskin[15] = 0
	race_fskin[15] = 0
	race_gskin[15] = 0
	race_bskin_lock[15] = "COMPLETE A#MAIN AREA#AFTER THE SEWERS#WITHOUT FIRING#AS ATOM"
	race_cskin_lock[15] = "COMPLETE FIVE#AREAS IN A ROW#USING CROWN OF HASTE#AS ATOM"


	race_name[16] = "VIKING"
	race_pass[16] = "REDUCED <r>MAX HP<r>#HAS <gb>ARMOUR<gb>##<p>PORTALS<p> GIVE <gb>ARMOUR<gb>"
	race_acti[16] = "<g>SERPENT<g> <gb>ARMOUR<gb> <w>STRIKE<w>"//ARMOUR STRIKE
	race_butt[16] = "INCREASE <gb>MAX ARMOUR<gb> BY ONE#FIRST <gb>ARMOUR<gb> <w>STRIKE<w> EACH AREA IS FREE"
	race_butt_detail[16] = race_butt[16];
	race_vision[16] = "HOLD <w>[E]<w> TO:#CONVERT <y>AMMO<y> TO <gb>ARMOUR<gb>#AND APPLY <g>VENOM<g> TO <r>ENEMIES<r>##CAN ALSO <w>CONVERT<w> TO#<g>THRONEBUTT<g> <gb>ARMOUR STRIKE<gb>";
	race_vision_detail[16] = "HOLD <w>[E]<w> TO:#CONVERT <y>AMMO<y>#TO ONE <gb>ARMOUR<gb>#AND APPLY <g>VENOM<g> TO <r>ENEMIES<r>#COSTS ABOUT 5 AMMO DROPS#8 WHEN USING UNEQUIPPED AMMO#PRIORITIZES SECONDARY AMMO#WHEN ON <gb>MAX ARMOUR<gb>:#CAN ALSO <w>CONVERT<w> TO#<g>THRONEBUTT<g> <gb>ARMOUR STRIKE<gb>";
	if isUnique
	{
		race_vision[16] = string_replace_all(race_vision[16],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[16] = string_replace_all(race_vision_detail[16],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[16] = "GAIN ARMOUR!?"//"REGAIN STRONG SPIRIT 3 TIMES IN ONE RUN TO UNLOCK"//"BREAK X AMOUNT OF WALLS"
	race_have[16] = 0
	race_swep[16] = 215//MDRFKIN AXE BITCHES
	race_bskin[16] = 0
	race_cskin[16] = 0
	race_dskin[16] = 0
	race_eskin[16] = 0
	race_fskin[16] = 0
	race_gskin[16] = 0
	race_bskin_lock[16] = "COMPLETE A LEVEL#WITH 5 ARMOUR#AS VIKING"
	race_cskin_lock[16] = "KILL 16 ENEMIES#IN ONE ARMOUR STRIKE"


	race_name[17] = "WEAPONSMITH"//WEAPON SMITH
	race_pass[17] = "START WITH A RANDOM <w>WEAPON MOD<w>#ENEMIES DROP MORE WEAPONS#LOWER <y>TIER<y> WEAPONS"
	race_acti[17] = "UPGRADE WEAPONS"
	race_butt[17] = "HIGHER <y>TIER<y> WHEN <w>UPGRADING<w>#HOLD ACTIVE ON <w>WEAPON MODS<w>#TO <w>RE-ROLL<w> THEM <w>ONCE<w>"
	race_butt_detail[17] = "ALWAYS <w>+1<w> <g><g>TIER WHEN <w>UPGRADING<w>#INCREASE UPGRADE <y>TIER<y> MAXIMUM#HOLD ACTIVE ON <w>WEAPON MODS<w>#TO <w>RE-ROLL<w> THEM#CAN BE DONE <w>ONCE<w> PER WEAPON MOD"
	race_vision[17] = "HOLD <w>[E]<w> TO:#<w>SHIFT<w> <y>AMMO TYPE<y>";
	race_vision_detail[17] = "HOLD <w>[E]<w> TO:#<w>SHIFT<w> <y>AMMO TYPE<y>#OF YOUR <w>PRIMARY<w> TO THE RIGHT##SHIFTING <y>BULLETS<y> CHANGES <y>AMMO<y> COST";
	if isUnique
	{
		race_vision[17] = string_replace_all(race_vision[17],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[17] = string_replace_all(race_vision_detail[17],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[17] = "MODIFY A WEAPON TO UNLOCK"
	race_have[17] = 0
	race_swep[17] = 1
	race_bskin[17] = 0
	race_cskin[17] = 0
	race_dskin[17] = 0
	race_eskin[17] = 0
	race_fskin[17] = 0
	race_gskin[17] = 0
	race_bskin_lock[17] = "HOLD TO COMBINE TWO#GOLDEN WEAPONS"
	race_cskin_lock[17] = "ADD FOUR MODS#TO ONE WEAPON"


	race_name[18] = "ANGEL"
	race_pass[18] = "FLY OVER WALLS"
	race_acti[18] = "<aq>DEFLECT<aq> ALL DAMAGE#COSTS <y>AMMO<y>"
	race_butt[18] = "ACTIVE ALSO <r>HEALS<r>#<w>1<w> <r>HP<r> EVERY OTHER USE"
	race_butt_detail[18] = race_butt[18];
	race_vision[18] = "PRESS <w>[ACTIVE]<w> WHILE DEFLECTING TO:#CAST OUT YOUR DEFLECT";
	race_vision_detail[18] = "PRESS <w>[ACTIVE]<w> WHILE DEFLECTING TO:#<w>CAST<w> OUT YOUR <aq>DEFLECT<aq>#YOU REMAIN <aq>IMMUNE<aq> DURING CAST#INCREASE SHIELD CONTACT DAMAGE";
	if isUnique
	{
		race_vision[18] = string_replace_all(race_vision[18],"PRESS <w>[E]","PRESS <w>[ACTIVE]");
		race_vision_detail[18] = string_replace_all(race_vision_detail[18],"PRESS <w>[E]","PRESS <w>[ACTIVE]");
	}
	race_lock[18] = "HAVE A SINGLE RUN WITH ATLEAST THREE\nSURVIVAL MUTATIONS\nTO UNLOCK"
	race_have[18] = 0
	race_swep[18] = 56
	race_bskin[18] = 0
	race_cskin[18] = 0
	race_dskin[18] = 0
	race_eskin[18] = 0
	race_fskin[18] = 0
	race_gskin[18] = 0
	race_bskin_lock[18] = "TRY 10 DIFFERENT CROWNS#AT LEAST ONCE#(WITH ANY CHARACTER)"
	race_cskin_lock[18] = "DEFLECT A PROJECTILE#THAT IS DEFLECTED#BY A CROWN GUARDIANS#WITHOUT USING MELEE#AS ANGEL"


	race_name[19] = "SKELETON"
	race_pass[19] = "REDUCED <r>MAX HP<r>,#MOVES SLOWER,#LESS ACCURATE"
	race_acti[19] = "<r>BLOOD<r> <w>GAMBLE<w>"
	race_butt[19] = "EVERY <w>FOURTH<w> FAILED <r>BLOOD GAMBLE<r>#<r>HEALS<r> YOU INSTEAD";//"BETTER <r>BLOOD<r> <w>GAMBLE<w> ODDS"
	race_butt_detail[19] = "EVERY <w>FOURTH<w> FAILED <r>BLOOD GAMBLE<r>#<r>HEALS<r> YOU <w>1<w> <r>HP<r> INSTEAD";//"33% BETTER <r>BLOOD<r> <w>GAMBLE<w> ODDS"
	race_vision[19] = "HOLD <w>[E]<w> TO:#DROP A <w>SKULL<w> THAT#CAN BE <r>DESTROYED<r> BY <r>ENEMIES<r>##UPON TAKING <aq>LETHAL<aq> <w>DAMAGE<w>#<aq>REVIVE<aq> AT THE <w>SKULL<w>#YOU GET ONLY <w>ONE<w> SKULL PER <w>AREA<w>##IF THE <w>SKULL<w> IS DESTROYED:#GAIN <w>2<w> <r>MAX HEALTH<r>#DURING THIS <w>AREA<w>"
	race_vision_detail[19] = "HOLD <w>[E]<w> TO:#DROP A <w>SKULL<w> THAT#CAN BE <r>DESTROYED<r> BY <r>ENEMIES<r>##UPON TAKING <aq>LETHAL<aq> <w>DAMAGE<w>#<aq>REVIVE<aq> AT THE <w>SKULL<w>#YOU GET ONLY <w>ONE<w> SKULL PER <w>AREA<w>##IF THE <w>SKULL<w> IS DESTROYED:#GAIN <w>2<w> <r>MAX HEALTH<r>#RESETS AT <w>THE END<w> OF THE <w>AREA<w>##IF IT STAYS ALIVE:#(OVER)<r>HEAL<r> <w>2<w>#UP TO 2 ABOVE MAX HP##<w>SKULL<w> CAN BE <w>MOVED<w> BY HOLDING <w>[E]<w>"
	if isUnique
	{
		race_vision[19] = string_replace_all(race_vision[19],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[19] = string_replace_all(race_vision_detail[19],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[19] = "DIE IN THE LABS AS MELTING TO UNLOCK"
	race_have[19] = 0
	race_swep[19] = 56//allright we'll do a character with a rusty revolver
	race_bskin[19] = 0
	race_cskin[19] = 0
	race_dskin[19] = 0
	race_eskin[19] = 0
	race_fskin[19] = 0
	race_gskin[19] = 0
	race_bskin_lock[19] = "HAVE THREE LIVES"
	race_cskin_lock[19] = "REACH THE VOLCANO#ON 400% SCREENSHAKE#AS SKELETON"


	race_name[20] = "BUSINESS HOG"
	race_pass[20] = "BOSSES DROP <y>GOLDEN<y> WEAPON CHESTS"
	race_acti[20] = "HOLD FOR <g>SHOP<g>"
	race_butt[20] = "20% <w>DISCOUNT<w>"
	race_butt_detail[20] = "20% <w>DISCOUNT<w>"
	race_vision[20] = "<w>DUPLICATE<w> SOME <g>RADS<g>#INTO A <g>PIGGY BANK<g><w>!<w>";
	race_vision_detail[20] = "GET A <g>PIGGY BANK<g><w>!<w>#WHENEVER YOU COLLECT <g>RADS<g>#<w>DUPLICATE<w> <w>25%<w> OF THEM INTO THE <g>PIGGY BANK<g>#<g>PIGGY BANK RADS<g> CAN BE USED IN <w>SHOP<w>";
	race_lock[20] = "FIND AND STEAL THE MONEY GUN TO UNLOCK"
	race_have[20] = 0
	race_swep[20] = 444//golden hand cannon
	race_bskin[20] = 0
	race_cskin[20] = 0
	race_dskin[20] = 0
	race_eskin[20] = 0
	race_fskin[20] = 0
	race_gskin[20] = 0
	race_bskin_lock[20] = "REACH AND#BEAT THE THRONE#USING ONLY#GOLD WEAPONS#AS BUSINESS HOG"
	race_cskin_lock[20] = "SUCCESSFULLY USE#THE INVESTMENT ULTRA"


	race_name[21] = "HORROR"
	race_pass[21] = "EXTRA <g>MUTATION<g> CHOICE"//"BLAST ARMOUR, HEAT"
	race_acti[21] = "<g>RADIATION<g> BEAM"//"PORTAL STRIKE"
	race_butt[21] = "BEAM CHARGES QUICKER AND <r>HEALS<r>#RELEASING BEAM#FIRES A BIG BALL OF <g>RADIATION<g>"
	race_butt_detail[21] = "BEAM CHARGES 30% QUICKER#BEAM <r>HEALS<r> EVERY 2 SECONDS#RELEASING BEAM#FIRES A BIG BALL OF <g>RADIATION<g>"
	race_vision[21] = "PRESS <w>[E]<w> TO:#SUCK UP ALL <g>RADIATION<g> IN EXISTENCE#AND FIRE A BIG BALL OF <g>RADIATION<g>";
	race_vision_detail[21] = "PRESS <w>[E]<w> TO:#SUCK UP ALL <g>RADIATION<g> IN EXISTENCE#<w>CONSUME HALF<w> OF THEM TO FIRE#A BIG BALL OF <g>RADIATION<g>#<w>COLLECT<w> THE <w>OTHER HALF<w>#(REQUIRES A MINIMUM AMOUNT OF RADS)";
	if isUnique
	{
		race_vision[21] = string_replace_all(race_vision[21],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[21] = string_replace_all(race_vision_detail[21],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[21] = "REACH WONDERLAND TO UNLOCK"//"REACH PALACE"
	race_have[21] = 0
	race_swep[21] = 1
	race_bskin[21] = 0
	race_cskin[21] = 0
	race_dskin[21] = 0
	race_eskin[21] = 0
	race_fskin[21] = 0
	race_gskin[21] = 0
	race_bskin_lock[21] = "REACH THE PALACE#WITHOUT LEVELING UP#AS HORROR"
	race_cskin_lock[21] = "COMPLETE A#MAIN AREA ON LOOP#USING ONLY THE BEAM"


	race_name[22] = "ROGUE"
	race_pass[22] = "BLAST ARMOUR, <b>HEAT<b>"//"WALK FOREVER"
	race_acti[22] = "<b>PORTAL STRIKE<b>"//"GASS, TOXIC IMMUNITY"
	race_butt[22] = "STRONGER <b>PORTAL STRIKE<b>#MORE <b>PORTAL STRIKE AMMO<b> SPAWNS"//"GASS SPREADS FASTER"
	race_butt_detail[22] = race_butt[22];
	race_vision[22] = "PRESS <w>[E]<w> TO:#MANUALLY TRIGGER <b>BLAST ARMOUR<b>#COSTS <w>1<w> <r>HP<r>#IF YOU <w>DON'T TAKE DAMAGE<w>#FOR A LITTLE WHILE#REFUND <w>1<w> <r>HP<r>";
	race_vision_detail[22] = "PRESS <w>[E]<w> TO:#MANUALLY TRIGGER <b>BLAST ARMOUR<b>#COSTS <w>1<w> <r>HP<r>#IF YOU <w>DON'T TAKE DAMAGE<w>#FOR A LITTLE WHILE#REFUND <w>1<w> <r>HP<r>##ONLY SCALES <g>SUPER<g> <b>BLAST ARMOUR<b>#<w>TEMPORARILY<w>";
	if isUnique
	{
		race_vision[22] = string_replace_all(race_vision[22],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[22] = string_replace_all(race_vision_detail[22],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[22] = "REACH THE THRONE TO UNLOCK"
	race_have[22] = 0
	race_swep[22] = 312//ROGUE RIFLE
	race_bskin[22] = 0
	race_cskin[22] = 0
	race_dskin[22] = 0
	race_eskin[22] = 0
	race_fskin[22] = 0
	race_gskin[22] = 0
	race_bskin_lock[22] = "SURVIVE IN#THE GAMEMODE#VAN FAN#FOR ATLEAST#30 SECONDS#AS ROGUE"
	race_cskin_lock[22] = "USE 8 PORTAL STRIKES#IN ONE AREA"


	race_name[23] = "FROG"
	race_pass[23] = "IMMUNE TO <g>TOXIC<g>";
	race_acti[23] = "HOLD AND RELEASE <g>TOXIC GAS<g>"
	if random(1000) < 1
		race_acti[23] = "SHIT & FART"
	race_butt[23] = "<g>TOXIC<g> SPREADS FASTER"
	race_butt_detail[23] = "<g>TOXIC<g> SPREADS FASTER#<g>TOXIC<g> LASTS LONGER#HOMING <g>TOXIC<g>#ACTIVE SPAWNS <g>TOXIC<g> TOWARDS YOUR AIM"
	race_vision[23] = "PRESS <w>[E]<w> WHILE CHARGING <g>GAS<g> TO:#<g>ULTRA<g> <w>BOOST<w> YOUR GAS#COSTS <g>RADS<g>";
	if isUnique
	{
		race_vision[23] = string_replace_all(race_vision[23],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_vision_detail[23] = race_vision[23];
	race_lock[23] = "KILL BALL MOM TO UNLOCK"
	race_have[23] = 0
	race_swep[23] = 348//FROG BLASTER
	race_bskin[23] = 0
	race_cskin[23] = 0
	race_dskin[23] = 0
	race_eskin[23] = 0
	race_fskin[23] = 0
	race_gskin[23] = 0
	race_bskin_lock[23] = "USE TWO DIFFERENT#TOXIC WEAPONS#IN THE SAME RUN#AS FROG"
	race_cskin_lock[23] = "REACH AND BEAT#THE THRONE#AS FROG#ON THE GAMEMODE:#DISC ROOM#WITH SETTINGS:#ATLEAST 6 DISCS#ATLEAST 2 DAMAGE"


	race_name[24] = "ELEMENTOR"//ELEMENTAL
	race_pass[24] = "STRONGER <b>LIGHTNING<b>,#<aq>FROST<aq>, <r>FIRE<r> AND <p>KRAKEN<p>"
	race_acti[24] = "<w>TERRAFORM<w> AT THE COST OF <y>AMMO<y>"//TERRAFORM
	race_butt[24] = "CHEAPER TERRAFORM#YOUR WALLS <w>DEFLECT<w> ENEMY PROJECTILES"
	race_butt_detail[24] = "33% CHEAPER TERRAFORM#YOUR WALLS <w>DEFLECT<w> ENEMY PROJECTILES"
	race_vision[24] = "PRESS <w>[E]<w> TO:#LAUNCH YOUR <w>WALLS!<w>";
	race_vision_detail[24] = "PRESS <w>[E]<w> TO:#SEND OUT YOUR <w>WALLS<w>#LIKE PROJECTILES";
	if isUnique
	{
		race_vision[24] = string_replace_all(race_vision[24],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[24] = string_replace_all(race_vision_detail[24],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[24] = "REACH MUSHROOM LAND TO UNLOCK"//TAKE HEAVY HEART
	race_have[24] = 0
	race_swep[24] = 337//MINI LIGHTNING PISTOL//102//FROST PISTOL
	race_bskin[24] = 0
	race_cskin[24] = 0
	race_dskin[24] = 0
	race_eskin[24] = 0
	race_fskin[24] = 0
	race_gskin[24] = 0
	race_bskin_lock[24] = "BURN A FROZEN ENEMY#AS ELEMENTOR"
	race_cskin_lock[24] = "SUMMON 4 TINY KRAKENS#IN ONE AREA#USING CROWN OF DROWNING#AS ELEMENTOR"


	race_name[25] = "DOCTOR"//MUTATION SMITH
	race_pass[25] = "ALL <g>MUTATIONS<g> ARE UPGRADED#GETS LESS <g>RADIATION<g> FROM ENEMIES#START AT <g>LEVEL<g> <w>2<w>"//SLIGHTLY BETTER MUTATIONS# LEVELS SLOWER
	race_acti[25] = "CONVERT <r>LIFE<r> TO <g>RADS<g>"
	race_butt[25] = "YOUR <w>ACTIVE<w> ALSO#DEALS DAMAGE TO ALL ENEMIES ON SCREEN#AND STEALS SOME OF THEIR <g>RADS<g>"
	race_butt_detail[25] = race_butt[25];
	race_vision[25] = "HOLD <w>[E]<w> TO:#<w>TEMPORARILY<w> DISABLE <w>2<w> RANDOM <g>MUTATIONS<g>#AND START A <p>PLAGUE<p>#AT THE END OF THE <p>PLAGUE<p>#<r>HEAL<r> BASED ON <g>RADIATION<g> YOU <w>COLLECTED<w>";
	race_vision_detail[25] = "HOLD <w>[E]<w> TO:#<w>TEMPORARILY<w> DISABLE <w>2<w> RANDOM <g>MUTATIONS<g>#AND START A <p>PLAGUE<p>#INSTANTLY <w>COLLECT<w> ALL RADS#ALL <w>PICKUPS<w> AND <g>RADS<g>#SPREAD THE <p>PLAGUE<p>#AT THE END OF THE <p>PLAGUE<p>#<r>HEAL<r> BASED ON <g>RADIATION<g> YOU <w>COLLECTED<w>#ENABLE <g>MUTATIONS<g> AT THE END OF THE <w>AREA<w>";
	if isUnique
	{
		race_vision[25] = string_replace_all(race_vision[25],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[25] = string_replace_all(race_vision_detail[25],"HOLD <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[25] = "REACH LEVEL ULTRA TO UNLOCK"//REACH LEVEL ULTRA
	race_have[25] = 0
	race_swep[25] = 1
	race_bskin[25] = 0
	race_cskin[25] = 0
	race_dskin[25] = 0
	race_eskin[25] = 0
	race_fskin[25] = 0
	race_gskin[25] = 0
	race_bskin_lock[25] = "REACH LEVEL 8#BEFORE THE LABS#WHILE USING#THE MAIN PATH#AS DOCTOR"
	race_cskin_lock[25] = "PROFESSIONAL#SELFCARE"

	race_name[26] = "GOOD OL' HUMPHRY"//RUSTY GRANDPA SOLDIER
	//race_pass[26] = "LESS <r>MAX HP<r>#DEALING DAMAGE BUILDS UP <w>SKILL<w>##SKILL INCREASES ALL <w>DAMAGE DEALT<w>##SKILL DECREASES OVER TIME#AND WHEN YOU <aq>TAKE DAMAGE<aq>#"//"HITTING SHOTS BUILDS SKILL#MISSING RESETS SKILL#UNTIL YOU HIT A SHOT AGAIN#SKILL INCREASES DAMAGE"
	race_pass[26] = "LESS <r>MAX HP<r>#<w>DEALING DAMAGE<w> BUILDS UP <w>SKILL<w>#SKILL INCREASES YOUR <w>DAMAGE<w>"
	race_acti[26] = "<w>HALT<w> - COSTS <w>SKILL<w>"//"SLOW AND SHRINK#ENEMY PROJECTILES#AT THE COST OF#unequipped AMMO"//DISCIPLINE those bullets
	race_butt[26] = "#<w>SKILL<w> DECREASES SLOWER"
	race_butt_detail[26] = "#<w>SKILL<w> DECREASES 25% SLOWER#KEEP 5% MORE SKILL WHEN GETTING HIT"
	race_vision[26] = "PRESS <w>[E]<w> TO:#<w>STUN<w> YOURSELF AND#<w>DEAL DAMAGE<w> TO <r>ENEMIES<r> <w>NEAR<w> YOU#GAIN MORE <w>SKILL<w> DURING STUN";
	race_vision_detail[26] = "PRESS <w>[E]<w> TO:#<w>STUN<w> YOURSELF AND#DEAL <w>DAMAGE<w> TO ALL <r>ENEMIES<r> <w>NEAR<w> YOU#GAIN ADDITIONAL <w>SKILL<w> FOR#THE DAMAGE YOU DEAL USING THIS#<w>SKILL<w> DOES NOT DRAIN WHILE <w>STUNNED<w>";
	if isUnique
	{
		race_vision[26] = string_replace_all(race_vision[26],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[26] = string_replace_all(race_vision_detail[26],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[26] = "COLLECT FOUR BOSS BOUNTIES"//SOMETHING A LITTLE HARDER
	race_have[26] = 0
	race_swep[26] = 148
	race_bskin[26] = 0
	race_cskin[26] = 0
	race_dskin[26] = 0
	race_eskin[26] = 0
	race_fskin[26] = 0
	race_gskin[26] = 0
	race_bskin_lock[26] = "PERFORM 20 CLOSE DODGES#USING EXTRA FEET#IN ONE RUN#AS HUMPHRY"//"COMPLETE A#MAIN AREA#AFTER THE SCRAPYARD#WITHOUT MISSING#AS GOOD OL'HUMPHRY"
	race_cskin_lock[26] = "REACH 500 SKILL!"
	
	race_name[27] = "HANDS"
	race_pass[27] = "HIGHER CHANCE FOR <w>INVERTED PORTALS<w>#<w>INVERTED PORTALS<w> (OVER) <r>HEAL<r> <w>2<w><r>HP<r>"
	race_acti[27] = "PRESS/HOLD TO <w>GRAB<w>#CHESTS/WEAPONS/ENEMIES"
	race_butt[27] = "<w>PUSH<w> ENEMIES INSTEAD#YOUR HAND DEALS MORE DAMAGE"
	race_butt_detail[27] = "<w>PUSH<w> ENEMIES INSTEAD#YOUR HAND DEALS MORE DAMAGE##ENEMIES PUNCHED INTO WALLS#TAKE EVEN MORE DAMAGE"
	race_vision[27] = "PRESS <w>[E]<w> TO:#CAST A <aq>SHIELD<aq>#AROUND YOUR <w>HAND<w>";
	race_vision_detail[27] = "PRESS <w>[E]<w> TO:#CREATE A TEMPORARY AREA OF <aq>PROTECTION<aq>#AROUND YOUR <w>HAND<w>#THE AREA DEALS INITIAL DAMAGE#AND BLOCKS <pi>SQUARES<pi>";
	if isUnique
	{
		race_vision[27] = string_replace_all(race_vision[27],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
		race_vision_detail[27] = string_replace_all(race_vision_detail[27],"PRESS <w>[E]","PRESS <w>["+regalBut+"]");
	}
	race_lock[27] = "KILL THE INVERTED THRONE TO UNLOCK"
	race_have[27] = 0
	race_swep[27] = 443
	race_bskin[27] = 0
	race_cskin[27] = 0
	race_dskin[27] = 0
	race_eskin[27] = 0
	race_fskin[27] = 0
	race_gskin[27] = 0
	race_bskin_lock[27] = "SLAP#THE PURPLE DRAGON#TO DEATH#(KILL WITH ACTIVE)"
	race_cskin_lock[27] = "SUCKERPUNCH#THREE IDPD VANS#INTO OBLIVION#IN A SINGLE RUN#(KILL WITH THRONE BUTT)"
	/*
	race_name[28] = "NOTHING"
	race_pass[28] = "START WITH 1<r>HP<r>#GAIN <r>HP<r> AS YOU LEVEL UP#GET <g>ULTRA<g> AT LEVEL 5#UPGRADE ULTRA AT LEVEL 10"
	race_acti[28] = "VOID CONSUMPTION:#CONSUME <y>RES<y><g>OUR<g><r>CES<r> IN THE PLAYAREA#TO DESTROY EVERYTHING"
	race_butt[28] = "BIGGER VOID CONSUMPTION"
	race_butt_detail[28] = "BIGGER VOID CONSUMPTION"
	race_inpsiration[28] = "PRESS <w>[E]<w> TO:#TRIGGER VOID CONSUMPTION AROUND YOU#FOR TWO HEALTH";
	race_inpsiration_detail[28] = "PRESS <w>[E]<w> TO:#TRIGGER VOID CONSUMPTION AROUND YOU#FOR TWO HEALTH";
	race_lock[28] = "BUY ME IN THE VOID"
	race_have[28] = 0
	race_swep[28] = 443//VOID DAGGER
	race_bskin[28] = 0
	race_cskin[28] = 0
	race_dskin[28] = 0
	race_eskin[28] = 0
	race_fskin[28] = 0
	race_gskin[28] = 0
	race_bskin_lock[28] = "CONSUME ATLEAST 20 RADS IN ONE ACTIVE USAGE"
	race_cskin_lock[28] = "COMPLETE A VOID CHALLENGE AS NOTHING"

	THIEF
	PASSIVE: WHEN OUT OF LINE OF SIGHT FROM ENEMIES#BECOME INVISIBLE#WHEN INVISIBLE YOU ARE IMMUNE
	ACTIVE: IF INVISIBLE AND CLOSE TO AN ENEMY: STEAL AMMO AND HEALTH AND REVEAL YOURSELF
	IF NOT INVISIBLE:
	
	race_name[28] = "THIEF"
	race_pass[28] = "WHEN OUT OF ENEMY LINE OF SIGHT BECOME INVISIBLE"
	//YOU HAVE A SPEED BOOST WHEN INVISIBLE
	race_acti[28] = "STEAL AMMO AND HEALTH FROM ENEMIES"
	//WHEN NOT INVISIBLE THIS IS A HOLD...
	//WHEN INVISIBLE THIS IS INSTANT BUT REVEALS YOU
	race_butt[28] = "BIGGER VOID CONSUMPTION"
	//DONT REVEAL YOURSELF WHEN STEALING FOR THE FIRST TIME UPON ENTERING STEALTH
	race_butt_detail[28] = "BIGGER VOID CONSUMPTION"
	race_inpsiration[28] = "PRESS <w>[E]<w> TO:#SACRIFICE TWO HEALTH AND ENTER STEALTH";
	race_inpsiration_detail[28] = "PRESS <w>[E]<w> TO:#VOID CONSUME ONE HEALTH";
	race_lock[28] = KILL 5 THIEFS"
	race_have[28] = 0
	race_swep[28] = 1//REVOLVER
	race_bskin[28] = 0
	race_cskin[28] = 0
	race_dskin[28] = 0
	race_eskin[28] = 0
	race_fskin[28] = 0
	race_gskin[28] = 0
	race_bskin_lock[28] = "CONSUME ATLEAST 20 RADS IN ONE ACTIVE USAGE"
	race_cskin_lock[28] = "COMPLETE A VOID CHALLENGE AS NOTHING"
	
	*/
	racemax = 27;
}
