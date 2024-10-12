/// @description Draw a little menu
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fntM);
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5;
var yy = (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) * 0.5) - 32;
draw_text(xx,yy,"FOUND VANILLA GAME SAVE FILE\nDO YOU WANT TO LOAD\nUNLOCKED MUTANTS AND SKINS\nFROM THAT FILE?");
draw_set_valign(fa_top);
draw_set_font(fntB);
var tx = xx - 64;
var ty = yy + 64;
draw_text(tx,ty,"YES!");
var w = string_width("YES!") * 0.5;
var h = string_height("YES!");
if mouse_x > tx - w && mouse_x < tx + w
&& mouse_y > ty && mouse_y < ty + h
{
	draw_text_colour(tx,ty,"YES!",c_lime,c_lime,c_lime,c_lime,1);
	if mouse_check_button_pressed(mb_left)
	{
		with UberCont
		{
			scrLoadInRetailSave();
		}
		draw_set_font(fntM);
		instance_destroy();
		room_goto(romGame);
	}
}
tx = xx + 64;
w = string_width("NO!") * 0.5;
h = string_height("NO!");
draw_text(tx,ty,"NO!");
if mouse_x > tx - w && mouse_x < tx + w
&& mouse_y > ty && mouse_y < ty + h 
{
	draw_text_colour(tx,ty,"NO!",c_lime,c_lime,c_lime,c_lime,1);
	if mouse_check_button_pressed(mb_left)
	{
		draw_set_font(fntM);
		instance_destroy();
		room_goto(romGame);
	}
}
draw_set_font(fntM);