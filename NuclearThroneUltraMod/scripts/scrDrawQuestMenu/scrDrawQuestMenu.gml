///xxx();
// /@description
///@param
function scrDrawQuestMenu(race, widescreen = 0) {
	draw_set_colour(c_black);
	var xo = 0;
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		xo = 108;
	var b = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - widescreen - 3;
	var w =  camera_get_view_width(view_camera[0]);
	draw_rectangle(
	camera_get_view_x(view_camera[0]),
	camera_get_view_y(view_camera[0]) + widescreen - 1,
	camera_get_view_x(view_camera[0]) + w,
	b,
	false);
	draw_set_colour(c_white);
	var o = 64;
	w -= o;
	var xxx = camera_get_view_x(view_camera[0]) + o;
	var yyy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5)-18;//-24
	var yyyy = yyy + 24;
	var titleNameSpace = 12;
	var xxxx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5) - 147;
	var am = 5;
	//More than 5 ultras
	//draw_set_halign(fa_center);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(xxxx,yyy-28,"PROGRESSION");
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
}