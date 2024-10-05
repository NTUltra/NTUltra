///scrIsAlsoEnergyType();
// /@description
///@param
function scrIsAlsoEnergyType(wepIndex){
	return wepIndex == 257 || wepIndex == 545 || wepIndex == 595 || wepIndex == 694 || wepIndex == 857 || //Bolt overlap
	wepIndex == 613 || wepIndex == 748 || wepIndex == 781 || wepIndex == 782 || wepIndex == 323 || wepIndex == 352//Explosive overlap
	|| scrIsAllAmmoTypes(wepIndex)
}