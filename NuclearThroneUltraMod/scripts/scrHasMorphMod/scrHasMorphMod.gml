///scrHasMorphMod();
// /@description
///@param
function scrHasMorphMod(){
	with Player {
		return wepmod1 == 16 || wepmod2 == 16 || wepmod3 == 16 || wepmod4 == 16 ||
		bwepmod1 == 16 || bwepmod2 == 16 || bwepmod3 == 16 || bwepmod4 == 16 ||
		cwepmod1 == 16 || cwepmod2 == 16 || cwepmod3 == 16 || cwepmod4 == 16
	}
	return false;
}