if gunangle <= 180
draw_sprite_ext(sprInvertedThiefGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,alpha)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,alpha)
if gunangle > 180
draw_sprite_ext(sprInvertedThiefGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,alpha)

