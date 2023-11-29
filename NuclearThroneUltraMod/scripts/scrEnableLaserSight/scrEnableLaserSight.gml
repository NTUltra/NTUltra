///scrEnableLaserSight();
// /@description
///@param
function scrEnableLaserSight(){
	return (wep_type[wep] == 3 || wep == 545 || wep == 595 || wep == 545 || wep == 680 || wep == 257)
	&& (!IsShielding || ultra_got[7])
}