///xxx();
// /@description
///@param
function scrRaceToPortraitIndex(race, skin){
	//A B C D E F G
	var skinIndex = ((race - 1)*7) + skin;
	return skinIndex;
}