///xxx();
// /@description
///@param
function scrIsWeaponOnGround(wantWep){
	with WepPickup
	{
		if id != other.id && wep == wantWep
			return true;
	}
	with WeaponChest
	{
		if id != other.id && array_contains(wep,wantWep)
			return true;
	}
	with BigWeaponChest
	{
		if id != other.id 
		{
			if wep1 == wantWep || wep2 == wantWep || wep3 == wantWep || wep4 == wantWep
				return true;
		}
	}
	with BigCursedWeaponChest
	{
		if id != other.id 
		{
			if wep1 == wantWep || wep2 == wantWep || wep3 == wantWep || wep4 == wantWep
				return true;
		}
	}
	with UltraWeaponChest
	{
		if id != other.id && array_contains(weps,wantWep)
			return true;
	}
	with WeaponSpecificChest
	{
		if id != other.id && array_contains(wep,wantWep)
			return true;
	}
	with UltraChest
	{
		if id != other.id && array_contains(weps,wantWep)
			return true;
	}
	with ThrowWep
	{
		if wep == wantWep
			return true;
	}
}