var xx = x + gunX*right;

if gunangle <= 180
draw_sprite_ext(spr_gun,-1,xx+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(spr_gun,-1,xx+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)

