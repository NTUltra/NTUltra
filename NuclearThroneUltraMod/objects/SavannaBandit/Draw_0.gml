if gunangle <= 180
draw_sprite_ext(spr_gun,-1,x+lengthdir_x(-wkick-3,gunangle),y+lengthdir_y(-wkick-3,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(spr_gun,-1,x+lengthdir_x(-wkick-3,gunangle),y-3+lengthdir_y(-wkick-3,gunangle),1,right,gunangle,c_white,1)

