///array_contains_get_index();
// /@description
///@param
function array_contains_get_index(array,containId){
	var al = array_length(array);
	for (var i = 0; i < al; i++) {
	    if (array[i] == containId)
		{
			return i;
		}
	}
	return -1;
}