///scrRecycleGlandShotgun();
// /@description
///@param
function scrRecycleGlandShotgun(shotgunAmmo, bulletAmmo, radAmmo = 0){
	//RECYCLE GLAND
	if instance_exists(Player) {
		if Player.skill_got[16] {
			if random(100) < 65 + Player.betterrecyclegland
			{
				Player.ammo[1] += bulletAmmo;
				Player.ammo[2] += shotgunAmmo;
				Player.rad += radAmmo;
				instance_create(x,y,RecycleGland);
				if !Player.ultra_got[26]
				{
					Player.ammo[1] = min(Player.ammo[1],Player.typ_amax[1]);
					Player.ammo[2] = min(Player.ammo[2],Player.typ_amax[2]);
				}
			}
		}
	}
}