draw_set_halign(fa_right);
var oofsetto = 0;//16;
x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4 - oofsetto;
y = __view_get( e__VW.YView, 0 )-39+Menu.widescreen;
if (notUpdated == "*")
{
	var utxt = "["+UberCont.updateVersion+UberCont.subUpdateVersion+"]"
	var col = c_white;
	if (mouse_x > x - 8 && mouse_x < x + 8 && mouse_y > y - 8 && mouse_y < y + 2)
	{
		col = c_lime;
		if mouse_check_button_pressed(mb_left)
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod");	
	}
	draw_text_colour(x,y,
	utxt + notUpdated ,col,col,col,col,1);
}
else
{
	var hover = 0;
	var wx = 92;
	if (mouse_x < x - wx + 1 && mouse_x > x - wx - 14
	&& mouse_y < y + 2 && mouse_y > y - 12)
	{
		hover = 2;
		if mouse_check_button_pressed(mb_left) && selected == 0 && hasNoMenuOpen()
		{
			snd_play_2d(sndClick);
			selected = 1;
			with option2
			instance_destroy();
			with option
			instance_destroy();
		}
	}
	hover += selected;
	draw_sprite(sprite_index,hover,x - wx,y);	
}
var utxt = "["+UberCont.updateVersion+UberCont.subUpdateVersion+"]"
draw_text_colour(x + oofsetto,y,
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
	x - w,
	max(__view_get( e__VW.YView, 0 ),y + 40));
	if (mouse_check_button_pressed(mb_left) &&
	mouse_x > x - w && mouse_x < x &&
	mouse_y > y + 40 && mouse_y < y + 40 + h)
	{
		alarm[1] = 0;
		alarm[2] = 0;
		newUpdateLerpTime = 0;
	}
}