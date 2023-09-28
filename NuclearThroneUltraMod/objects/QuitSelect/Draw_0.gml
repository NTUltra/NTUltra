x = __view_get( e__VW.XView, 0 )+8//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+8

if UberCont.mouse__x > x and UberCont.mouse__x < x+18 and UberCont.mouse__y > y+2 and UberCont.mouse__y < y+20
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if selected = 1
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)//48
draw_sprite_part(sprite_index,image_index,8,4,16,24,x,y-48+Menu.widescreen)


