/// @description Draw
draw_sprite_ext(sprToxicWazerStart,-1,x,y,1,image_yscale,image_angle,c_white,1);
draw_sprite_ext(sprToxicWazer,01,x,y,image_xscale,image_yscale,image_angle,c_white,1);
draw_sprite_ext(sprToxicWazerEnd,-1,
x+lengthdir_x(image_xscale,image_angle),
y+lengthdir_y(image_xscale,image_angle),1,image_yscale,image_angle,c_white,1);