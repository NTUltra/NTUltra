///scrForcePosition60fps();
// /@description Forces
///@param
function scrForcePosition60fps(){
	with FPSHACK {
		ds_list_add(forcePositions, other.id);	
	}
}