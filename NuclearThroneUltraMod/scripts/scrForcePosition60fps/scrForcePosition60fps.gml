///scrForcePosition60fps();
// /@description Forces
///@param
function scrForcePosition60fps() {
	xprevious = x;
	yprevious = y;
	with FPSHACK {
		if is_undefined(ds_list_find_value(forcePositions,other.id))
			ds_list_add(forcePositions, other.id);	
	}
}