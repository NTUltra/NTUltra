x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-24-22*2//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+12


if selected = 1
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)
draw_sprite_part(sprite_index,0,8,4,16,24,x,y-48+Menu.widescreen)


