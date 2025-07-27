/// @description Draw
draw_sprite_ext(sprRainbowWazerStart,-1,x,y,1,image_yscale,image_angle,c_white,1);
draw_sprite_ext(sprRainbowWazer,-1,x,y,image_xscale,image_yscale,image_angle,c_white,1);
draw_sprite_ext(sprRainbowWazerEnd,1,
x+lengthdir_x(image_xscale,image_angle),
y+lengthdir_y(image_xscale,image_angle),-1,image_yscale,image_angle,c_white,1);