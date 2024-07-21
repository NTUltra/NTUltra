///isOneWeaponOnlyModes();
// /@description
///@param
function isOneWeaponOnlyModes(){
	with UberCont
	{
		return (scrIsGamemode(1)||scrIsGamemode(13)||scrIsGamemode(14)||scrIsGamemode(48)||UberCont.voidChallengeGoing[3]);
	}
	return false;
}