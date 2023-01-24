///SetSeedWeapon();
// /@description
///@param
function SetSeedWeapon(){
	with UberCont
	{
		if (useSeed)
		{
			debug("chestRan ", chestRan);
			random_set_seed(seed+loops+chestRan)
			chestRan ++;
		}
	}
}