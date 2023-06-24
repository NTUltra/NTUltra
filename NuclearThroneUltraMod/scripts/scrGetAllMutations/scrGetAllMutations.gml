///scrGetAllMutations();
// /@description
///@param
function scrGetAllMutations() {
	var returnString = "";
	with Player {
		var i = 0;
		repeat(maxskill + 1) {
			if skill_got[i] {
				returnString += "-" + string(i);	
			}
			i++;
		}
	}
	debug("POSTING MUTATIONS: ", returnString);
	return returnString;
}