function scrCrowns() {
	crown_name[0] = "[RANDOM]"
	crown_text[0] = "GET ANY <w>RANDOM<w> <y>CROWN<y>#INCLUDING SECRET CROWNS"
	crown_used[0] = 0
	crown_tips[0] = ""

	crown_name[1] = "[NONE]"
	crown_text[1] = "A BARE HEAD#IS A FAIR HEAD"
	crown_used[1] = 0
	crown_tips[1] = ""

	crown_name[2] = "[CROWN OF LIFE]"
	//crown_text[2] = "RESET LIFE TO MAX HP# AT THE END OF EACH LEVEL#NO HP DROPS"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
	{
		//crown_text[2] = "NO <gb>ARMOUR DROPS<gb>#AT THE END OF EACH AREA#RESET <gb>ARMOUR<gb> TO MAX <gb>ARMOUR<gb>#MORE <gb>ARMOUR<gb> CHESTS"
		crown_text[2] = "NO <gb>ARMOUR DROPS<gb>#AT THE END OF EACH AREA#REGAIN 25% <gb>ARMOUR<gb> MAX <gb>ARMOUR<gb>#MORE <gb>ARMOUR<gb> CHESTS"
	}
	else
		crown_text[2] = "NO <r>HEALTH<r> DROPS#AT THE END OF EACH AREA#RESET <r>HP<r> TO <r>MAX HP<r>#MORE <r>HEALTH<r> <w>CHESTS<w>"
		//#IF YOU ALREADY HAVE <r>MAX HP<r>#<w>OVERHEAL<w> 1<r>HP<r>"
	crown_used[2] = 0
	crown_tips[2] = "life"

	crown_name[3] = "[CROWN OF DEATH]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[3] = "<w>-1<w> <gb>MAX ARMOUR<gb>#BIGGER EXPLOSIONS"
	else
		crown_text[3] = "<w>-1<w> <r>MAX HP<r>#BIGGER <w>EXPLOSIONS<w>"
	crown_used[3] = 0
	crown_tips[3] = "nothing goes unpunished"

	crown_name[4] = "[CROWN OF HASTE]"
	crown_text[4] = "<y>RES<y><g>OUR<g><r>CES<r> FADE FAST#ARE WORTH MORE"
	crown_used[4] = 0
	crown_tips[4] = "no time for jokes"

	crown_name[5] = "[CROWN OF GUNS]"
	crown_text[5] = "NO <y>AMMO<y> DROPS#MORE <w>WEAPON<w> DROPS"
	crown_used[5] = 0
	crown_tips[5] = "guns are your friend"

	crown_name[6] = "[CROWN OF HATRED]"
	// crown_text[6] = "LOSE <r>HEALTH<r> & GAIN <g>RADIATION<g> OVER TIME"
	crown_text[6] = "TAKE <r>DAMAGE<r> WHEN OPENING A <w>CHEST<w>#AND GAIN <g>RADIATION<g>"
	crown_used[6] = 0
	crown_tips[6] = "something is wrong"

	crown_name[7] = "[CROWN OF BLOOD]"
	crown_text[7] = "MORE <r>ENEMIES<r>#LESS <g>RADS<g>"
	crown_used[7] = 0
	crown_tips[7] = "bring it"

	crown_name[8] = "[CROWN OF DESTINY]"
	crown_text[8] = "QUICK <g>MUTATIONS<g>#NARROW <w>FUTURE<w>"
	crown_used[8] = 0
	crown_tips[8] = "no such thing as free will"

	crown_name[9] = "[CROWN OF LOVE]"
	crown_text[9] = "<y>AMMO<y> CHESTS ONLY"
	crown_used[9] = 0
	crown_tips[9] = "you really like these weapons"

	crown_name[10] = "[CROWN OF DIFFICULTY]"
	crown_text[10] = "<w>WEAPON<w> DROP <y>TIER<y> INCREASES#MORE EACH AREA#ENEMIES HAVE MORE <r>HEALTH<r>#AND ARE MORE <r>AGGRESSIVE<r>"
	crown_used[10] = 0
	crown_tips[10] = "acceleration"

	crown_name[11] = "[CROWN OF REINCARNATION]"
	crown_text[11] = "<w>DIE<w> AND BE <w>REBORN<w>#FOR ONE AREA YOU HAVE <w>INFINITE<w> <y>AMMO<y>"
	if instance_exists(Player) && !Player.disableAltUltra && (Player.level > 8 || Player.boostLevel > 8)
	{
		crown_text[11] = "<w>DIE<w> AND BE <w>REBORN<w>#FOR ONE AREA YOU HAVE <w>INFINITE<w> <y>AMMO<y>#UNLOCK <w>ALTERNATIVE<w> <g>ULTRA MUTATIONS<g>"
	}
	crown_used[11] = 0
	crown_tips[11] = "new born"

	crown_name[12] = "[CROWN OF INVERSION]"
	crown_text[12] = "HIGHER CHANCE FOR#<w>INVERTED PORTALS<w> TO APPEAR"
	crown_used[12] = 0
	crown_tips[12] = "looking for the blue stuff"

	crown_name[13] = "[CROWN OF DROWNING]"
	crown_text[13] = "DOUBLE <y>AMMO<y> COST#AT THE END OF EACH AREA#GAIN SOME <y>AMMO<y>#WHENEVER YOU RUN OUT OF <y>AMMO<y>#YOUR <y>CROWN<y> SUMMONS A <pi>TINY<pi> <p>KRAKEN<p>"
	crown_used[13] = 0
	crown_tips[13] = "sinking"
/*
	crown_name[13] = "[CROWN OF SELECTION]"
	crown_text[13] = "HIGHER <w>DROPRATE<w>#ENEMIES DROP NO <g>RADS<g>"
	crown_used[13] = 0
	crown_tips[13] = "don't need rads"
*/
	crown_name[14] = "[CROWN OF CURSES]"
	crown_text[14] = "MORE <p>CURSED<p> CHESTS#<w>UNCURSING<w> (OVER)<r>HEALS<r> 1HP"
	crown_used[14] = 0
	crown_tips[14] = "something strange"
	
	crown_name[15] = "[CROWN OF CHOICE]"
	if instance_exists(Player) && Player.ultra_got[31]
		crown_text[15] = "REMOVE YOUR <pi>TERTIARY<pi> <w>WEAPON<w>#WHEN YOU GO THROUGH A <p>PORTAL<p>#<w>MORE CHESTS<w>#SLIGHTLY MORE <w>WEAPON<w> DROPS"
	else
		crown_text[15] = "REMOVE YOUR SECONDARY <w>WEAPON<w>#WHEN YOU GO THROUGH A <p>PORTAL<p>#<w>MORE CHESTS<w>#SLIGHTLY MORE <w>WEAPON<w> DROPS"
	crown_used[15] = 0
	crown_tips[15] = "this crown used to be in the game#but without the increased weapon droprate"
/*
	crown_name[15] = "[CROWN OF MASSACRE]"
	crown_text[15] = "EVEN MORE ENEMIES#EVEN LESS RADS"
	crown_used[15] = 0
	crown_tips[15] = "double crown of blood"
*/
	crown_name[16] = "[CROWN OF POPO]"
	crown_text[16] = "AN EXTRA <b>VAN<b> SPAWNS EACH AREA#<b>POPO<b> DROP <g>RADS<g>"
	crown_used[16] = 0
	crown_tips[16] = "in love with da popo"

	crown_name[17] = "[CROWN OF INDECISION]"
	crown_text[17] = "REPLACE <w>WEAPON MOD STATIONS<w>#WITH <g>ULTRA CHESTS<g>"
	crown_used[17] = 0
	crown_tips[17] = "diversity"

	crown_name[18] = "[CROWN OF GREED]"
	crown_text[18] = "YOU TAKE <r>DOUBLE DAMAGE<r>#INCREASE <w>VALUE<w> OF <g>RADIATION<g>"
	crown_used[18] = 0
	crown_tips[18] = "crown of green"
	
	crown_name[19] = "[CROWN OF BLINDNESS]"
	crown_text[19] = "EVERY AREA IS <p>DARK<p>#ENEMIES CAN HIT EACH OTHER"
	crown_used[19] = 0
	crown_tips[19] = "friendly fire"
	
	crown_name[20] = "[CROWN OF PROTECTION]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[20] = "NO <y>AMMO<y> FROM <w>WEAPON<w> DROPS#EVERY THIRD <r>WEAPON CHEST<r> GIVES <w>1<w> <gb>ARMOUR<gb>"
	else
		crown_text[20] = "REPLACE <w>1<w> <r>MAX HEALTH<r> WITH <w>1<w> <gb>MAX ARMOUR<gb>#NO <y>AMMO<y> FROM <w>WEAPON<w> DROPS#EVERY FOURTH <w>WEAPON<w> DROP GIVES <w>1<w> <gb>ARMOUR<gb>"
	crown_used[20] = 0
	crown_tips[20] = "stay safe"
	
	crown_name[21] = "[CROWN OF RISK]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[21] = "70% HIGHER <r>HP<r>/<y>AMMO<y> <w>DROP RATE<w>#WHEN ABOVE 75% <gb>MAX ARMOUR<gb>#50% LOWER <r>HP<r>/<y>AMMO<y> <w>DROP RATE<w>#WHEN BELOW 75% <gb>MAX ARMOUR<gb>"
	else
		crown_text[21] = "70% HIGHER <r>HP<r>/<y>AMMO<y> <w>DROP RATE<w>#WHEN ABOVE 75% <r>MAX HP<r>#50% LOWER <r>HP<r>/<y>AMMO<y> <w>DROP RATE<w>#WHEN BELOW 75% <r>MAX HP<r>"
	
	crown_used[21] = 0
	crown_tips[21] = "a risk worth taking"
	
	crown_name[22] = "[CROWN OF LUCK]"
	crown_text[22] = "START EACH AREA WITH 1 <r>HP<r>#CHANCE ANY ENEMY#SPAWNS IN WITH 10% <r>HP<r>##(CHANCE IS LOWER FOR#HIGHER HEALTH ENEMIES)"
	crown_used[22] = 0
	crown_tips[22] = "crown of 1hp equality"
	
	crown_name[23] = "[CROWN OF SPEED]"
	crown_text[23] = "ALL PROJECTILES ARE <w>FASTER<w>#EVERYONE MOVES SLIGHTLY <w>FASTER<w>"
	crown_used[23] = 0
	crown_tips[23] = "gotta go fast"
	
	//Secret crown of destiny
	crown_name[24] = "[CROWN OF SLOTH]"
	crown_text[24] = "ALL PROJECTILES ARE <w>SLOWER<w>#EVERYONE MOVES SLIGHTLY <w>SLOWER<w>";
	//crown_text[24] = "ALL PROJECTILES ARE <w>SLOWER<w>#EVERYONE MOVES SLIGHTLY <w>SLOWER<w>#EACH AREA THE <w>DIFFICULTY<w>#AND WEAPON <y>TIER<y> DECREASES#INSTEAD OF INCREASES"
	crown_used[24] = 0
	crown_tips[24] = "slow it down there buddy"
	
	//Secret crown two explosive weapons
	crown_name[25] = "[CROWN OF FREEDOM]"
	crown_text[25] = "<w>WALLS<w> DON'T EXIST"
	crown_used[25] = 0
	crown_tips[25] = "remove all barriers"
	
	//Secret crown two energy weapons
	crown_name[26] = "[CROWN OF ENERGY]"
	crown_text[26] = "THE CROWN GETS A <g>LASER PISTOL<g>#AND FIGHTS WITH YOU#CONSTANT <g>ION STRIKES<g> RAIN DOWN UPON YOU"
	crown_used[26] = 0
	crown_tips[26] = "just give it a gun and it is fun"
	
	//Morph or disco
	crown_name[27] = "[CROWN OF DISCO]"
	crown_text[27] = "<pi>DANCE BABY DANCE!<pi>#WARNING FLASHING LIGHTS"
	crown_used[27] = 0
	crown_tips[27] = "disco!"
	
	//COB
	crown_name[28] = "[CROWN OF APOCALYPSE]"
	crown_text[28] = "<r>GORE GALORE!<r>#ABSURD AMOUNT OF <w>ENEMIES<w>!#ALMOST NO <g>RADS<g>"
	crown_used[28] = 0
	crown_tips[28] = "your death has been signed#when you gave in to your greed"
	
	//Weapon mods
	crown_name[29] = "[CROWN OF PURITY]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[29] = "DISABLE <w>WEAPON MODS<w>#FOR EACH <w>WEAPON MOD<w> ON A WEAPON#GAIN +1 <gb>MAX ARMOUR<gb>#WHILE HOLDING THAT WEAPON"
	else
		crown_text[29] = "DISABLE <w>WEAPON MODS<w>#FOR EACH <w>WEAPON MOD<w> ON A WEAPON#GAIN +1 <r>MAX HP<r>#WHILE HOLDING THAT WEAPON"
	crown_used[29] = 0
	crown_tips[29] = "pure"
	
	//Daily
	crown_name[30] = "[CROWN OF MERCENARY]"
	crown_text[30] = "<w>+1<w> <r>MAX HP<r># AT THE END OF EACH AREA#LOSE 20 <w>KILLS<w>"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[30] = "+1 <gb>MAX ARMOUR<gb># AT THE END OF EACH AREA#LOSE 20 <w>KILLS<w>"
	crown_used[30] = 0
	crown_tips[30] = "there is no crime worse than tax fraud"
	
	//Mercenary
	crown_name[31] = "[CROWN OF BOUNTY]"
	crown_text[31] = "<w>-2<w> <r>MAX HP<r># AT THE END OF EACH AREA#GAIN 40 <w>KILLS<w>"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[31] = "-2 <gb>MAX ARMOUR<gb># AT THE END OF EACH AREA#GAIN 40 <w>KILLS<w>"
	crown_used[31] = 0
	crown_tips[31] = "no pain no gain"
	
	//MISFORTUNE have luck
	crown_name[32] = "[CROWN OF MISFORTUNE]"
	crown_text[32] = "SIGNIFICANTLY LOWER <w>DROP RATE<w>#PICKUPS GIVE BOTH <r>HEALTH<r> AND <y>AMMO<y>#INCREASE <y>AMMO<y> VALUE OF DROPS"
	crown_used[32] = 0
	crown_tips[32] = "don't leave it up to chance"
	
	//Visit a vault twice with the same crown?
	crown_name[33] = "[CROWN OF ECHO]"
	crown_text[33] = "YOUR WEAPONS FIRE <w>TWICE<w>#<w>RELOAD TIME<w> IS ALMOST <w>DOUBLED<w>"
	crown_used[33] = 0
	crown_tips[33] = "duplication"
	
	//take rush crown
	crown_name[34] = "[CROWN OF TIME]"
	crown_text[34] = "REPLACE YOUR ACTIVE WITH <w>REWIND<w>:#RESET <p>TIME<p>#TO THE START OF THE CURRENT AREA##CAN BE USED ONCE EACH AREA#TWICE IF YOU HAVE <g>THRONEBUTT<g>"
	crown_used[34] = 0
	crown_tips[34] = "again"

	//PRESS ACTIVE ON CROWN SELECT
	crown_name[35] = "[CROWN OF DICHOTOMY]"
	crown_text[35] = "WHENEVER YOU TRY TO USE YOUR <w>ACTIVE<w>#TAKE <w>1<w> <r>DAMAGE<r>#AND GAIN SOME <y>AMMO<y>"
	crown_used[35] = 0
	crown_tips[35] = "lifetap"
	
	//WAIT 4 SECONDS ON CROWN SELECT
	crown_name[36] = "[CROWN OF STABILITY]"
	crown_text[36] = "<w>WHILE IN COMBAT<w>:#<r>HEALTH<r> SLOWLY <w>RESETS<w> TO <w>4<w>"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[36] = "<w>WHILE IN COMBAT<w>:#<gb>ARMOUR<gb> SLOWLY <w>RESETS<w> TO <w>4<w>"
	crown_used[36] = 0
	crown_tips[36] = "balance and stabalize"
	
	//ENTER CROWNVAULT IN AN INVERTED AREA
	crown_name[37] = "[CROWN OF FRIGHT]"
	crown_text[37] = "<w>EXCESS DAMAGE<w> SPAWNS A <b>GHOST<b>#THE <b>GHOST<b> <r>EXPLODES<r>#DEALING HALF THE EXCESS DAMAGE#CAN DAMAGE ANYONE!"
	crown_used[37] = 0
	crown_tips[37] = "haunted"
	
	//NEAR MAX AMMO ON PRIMARY
	crown_name[38] = "[CROWN OF ABUNDANCE]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[38] = "WHEN YOUR <w>PRIMARY<w> <y>AMMO<y> IS <g>ABOVE<g> <w>50%<w>#<w>INCREASE<w> <gb>MAX ARMOUR<gb> BY <w>3<w>#IF NOT <r>REDUCE<r> IT BY <w>3<w>##DOES NOT WORK ON WEAPONS#THAT DO NOT USE AMMO";
	else
		crown_text[38] = "WHEN YOUR <w>PRIMARY<w> <y>AMMO<y> IS <g>ABOVE<g> <w>50%<w>#<w>INCREASE<w> <r>MAX HEALTH<r> BY <w>3<w>#IF NOT <r>REDUCE<r> IT BY <w>3<w>##DOES NOT WORK ON WEAPONS#THAT DO NOT USE AMMO";
	crown_used[38] = 0
	crown_tips[38] = "fuel for days"
	
	//BELOW MAX HP
	crown_name[39] = "[CROWN OF DANGER]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[39] = "WHEN <gb>ARMOUR<gb> IS BELOW <gb>MAX ARMOUR<gb>#<g>REDUCE<g> WEAPON <y>AMMO<y>/<g>RAD<g> <w>COST<w> BY <w>5%<w>#OTHERWISE:#<r>INCREASE<r> WEAPON <y>AMMO<y>/<g>RAD<g> <w>COST<w> BY <w>15%<w>";
	else
		crown_text[39] = "WHEN <r>HEALTH<r> IS BELOW <r>MAX HP<r>#<g>REDUCE<g> WEAPON <y>AMMO<y>/<g>RAD<g> <w>COST<w> BY <w>5%<w>#OTHERWISE:#<r>INCREASE<r> WEAPON <y>AMMO<y>/<g>RAD<g> <w>COST<w> BY <w>15%<w>";
	//crown_text[39] = "WHEN <r>HEALTH<r> IS BELOW <r>MAX HP<r>#<g>REFUND<g> 7% <y>AMMO<y> <w>COST<w> WHEN FIRING#OTHERWISE:#<r>TAKE<r> 5% <y>AMMO<y> WHEN FIRING";
	crown_used[39] = 0
	crown_tips[39] = "a wounded animal is at its most dangerous"
	
	//HAVE A MELEE WEAPON
	crown_name[40] = "[CROWN OF A THOUSAND CUTS]"
	crown_text[40] = "INCREASE <w>MELEE<w> <aq>DEFLECT<aq> DURATION#MELEE CAN <aq>DESTROY<aq> <pi>SQUARES<pi>##IT WILL NOW COST <w>MELEE<w> <y>AMMO<y>#TO <aq>DEFLECT<aq> A PROJECTILE";
	crown_used[40] = 0
	crown_tips[40] = "hone your sword"
	
	//ONLY IN BASIC ROUTE
	crown_name[41] = "[CROWN OF MEDIOCRITY]"
	crown_text[41] = "YOUR <r>HEALTH<r> CANNOT GO <w>BELOW 2<w>#UNLESS YOU TAKE A <r>LETHAL HIT<r>#YOUR <r>HEALTH<r> CANNOT REACH#<w>HIGHER THAN 1<w> BELOW YOUR <r>MAX HP<r>";
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[41] = "WHEN YOU REACH 2 <gb>ARMOUR<gb>#BECOME <aq>IMMUNE<aq> FOR A SHORT PERIOD#YOUR <gb>ARMOUR<gb> CANNOT REACH#HIGHER THAN <w>1<w> BELOW YOUR <gb>MAX ARMOUR<gb>#YOUR ACTIVE CAN'T KILL YOU";
	crown_used[41] = 0
	crown_tips[41] = "a happy medium"
	
	//NEAR EMPTY ON PRIMARY
	crown_name[42] = "[CROWN OF SCARCITY]"
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		crown_text[42] = "WHEN YOUR <w>PRIMARY<w> <y>AMMO<y> IS <r>BELOW<r> <w>50%<w>#<w>INCREASE<w> <gb>MAX ARMOUR<gb> BY <w>3<w>#IF NOT <r>REDUCE<r> IT BY <w>3<w>##DOES NOT WORK ON WEAPONS#THAT DO NOT USE AMMO";
	else
		crown_text[42] = "WHEN YOUR <w>PRIMARY<w> <y>AMMO<y> IS <r>BELOW<r> <w>50%<w>#<w>INCREASE<w> <r>MAX HEALTH<r> BY <w>3<w>#IF NOT <r>REDUCE<r> IT BY <w>3<w>##DOES NOT WORK ON WEAPONS#THAT DO NOT USE AMMO";
	crown_used[42] = 0
	crown_tips[42] = "starving"
	
	//CROWN START
	crown_name[43] = "[CROWN OF FROG]"
	crown_text[43] = "<g>LEVEL UP!<g>#START IN THE <g>SEWERS<g>"
	crown_used[43] = 0
	crown_tips[43] = "quick start"
	
	//have nerves of steel or adrenline fuel?
	/*
	crown_name[35] = "[CROWN OF AGGRESSION]"
	crown_text[35] = "TAKE DAMAGE OVER TIME#+10% RELOAD SPEED"
	crown_used[35] = 0
	crown_tips[35] = "again"
	*/
	
	crownmax = 23
	secretcrownmax = 21;



}
