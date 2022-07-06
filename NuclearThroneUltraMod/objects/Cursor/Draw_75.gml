display_set_gui_maximise(1,1);
var s = window_get_width()/display_get_gui_width();
s = min(s,window_get_height()/display_get_gui_height());
s *= scale;
draw_sprite_ext(sprite_index,image_index,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),
s,
s,
0,c_white,1);


