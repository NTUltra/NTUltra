///scrEnableBigScreen();
// /@description
///@param
function scrEnableBigScreen(){
	camera_set_view_size(view_camera[0],427,240);
	view_set_wport(0,427);
	view_set_hport(0,240);
	surface_resize(application_surface,427,240);
}