function scrCrowns() {
	crown_name[0] = "[RANDOM]"
	crown_text[0] = "???"
	crown_used[0] = 0
	crown_tips[0] = ""

	crown_name[1] = "[NONE]"
	crown_text[1] = "A BARE HEAD#IS A FAIR HEAD"
	crown_used[1] = 0
	crown_tips[1] = ""

	crown_name[2] = "[CROWN OF LIFE]"
	//crown_text[2] = "RESET LIFE TO MAX HP# AT THE END OF EACH LEVEL#NO HP DROPS"
	crown_text[2] = "NO HEALTH DROPS#AT THE END OF EACH AREA#RESET HP TO MAX HP#IF YOU ALREADY HAVE MAX HP#OVERHEAL 1HP"
	crown_used[2] = 0
	crown_tips[2] = "life"

	crown_name[3] = "[CROWN OF DEATH]"
	crown_text[3] = "-1 MAX HP#BIGGER EXPLOSIONS"
	crown_used[3] = 0
	crown_tips[3] = "nothing goes unpunished"

	crown_name[4] = "[CROWN OF HASTE]"
	crown_text[4] = "PICKUPS FADE FAST#ARE WORTH MORE"
	crown_used[4] = 0
	crown_tips[4] = "no time for jokes"

	crown_name[5] = "[CROWN OF GUNS]"
	crown_text[5] = "NO AMMO DROPS#MORE WEAPON DROPS"
	crown_used[5] = 0
	crown_tips[5] = "guns are your friend"

	crown_name[6] = "[CROWN OF HATRED]"//THIS ONE SUCKS
	crown_text[6] = "LOSE HEALTH & GAIN RADIATION OVER TIME"
	crown_used[6] = 0
	crown_tips[6] = "something is wrong"

	crown_name[7] = "[CROWN OF BLOOD]"
	crown_text[7] = "MORE ENEMIES#LESS RADS"
	crown_used[7] = 0
	crown_tips[7] = "bring it"

	crown_name[8] = "[CROWN OF DESTINY]"
	crown_text[8] = "FREE MUTATION#NARROW FUTURE"
	crown_used[8] = 0
	crown_tips[8] = "no such thing as free will"

	crown_name[9] = "[CROWN OF LOVE]"
	crown_text[9] = "AMMO CHESTS ONLY"
	crown_used[9] = 0
	crown_tips[9] = "you really like these weapons"

	crown_name[10] = "[CROWN OF DIFFICULTY]"
	crown_text[10] = "THE DIFFICULTY & WEAPON TIER INCREASES#MORE EACH AREA"
	crown_used[10] = 0
	crown_tips[10] = "acceleration"

	crown_name[11] = "[CROWN OF REINCARNATION]"
	crown_text[11] = "DIE AND BE REBORN"
	crown_used[11] = 0
	crown_tips[11] = "new born"

	crown_name[12] = "[CROWN OF INVERSION]"
	crown_text[12] = "HIGHER CHANCE FOR#INVERTED PORTALS TO APPEAR"
	crown_used[12] = 0
	crown_tips[12] = "looking for the blue stuff"

	crown_name[13] = "[CROWN OF NATURAL SELECTION]"
	crown_text[13] = "HIGHER DROPRATE#ENEMIES DROP NO RADS"
	crown_used[13] = 0
	crown_tips[13] = "don't need rads"

	crown_name[14] = "[CROWN OF CURSES]"
	crown_text[14] = "MORE CURSED CHESTS"
	crown_used[14] = 0
	crown_tips[14] = "something strange"
	
	crown_name[15] = "[CROWN OF CHOICE]"
	if instance_exists(Player) && Player.ultra_got[31]
		crown_text[15] = "REMOVE YOUR TERTIARY WEAPON#WHEN YOU GO THROUGH A PORTAL#MORE CHESTS#SLIGHTLY MORE WEAPON DROPS"
	else
		crown_text[15] = "REMOVE YOUR SECONDARY WEAPON#WHEN YOU GO THROUGH A PORTAL#MORE CHESTS#SLIGHTLY MORE WEAPON DROPS"
	crown_used[15] = 0
	crown_tips[15] = "this crown used to be in the game#but without the increased weapon droprate"
/*
	crown_name[15] = "[CROWN OF MASSACRE]"
	crown_text[15] = "EVEN MORE ENEMIES#EVEN LESS RADS"
	crown_used[15] = 0
	crown_tips[15] = "double crown of blood"
*/
	crown_name[16] = "[CROWN OF POPO]"
	crown_text[16] = "AN EXTRA VAN SPAWNS EACH AREA#POPO DROP RADS"
	crown_used[16] = 0
	crown_tips[16] = "in love with da popo"

	crown_name[17] = "[CROWN OF INDECISION]"
	crown_text[17] = "REPLACE WEAPON MOD STATIONS#WITH ULTRA CHESTS"
	crown_used[17] = 0
	crown_tips[17] = "diversity"

	crown_name[18] = "[CROWN OF GREED]"
	crown_text[18] = "YOU TAKE DOUBLE DAMAGE#INCREASE VALUE OF RADIATION"
	crown_used[18] = 0
	crown_tips[18] = "crown of green"
	
	crown_name[19] = "[CROWN OF BLINDNESS]"
	crown_text[19] = "EVERY AREA IS DARK#ENEMIES CAN HIT EACH OTHER"
	crown_used[19] = 0
	crown_tips[19] = "friendly fire"
	
	crown_name[20] = "[CROWN OF PROTECTION]"
	if instance_exists(Player) && Player.skill_got[9]
		crown_text[20] = "WEAPON DROPS (OVER) HEAL 2HP#INSTEAD OF GIVING AMMO";
	else
		crown_text[20] = "WEAPON DROPS (OVER) HEAL 1HP#INSTEAD OF GIVING AMMO"
	crown_used[20] = 0
	crown_tips[20] = "stay safe"//Always use protection..  that joke is too predictable
	
	crown_name[21] = "[CROWN OF RISK]"
	crown_text[21] = "70% HIGHER DROPRATE#WHEN ABOVE 75% MAX HP#50% LOWER DROPRATE#WHEN BELOW 75% MAX HP"
	crown_used[21] = 0
	crown_tips[21] = "a risk worth taking"
	
	crown_name[22] = "[CROWN OF LUCK]"
	crown_text[22] = "START EACH AREA WITH 1 HP#25% CHANCE ANY ENEMY#SPAWNS IN WITH 10% HP"
	crown_used[22] = 0
	crown_tips[22] = "crown of 1hp equality"
	
	crown_name[23] = "[CROWN OF SPEED]"
	crown_text[23] = "ALL PROJECTILES ARE FASTER#EVERYONE MOVES SLIGHTLY FASTER"
	crown_used[23] = 0
	crown_tips[23] = "gotta go fast"
	
	//Secret crown of destiny
	crown_name[24] = "[CROWN OF SLOTH]"
	crown_text[24] = "ALL PROJECTILES ARE SLOWER#EVERYONE MOVES SLIGHTLY SLOWER#EACH AREA THE DIFFICULTY#AND WEAPON TIER DECREASES#INSTEAD OF INCREASES"
	crown_used[24] = 0
	crown_tips[24] = "slow it down there buddy"
	
	//Secret crown two explosive weapons
	crown_name[25] = "[CROWN OF FREEDOM]"
	crown_text[25] = "WALLS DON'T EXIST"
	crown_used[25] = 0
	crown_tips[25] = "freedom!"
	
	//Secret crown two energy weapons
	crown_name[26] = "[CROWN OF ENERGY]"
	crown_text[26] = "THE CROWN GETS A LASER PISTOL#AND FIGHTS WITH YOU#CONSTANT ION STRIKES RAIN DOWN UPON YOU"
	crown_used[26] = 0
	crown_tips[26] = "just give it a gun and it is fun"
	
	crown_name[27] = "[CROWN OF DISCO]"
	crown_text[27] = "DANCE BABY DANCE!#WARNING FLASHING LIGHTS"
	crown_used[27] = 0
	crown_tips[27] = "disco!"
	
	crown_name[28] = "[CROWN OF APOCALYPSE]"
	crown_text[28] = "ABSURD AMOUNT OF ENEMIES!#ALMOST NO RADS"
	crown_used[28] = 0
	crown_tips[28] = "your death has been signed#when you gave in to your greed"
	
	crown_name[29] = "[CROWN OF PURITY]"
	crown_text[29] = "DISABLE WEAPON MODS#FOR EACH WEAPON MOD ON A WEAPON#GAIN +1 MAX HP#WHILE HOLDING THAT WEAPON"
	crown_used[29] = 0
	crown_tips[29] = "pure"

	crownmax = 23//+7



}
