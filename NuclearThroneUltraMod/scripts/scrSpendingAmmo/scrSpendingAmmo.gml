///scrSpendingAmmo();
// /@description
///@param
function scrSpendingAmmo(weaponType, ammoAmount) {
	with Player
	{
		if skill_got[47] || true
		{
			hollowBonesCounter += ammoAmount/typ_amax_base[weaponType];
			while (hollowBonesCounter >= hollowBonesTrigger)
			{
				hollowBonesCounter -= hollowBonesTrigger;
				instance_create(x,y,WantHollowImplosion);
				var ang = random(360);
				repeat(6)
				{
					with instance_create(x,y,PlutoFX)
					{
						sprite_index = sprVoidBulletTrail;
						image_index = irandom(image_number - 1);
						motion_add(ang + random_range(20,-20),1 + random(2));
					}
					ang += 60;
				}
				
			}
		}
	}
}