/// @description
function scrExcessResourceDamage(dmgTaken){
	var newDmg = dmgTaken;
	with Player
	{
		debug(newDmg);
		newDmg += (dmgTaken * excessResourceDamageBoost);
		debug(newDmg);
	}
	
	return newDmg;
}