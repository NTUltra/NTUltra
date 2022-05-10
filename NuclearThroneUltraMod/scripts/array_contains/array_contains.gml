///array_contains();
// /@description
///@param
///@param
function array_contains(array, containId){
	var al = array_length(array);
	for (var i = 0; i < al; i++) {
	    if (array[i] == containId)
		{
			return true;
		}
	}
	return false;
}