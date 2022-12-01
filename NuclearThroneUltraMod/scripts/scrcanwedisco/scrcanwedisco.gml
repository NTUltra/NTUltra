///scrCanWeDisco();
// /@description
///@param
function scrCanWeDisco(){
	with Player
	{
		if //Morph weapon mod
		scrHasMorphMod() ||
		//Any morph weapon
		scrHasMorphWeapon() ||
		//Disco gun
		wep == 396 || bwep == 396 || cwep == 396
			return true;
	}
	return false;
}