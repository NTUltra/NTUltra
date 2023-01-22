/*draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-29-32,
__view_get( e__VW.YView, 0 )-39+Menu.widescreen,
"[29.121]",c_gray,c_gray,c_gray,c_gray,1);*/
draw_set_halign(fa_right);
draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4,
__view_get( e__VW.YView, 0 )-39+Menu.widescreen,
"[BETA 30.06]",c_gray,c_gray,c_gray,c_gray,1);
draw_set_halign(fa_left);
/*
x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-24-22*4//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+12


if selected = 1
draw_sprite(sprSelected,-1,x,y-48+Menu.widescreen)
draw_sprite_part(sprite_index,-1,8,4,16,24,x,y-48+Menu.widescreen)


*/