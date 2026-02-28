///scrRecycleGland();
// /@description
///@param
function scrRecycleGland(ammoIncrease, radIncrease = 0, canSplashDamage = true, ammoType = 1, splashColour = c_yellow){
	//RECYCLE GLAND
	if instance_exists(Player) {
		if Player.skill_got[16] {
			if random(100) < 65 * Player.luck + Player.betterrecyclegland
			{
				Player.ammo[ammoType] += ammoIncrease
				Player.rad += radIncrease;
				with instance_create(x,y,RecycleGland) {
					if ammoType == 5
						sprite_index = sprRecycleGlandEnergy;
					else if ammoType == 4
						sprite_index = sprRecycleGlandIcicle;
					else if ammoType == 3
						sprite_index = sprRecycleGlandBolt;
				}
				if !Player.ultra_got[26]
				{
					var excessAmmo = Player.ammo[ammoType] - Player.typ_amax[ammoType];
					if excessAmmo > 0
						scrExcessResource(ammoType + 1,excessAmmo,0.75);
					Player.ammo[ammoType] = min(Player.ammo[ammoType],Player.typ_amax[ammoType]);
				}
			}
			if canSplashDamage
				scrSplashDamage(clamp(ceil(dmg*0.5),1,8),min(28,18 + dmg),true,2.5,splashColour);
		}
	}
}