///scrLightningWeaponsArray();
// /@description
///@param
function scrLightningWeaponsArray(loops, meleesOnly = false){
	if loops > 0
	{
		if meleesOnly
			return [124, 321, 125, 486,792,825, 822];
		
		return [57, 58, 59, 101, 124, 257, 321, 337, 344, 345, 523, 694,
		63, 120, 125, 144, 245, 323, 347, 395, 396, 398, 486, 489, 500, 524, 529, 545, 352, 563, 595, 614, 631, 736, 748,
		781,782,792,825, 822, 827];
	}
	if meleesOnly
		return [124, 321,792, 822];
	return [57, 58, 59, 101, 257, 321, 337, 344, 345, 523, 694, 822, 827];
}