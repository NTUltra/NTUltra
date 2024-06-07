draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,1)
draw_sprite_ext(sprStart,img,xstart,ystart,1,1,image_angle,c_white,1)
draw_sprite_ext(sprEnd,img,x + lengthdir_x(image_xscale * 0.5,image_angle),y + lengthdir_y(image_xscale * 0.5,image_angle),1,1,image_angle,c_white,1)