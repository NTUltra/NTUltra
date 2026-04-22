/// @description Draw
draw_sprite_ext(sprExplosionWazerStart,-1,x,y,1,image_yscale,image_angle,c_white,1);
if alarm[6] > 0
	draw_sprite_ext(sprWazerBoosted,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
else
	draw_sprite_ext(sprExplosionWazer,01,x,y,image_xscale,image_yscale,image_angle,c_white,1);
draw_sprite_ext(sprExplosionWazerEnd,-1,
x+lengthdir_x(image_xscale,image_angle),
y+lengthdir_y(image_xscale,image_angle),1,image_yscale,image_angle,c_white,1);