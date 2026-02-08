///scrIsAlsoBoltType();
// /@description
///@param
function scrIsAlsoBoltType(wepIndex){
	return wepIndex == 165 || wepIndex == 279 || wepIndex == 279 || wepIndex == 699 || wepIndex == 712 || wepIndex == 713 || wepIndex == 250 || wepIndex == 858 ||//Explosive overlap
	wepIndex == 680 || //ALSO SHOTGUN
	wepIndex == 257 || wepIndex == 545 || wepIndex == 595 || wepIndex == 694 || wepIndex == 857//Energy overlap
	 || wepIndex == 937
	// || wepIndex == 363 || wepIndex == 698//BULLET AMMO
	|| scrIsAllAmmoTypes(wepIndex)
}