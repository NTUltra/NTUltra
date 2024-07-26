x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-24-22*5//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+12

var xx = x - 22;
if hover
{
	if dailyDone && !isRace{
		var name = "VIEW LEADERBOARD";
		var yy = y+36;
		draw_set_colour(c_black);
		draw_text(xx+1,yy + 1,name);
		draw_text(xx,yy + 1,name);
		draw_set_colour(c_white);
		draw_text(xx,yy,name);
	}
	else
	{
		var name = dailyName;
		if instance_exists(UpdateChecker)
		{
			name += string_hash_to_newline(UpdateChecker.dailyGM);
		}
		var yy = y+28;
		draw_rectangle_colour(xx - 1,yy,xx+string_width(name),yy+string_height(name),c_black,c_black,c_black,c_black,false);
		draw_set_valign(fa_top);
		draw_set_colour(c_black);
		draw_text(xx+1,yy + 1,name);
		draw_text(xx,yy + 1,name);
		draw_set_colour(c_white);
		draw_text(xx,yy,name);
		draw_set_valign(fa_bottom);
		yy = y+36;
	}
	var timeLeft = scrDayTimeLeft();
	draw_set_halign(fa_right);
	draw_text_colour(xx-4, yy, timeLeft,c_gray,c_gray,c_gray,c_gray,1);
	draw_set_halign(fa_left);
	if image_index == 1 || image_index == 3
		image_index = 3;
	else
		image_index = 2;
}
else
{
	if image_index == 3 || image_index == 1
		image_index = 1;
	else
		image_index = 0;
}
if selected = 1
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)
draw_sprite_part(sprite_index,image_index,8,4,16,24,x,y-48+Menu.widescreen)

