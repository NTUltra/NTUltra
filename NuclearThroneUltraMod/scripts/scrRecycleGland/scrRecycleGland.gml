///scrRecycleGland();
// /@description
///@param
function scrRecycleGland(ammoIncrease){
	//RECYCLE GLAND
	if instance_exists(Player) {
		if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland
		{
			Player.ammo[1] += ammoIncrease
			instance_create(x,y,RecycleGland);
			Player.ammo[1] = min(Player.ammo[1],Player.typ_amax[1]);
		}
	}
}