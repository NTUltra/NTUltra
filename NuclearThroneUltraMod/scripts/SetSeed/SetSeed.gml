///SetSeed();
// /@description
///@param
function SetSeed(){
	with UberCont
	{
		if (useSeed)
		{
			random_set_seed(seed+loops)
		}
	}
}