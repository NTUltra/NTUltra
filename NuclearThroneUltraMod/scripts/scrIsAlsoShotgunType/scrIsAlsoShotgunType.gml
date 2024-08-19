///scrIsAlsoShotgun();
// /@description
///@param
function scrIsAlsoShotgunType(wepIndex){
	return wepIndex == 258 || wepIndex == 680 || scrIsAllAmmoTypes(wepIndex)
}