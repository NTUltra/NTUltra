///xxx();
// /@description
///@param
function scrIsWeaponOnGround(wantWep){
	with WepPickup
	{
		if wep == wantWep
			return true;
	}
	with ThrowWep
	{
		if wep == wantWep
			return true;
	}
}