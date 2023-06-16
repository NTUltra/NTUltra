///scrPopUpStayInScreenY();
// /@description
///@param
function scrPopUpStayInScreenY(wh){
	var yy = popUpY + wh;
	if yy + wh > camera_get_view_height(view_camera[0])
		yy = popUpY - wh;
	return yy;
}