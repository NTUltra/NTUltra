/// @description PARTY DRAW
draw_set_blend_mode(bm_add);
var l = camera_get_view_x(view_camera[0])-1;
var r = l + camera_get_view_width(view_camera[0])+2;
var t = camera_get_view_y(view_camera[0])-1;
var b = t + camera_get_view_height(view_camera[0])+2;
draw_set_colour(theColour);
draw_set_alpha(alpha);
draw_rectangle(l,t,r,b,false);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);
var al = ds_list_size(sheep);
for (var i = 0; i < al; i++) {
	if sprite_exists(sheep[| i].spr)
		draw_sprite_ext(sheep[| i].spr,
			wave*0.4,
			l+sheep[| i].xx,
			t+sheep[| i].yy,
			sheep[| i].xscl+(sin(wave*0.4)*0.1),
			sheep[| i].yscl+(sin(wave*0.4)*0.1),
			sheep[| i].rot,
			c_white,
			sheep[| i].alpha);
}