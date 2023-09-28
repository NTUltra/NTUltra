
draw_set_halign(fa_right);
var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4;
var yy = __view_get( e__VW.YView, 0 )-39+Menu.widescreen;
if (notUpdated == "*")
{
	var utxt = "["+UberCont.updateVersion+UberCont.subUpdateVersion+"]"
	var col = c_white;
	if (mouse_x > xx - 8 && mouse_x < xx + 8 && mouse_y > yy - 8 && mouse_y < yy + 2)
	{
		col = c_lime;
		if mouse_check_button_pressed(mb_left)
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod");	
	}
	draw_text_colour(xx,yy,
	utxt + notUpdated ,col,col,col,col,1);
}
var utxt = "["+UberCont.updateVersion+UberCont.subUpdateVersion+"]"
draw_text_colour(xx,yy,
utxt + string_replace(notUpdated,"*"," ") ,c_gray,c_gray,c_gray,c_gray,1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if newUpdateLerpTime > 0
{
	var h = 24;
	var txt = "THERE IS A NEW UPDATE\nPLEASE DOWNLOAD THE UPDATE\nON ITCH.IO (CLICK * TO GO THERE)";
	var w = string_width(txt);
	if !surface_exists(updateSurface)
	{
		updateSurface = surface_create(w+2,h+2);
	}
	surface_set_target(updateSurface);
		draw_clear(c_black);
		draw_text(2,1,txt);
	surface_reset_target();
	draw_surface_part(updateSurface,
	0,0,
	w+2,lerp(0,h+2,newUpdateLerpTime),
	xx - w,
	max(__view_get( e__VW.YView, 0 ),yy + 40));
	if (mouse_check_button_pressed(mb_left) &&
	mouse_x > xx - w && mouse_x < xx &&
	mouse_y > yy + 40 && mouse_y < yy + 40 + h)
	{
		alarm[1] = 0;
		alarm[2] = 0;
		newUpdateLerpTime = 0;
	}
}