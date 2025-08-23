/// @description
function scrExcessResourceDamage(dmgTaken){
	var newDmg = dmgTaken;
	with Player
	{
		newDmg += (dmgTaken * excessResourceDamageBoost);
	}
	
	return newDmg;
}