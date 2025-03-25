///xxx();
// /@description
///@param
function DealDamage(theDamage, isPerFrame = false,boostDamage = true, canMod = true){
	//Add damage only if team is not 2(player)
	if my_health > 0
	{
		my_health -= theDamage;
		if variable_instance_exists(other, "team") && team != 2 && team != 0
		{
			if other.team == 2
			{
				if canMod && variable_instance_exists(other, "wepFire")
					scrModHit(other);
				if (boostDamage)
				{
					scrScarierFace(theDamage,isPerFrame)
				}
			}
		}
		if variable_instance_exists(other, "isVenomized") && other.isVenomized == 1
		{
			var projectileRef = other;
			projectileRef.isVenomized += 1;
			if team != 2
			{
				with instance_create(x,y,Venom)
				{
					team = projectileRef.team;
					scrCopyWeaponMod(projectileRef);
					owner = other;
					amount = 2;
					dmg = 2;
					if projectileRef.dmg <= 2
					{
						amount = 1;
						dmg = 0.5;
					}
					else if projectileRef.dmg < 10
					{
						dmg = 1;
						amount = 1;
					}
					else if projectileRef.dmg < 40
					{
						dmg = 1;
					}
					rate = 5;
				}
			}
			else
			{
				scrApplyEnemyVenom(other.team, id);
			}
		}
	}
}