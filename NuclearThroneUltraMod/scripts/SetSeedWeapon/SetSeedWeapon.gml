///SetSeedWeapon();
// /@description
///@param
function SetSeedWeapon(){
	with UberCont
	{
		if (useSeed)
		{
			random_set_seed(seed+loops+chestRan)
			chestRan ++;
		}
	}
}