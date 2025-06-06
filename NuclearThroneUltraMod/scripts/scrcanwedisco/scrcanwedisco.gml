///scrCanWeDisco();
// /@description
///@param
function scrCanWeDisco(){
	with Player
	{
		if //Morph weapon mod
		scrHasMorphMod() ||
		//Any morph weapon
		scrHasMorphWeapon()
			return true;
	}
	return false;
}