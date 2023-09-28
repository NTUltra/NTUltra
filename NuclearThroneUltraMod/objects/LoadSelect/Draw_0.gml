x = __view_get( e__VW.XView, 0 )+8//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+28

if hover
{
	var name = "LOAD SAVED RUN";
	var yy = y+36;
	draw_set_colour(c_black);
	draw_text(x+1,yy + 1,name);
	draw_text(x,yy + 1,name);
	draw_set_colour(c_white);
	draw_text(x,yy,name);
}
if selected = 1
{
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)//48
}
draw_sprite_part(sprite_index,image_index,8,4,16,24,x,y-48+Menu.widescreen)
