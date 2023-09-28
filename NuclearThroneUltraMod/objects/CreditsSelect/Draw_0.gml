x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-24//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+12

if UberCont.mouse__x > x and UberCont.mouse__x < x+20 and UberCont.mouse__y > y and UberCont.mouse__y < y+28 and selected = 0 && hasNoMenuOpen()
	image_index = 1;
else
	image_index = 0;
	
if selected = 1
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)
draw_sprite_part(sprite_index,image_index,8,4,16,24,x,y-48+Menu.widescreen)


