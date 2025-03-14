///scrCountWeaponsFound();
// /@description
///@param
function scrCountWeaponsFound(){
	var count = 0;
	with UberCont
	{
	var al = array_length(any_wep_found);
	for (var i = 0; i < al; i++)
	{
		if any_wep_found[i]
			count += 1;
	}
	}
	return count;
}