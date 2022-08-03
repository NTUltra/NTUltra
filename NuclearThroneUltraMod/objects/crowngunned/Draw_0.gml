/// @description I have a gun

if gunangle <= 180
draw_sprite_ext(sprGoldLaserGun,0,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,wepright,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprGoldLaserGun,0,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,wepright,gunangle,c_white,1)




