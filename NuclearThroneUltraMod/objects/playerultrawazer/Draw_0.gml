/// @description Draw
draw_sprite_ext(sprUltraWazerStart,-1,x,y,1,image_yscale,image_angle,c_white,1);
if alarm[6] > 0
	draw_sprite_ext(sprUltraWazerBoosted,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
else
	draw_sprite_ext(sprUltraWazer,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
draw_sprite_ext(sprUltraWazerEnd,-1,
x+lengthdir_x(image_xscale,image_angle),
y+lengthdir_y(image_xscale,image_angle),1,image_yscale,image_angle,c_white,1);