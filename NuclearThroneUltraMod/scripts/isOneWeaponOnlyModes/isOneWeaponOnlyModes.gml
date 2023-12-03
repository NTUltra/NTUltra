///isOneWeaponOnlyModes();
// /@description
///@param
function isOneWeaponOnlyModes(){
	with UberCont
	{
		return (scrIsGamemode(1)||scrIsGamemode(13)||scrIsGamemode(14));
	}
	return false;
}