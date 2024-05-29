/// @description Draw it on top
draw_set_alpha(0.5);
gpu_set_blendmode(bm_max);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha + 0.2)
draw_sprite_ext(sprEdge,image_index,x,y,-1,image_yscale,image_angle,c_white,alpha + 0.2)
draw_sprite_ext(sprEdge,image_index,endX,endY,1,image_yscale,image_angle,c_white,alpha + 0.2)
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);