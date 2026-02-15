///xxx();
// /@description
///@param
function scrHasAnySecretUltraUnlockRequirementsLeft(){
	with UberCont
	{
		var dir = 0;
		repeat(maxsecretultraOne)
		{
			if (ctot_secret_ultra_taken[dir] < 1 &&
			secret_ultra_requirement_unlocked[dir] < 1)
				return true;
			dir++;
		}
	}
	return false;
}