///scrIsAlsoShotgun();
// /@description
///@param
function scrIsAlsoShotgun(wepIndex){
	//Returns in case of bullet popper and otehr shotgun like weapons
	return wepIndex == 258 || wepIndex == 680 || scrIsAllAmmoTypes(wepIndex)
}