/// @description Draw on top if hovering
var yyy = y + 48 - Menu.widescreen;
if instance_exists(UnlockingSecondRow)
{
	var t = UnlockingSecondRow.lerpTime * 0.5;
	draw_set_alpha(clamp(t,0,1));
	if num == 0 || num == 27
	{
		var center = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30;
		draw_rectangle(camera_get_view_x(view_camera[0]),min(center,yyy),x,max(center,yyy+24),false);	
	}
	if num == 15 || num == 26 || num == 28
	{
		//Top row
		var center = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30;
		draw_rectangle(x + 16,min(center,yyy),camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),max(center,yyy+24),false);	
	}
	draw_set_alpha(1);
}
if unlocking
	exit;
if Menu.mouseover == image_index
{
	event_perform(ev_draw,0);
	var o = 0;
	if row == 1
		o = 24;
	var tx = x + 12;
	var ty = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 60 + o;
	if (!instance_exists(LoadoutSelect) /*|| LoadoutSelect.wepmenuopen*/)
		return;
	hoverTime += 0.3;
	if hoverTime > 1
		hoverTime = 1;
	ty = lerp (y + 2,ty,hoverTime);
	//extra = 0
	draw_set_valign(fa_bottom)
	draw_set_halign(fa_left);
	draw_set_color(c_white)
	var n = "";
	if UberCont.race_have[image_index] = 1
		n = string(race_name[image_index]);
	else
		n = string(race_lock[image_index]);
			
	var mx = lerp(mouse_x,tx,0.5);
	var tx = lerp(mouse_x,tx,0.75);
	var xx = clamp(tx - string_width(n) * 0.5,camera_get_view_x(view_camera[0]) + 3,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - string_width(n) - 3);
	var yy = ty;//camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 60;
	var col = make_colour_rgb(59,46,66);
	/*if row == 1
		draw_sprite_ext(sprLoadoutHoverArrow,0,mx,yy - 8,1,-1,0,c_white,1);
	else*/
	//if row == 1
	//	draw_sprite(sprLoadoutHoverArrowLong,0,mx,yy);
	//else
	draw_sprite(sprLoadoutHoverArrow,0,mx,yy);
	draw_rectangle_colour_curved(
	xx - 2,
	yy - string_height(n) - 2,
	xx + string_width(n) + 1,
	yy + 1,
	col);
	draw_text_colour(xx + 1,yy,n,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx + 1,yy + 1,n,c_black,c_black,c_black,c_black,1);
	draw_text(xx,yy,n);
}
else
	hoverTime = 0;