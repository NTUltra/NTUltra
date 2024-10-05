///scrIsAlsoExplosiveType();
// /@description
///@param
function scrIsAlsoExplosiveType(wepIndex){
	return wepIndex == 165 || wepIndex == 279 || wepIndex == 279 || wepIndex == 699 || wepIndex == 712 || wepIndex == 713 || wepIndex == 250 || wepIndex == 858 ||//Bolt overlap
	wepIndex == 613 || wepIndex == 748 || wepIndex == 781 || wepIndex == 782 || wepIndex == 323 || wepIndex == 352//Energy overlap
	|| scrIsAllAmmoTypes(wepIndex)
}