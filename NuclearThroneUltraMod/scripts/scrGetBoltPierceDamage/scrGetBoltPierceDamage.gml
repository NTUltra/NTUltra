/// @description scrGetBoltPierceDamage
function scrGetBoltPierceDamage(actualDmg){
	if team == 2 && instance_exists(Player) && Player.skill_got[21]
	{
		if Player.ultra_got[97] && !Player.altUltra
			return actualDmg*0.93;
		else
			return actualDmg*0.75
	}
	return actualDmg*0.5
}