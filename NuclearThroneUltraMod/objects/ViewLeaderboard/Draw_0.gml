x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-24-22*7//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+12

var xx = x - 22;
if hover
{
	image_index = 1;
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
	image_index = 0;	
}

if selected = 1
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)
draw_sprite_part(sprite_index,image_index,8,4,16,24,x,y-48+Menu.widescreen)

