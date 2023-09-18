///scrEnableBigScreen();
// /@description
///@param
function scrEnableBigScreen(){
	camera_set_view_size(view_camera[0],427,240);
	var wp = 427 * UberCont.opt_resolution_scale;
	var hp = 240 * UberCont.opt_resolution_scale;
	view_set_wport(0,wp);
	view_set_hport(0,hp);
	surface_resize(application_surface,wp,hp);
}