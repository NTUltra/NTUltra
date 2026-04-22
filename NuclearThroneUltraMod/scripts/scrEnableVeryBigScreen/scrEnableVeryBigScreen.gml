///scrEnableVeryBigScreen();
// /@description
///@param
function scrEnableVeryBigScreen(){
	camera_set_view_size(view_camera[0],613,240);
	UberCont.opt_resolution_scale = clamp(UberCont.opt_resolution_scale,1,8);
	var wp = 613 * UberCont.opt_resolution_scale;
	var hp = 240 * UberCont.opt_resolution_scale;
	view_set_wport(0,wp);
	view_set_hport(0,hp);
	surface_resize(application_surface,wp,hp);
}