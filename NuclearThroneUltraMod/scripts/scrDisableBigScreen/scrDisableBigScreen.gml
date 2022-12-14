///scrDisableBigScreen();
// /@description
///@param
function scrDisableBigScreen(){
	camera_set_view_size(view_camera[0],320,240);
	view_set_wport(0,320);
	view_set_hport(0,240);
	surface_resize(application_surface,320,240);
}