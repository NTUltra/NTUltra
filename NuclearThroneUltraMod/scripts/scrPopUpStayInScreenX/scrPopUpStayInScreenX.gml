///scrPopUpStayInScreenX();
// /@description
///@param
function scrPopUpStayInScreenX(ww){
	var xx = popUpX;
	if xx + ww >= camera_get_view_width(view_camera[0])
		xx -= xx + ww - camera_get_view_width(view_camera[0]) + 2;
	return xx;
}