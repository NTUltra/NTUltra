///scrIsAlsoShotgun();
// /@description
///@param
function scrIsAlsoShotgun(wepIndex){
	return wepIndex == 258 || wepIndex == 680 || scrIsAllAmmoTypes(wepIndex)
}