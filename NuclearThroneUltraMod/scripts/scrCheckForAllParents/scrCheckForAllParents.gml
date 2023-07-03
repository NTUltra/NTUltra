///scrCheckForAllParents();
// /@description
///@param Object id/index to check get the parent from
///@param Object to check if it is the parent
function scrCheckForAllParents(ind, want){
	var toCheck = ind;
	while (object_get_parent(toCheck) != -100)
	{
		var next = object_get_parent(toCheck)
		if next == want
			return true;
		toCheck = next;
	}
	return false;
}