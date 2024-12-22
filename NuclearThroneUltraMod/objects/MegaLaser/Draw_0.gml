draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,1)
var ys = max(image_yscale - 1, 1);
draw_sprite_ext(sprLaserStart,img,xstart,ystart,ys,ys,image_angle,c_white,1)
draw_sprite_ext(sprLaserEnd,img,x,y,ys,ys,image_angle,c_white,1)

//draw_sprite_ext(sprPlasmaBall,img,xstart,ystart,1,1,image_angle,c_white,1)

