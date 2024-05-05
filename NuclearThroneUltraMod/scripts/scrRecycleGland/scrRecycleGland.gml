///scrRecycleGland();
// /@description
///@param
function scrRecycleGland(ammoIncrease, radIncrease = 0){
	//RECYCLE GLAND
	if instance_exists(Player) {
		if Player.skill_got[16] {
			if random(100) < 65 + Player.betterrecyclegland
			{
				Player.ammo[1] += ammoIncrease
				Player.rad += radIncrease;
				instance_create(x,y,RecycleGland);
				if !Player.ultra_got[26]
					Player.ammo[1] = min(Player.ammo[1],Player.typ_amax[1]);
			}
			scrSplashDamage(clamp(ceil(dmg*0.5),1,6),min(24,18 + dmg));
		}
	}
}