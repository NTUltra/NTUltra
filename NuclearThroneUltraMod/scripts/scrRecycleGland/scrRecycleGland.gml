///scrRecycleGland();
// /@description
///@param
function scrRecycleGland(ammoIncrease, radIncrease = 0, canSplashDamage = true){
	//RECYCLE GLAND
	if instance_exists(Player) {
		if Player.skill_got[16] {
			if random(100) < 65 * Player.luck + Player.betterrecyclegland
			{
				Player.ammo[1] += ammoIncrease
				Player.rad += radIncrease;
				instance_create(x,y,RecycleGland);
				if !Player.ultra_got[26]
				{
					var excessAmmo = Player.ammo[1] - Player.typ_amax[1];
					if excessAmmo > 0
						scrExcessResource(1,excessAmmo,0.75);
					Player.ammo[1] = min(Player.ammo[1],Player.typ_amax[1]);
				}
			}
			if canSplashDamage
				scrSplashDamage(clamp(ceil(dmg*0.5),1,8),min(28,18 + dmg));
		}
	}
}