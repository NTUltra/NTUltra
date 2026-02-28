///scrEnableLaserSight();
// /@description
///@param
function scrEnableLaserSight(){
	with Player
	return (wep_type[wep] == 3 || wep == 545 || wep == 595 || wep == 545 || wep == 680 || wep == 257
	|| wep == 279 || wep == 165 || wep == 250 || wep == 694 || wep == 699 || wep == 713 || wep == 719
	|| wep == 937 || wep == 857 || wep == 858 || wep == 937 || wep == 938 || wep == 939)
	&& (!IsShielding || ultra_got[7]) && wep != 712 && wep != 492 && wep != 821 && wep != 895 && wep != 916
}