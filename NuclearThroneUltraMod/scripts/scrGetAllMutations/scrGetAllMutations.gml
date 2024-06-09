///scrGetAllMutations();
// /@description
///@param
function scrGetAllMutations() {
	var returnString = "";
	with Player {
		var i = 0;
		repeat(maxskill + 2) {
			if skill_got[i] {
				returnString += "-" + string(i);	
			}
			i++;
		}
	}
	return returnString;
}