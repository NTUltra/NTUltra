///scrMorphWeaponsArray();
// /@description
///@param
function scrMorphWeaponsArray(loops, meleesOnly = false) {

	if loops > 0
	{
		if meleesOnly
			return [198,495,135,478];
		
		return [70, 73, 98, 198, 408, 659, 468, 495, 646, 663, 750, 755, 899, 396, 819, 820, 909,910,773];
	}
	if meleesOnly
		return [198,495,135];
	return [70, 73, 98, 198, 408, 495, 646, 663, 750, 755, 899, 396,819, 820, 909];
}