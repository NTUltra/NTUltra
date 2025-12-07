///scrSpendingAmmo();
// /@description scrSpendingAmmo
///@param
function scrSpendingAmmo(weaponType, ammoAmount) {
	with Player
	{
		if skill_got[47]
		{
			hollowBonesCounter += ammoAmount/typ_amax_base[weaponType];
			while (hollowBonesCounter >= hollowBonesTrigger)
			{
				hollowBonesCounter -= hollowBonesTrigger;
				instance_create(x,y,WantHollowImplosion);
				var ang = random(360);
				repeat(6)
				{
					with instance_create_depth(x + lengthdir_x(8,ang),y + lengthdir_y(8,ang),depth - 1, PlutoFX)
					{
						sprite_index = sprVoidBulletTrail;
						image_index = irandom(image_number - 1);
						motion_add(ang + random_range(20,-20),3 + random(2));
					}
					ang += 60;
				}
				
			}
		}
	}
}