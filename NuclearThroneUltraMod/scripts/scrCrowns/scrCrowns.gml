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
	crown_text[13] = "HIGHER DROPRATE#NO RADS"
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

	crown_name[17] = "[CROWN OF APOCALYPSE]"
	crown_text[17] = "ABSURD AMOUNT OF ENEMIES!#ALMOST NO RADS"
	crown_used[17] = 0
	crown_tips[17] = "your death has been signed#when you gave in to your greed"

	crown_name[18] = "[CROWN OF DISCO]"
	crown_text[18] = "DANCE BABY DANCE!#WARNING FLASHING LIGHTS"
	crown_used[18] = 0
	crown_tips[18] = "bullet disco!"
	
	crown_name[19] = "[CROWN OF BLINDNESS]"
	crown_text[19] = "EVERY AREA IS DARK#ENEMIES CAN HIT EACH OTHER"
	crown_used[19] = 0
	crown_tips[19] = "friendly fire"

	crownmax = 19



}
