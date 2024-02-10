///xxx();
// /@description
///@param
function DealDamage(theDamage, isPerFrame = false,boostDamage = true, canMod = true){
	//Add damage only if team is not 2(player)
	my_health -= theDamage;
	if variable_instance_exists(id,"team") && team != 2 && team != 0
	{
		if other.team == 2
		{
			if canMod && variable_instance_exists(id,"wepFire")
				scrModHit(other);
			if (boostDamage)
				scrScarierFace(theDamage,isPerFrame)
		}
	}
}