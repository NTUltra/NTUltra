///scrDropHeavyHeart();
// /@description
///@param
function scrDropHeavyHeart(newDrop = 0){
	var daGun = instance_create(x,y,HeavyHeartTurret)
	with daGun {
		owner = other.id;
		owner.sprite_index = mskPickupThroughWall;
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		isPermanent = other.isPermanent;
		visitedPortals = other.visitedPortals;
		hasBeenEaten = other.hasBeenEaten;
		curse = other.curse;
		wep = other.wep
		spr_idle=wep_sprt[wep];
		spr_hurt = spr_idle;
		if wep_type[wep]=0
		{//melee
			wepammo=2+irandom(2)
			wepcost=1;
		}
		else
		{
			wepcost=max(0.1,wep_cost[wep])
			wepammo=round(max(typ_ammo[wep_type[wep]]*1,wepcost));
		}

		reload=wep_load[wep];

		scrWeaponHold();
		alarm[0] = newDrop + clamp(reload*0.5,5,60);
	}
	return daGun;
}