///scrBloodWeaponsArray();
// /@description
///@param
function scrBloodWeaponsArray(loops, meleesOnly = false){
	if loops > 0
	{
		if meleesOnly
			return [109, 548, 549, 599];
		
		return [29, 60, 61, 83,
		84, 109, 132, 142,
		164, 327, 415, 423, 425, 426,
		434, 538, 539, 547, 548,
		549, 599, 609,
		612, 499, 626, 643, 644,
		645 ,658, 717, 718, 413, 274, 304, 313,
		774, 749, 763, 774, 775, 776, 777, 778];
	}
	if meleesOnly
		return [109, 548];
	return [29, 60, 61, 83,
		84, 109, 142,
		164, 415, 425, 426,
		539, 547, 548,
		548, 548,
		612, 626, 643, 644,
		645, 717, 718, 274,
		763];
}