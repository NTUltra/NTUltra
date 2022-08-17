///scrDropHeavyHeart();
// /@description
///@param
function scrDropHeavyHeart(){
	var daGun = instance_create(x,y,HeavyHeartTurret)
	with daGun {
		owner = other.id;
		owner.sprite_index = mskPickupThroughWall;
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		curse = other.curse;
		wep = other.wep
		spr_idle=wep_sprt[wep];
		spr_hurt = spr_idle;
		if wep_type[wep]=0
		{//melee
			wepammo=4+irandom(3)
			wepcost=1;
		}
		else
		{
			wepcost=max(0.1,wep_cost[wep])
			wepammo=round(max(typ_ammo[wep_type[wep]]*1.4,wepcost));
		}

		reload=wep_load[wep];

		scrWeaponHold();
		alarm[0]=clamp(reload*0.5,5,60);
	}
	return daGun;
}