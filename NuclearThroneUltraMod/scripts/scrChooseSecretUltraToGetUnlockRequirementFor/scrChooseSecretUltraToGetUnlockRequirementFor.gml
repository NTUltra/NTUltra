///scrChooseSecretUltraToGetUnlockRequirementFor();
// /@description
///@param
function scrChooseSecretUltraToGetUnlockRequirementFor() {
	var listOfPossibleSecrets = [];
	var i = 0;
	with UberCont
	{
		var dir = 0;
		repeat(maxsecretultra + 1)
		{
			if (ctot_secret_ultra_taken[dir] < 1 &&
			secret_ultra_requirement_unlocked[dir] < 1)
			{
				listOfPossibleSecrets[i] = dir;
				i++;
			}
			dir++;
		}
	}
	return listOfPossibleSecrets[irandom(array_length(listOfPossibleSecrets)-1)];
}