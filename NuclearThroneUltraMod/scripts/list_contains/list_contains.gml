///list_contains();
// /@description
///@param list
///@param containtId
function list_contains(list, containId){
	var al = ds_list_size(list);
	for (var i = 0; i < al; i++) {
	    if (list[| i] == containId)
		{
			return true;
		}
	}
	return false;
}