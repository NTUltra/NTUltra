/// @description
if alarm[0] > 0
	draw_sprite_ext(sprGammaGutsBlast,image_index,x,y,min(1,image_xscale),min(1,image_yscale),image_angle,c_white,image_alpha - 0.15 - forceAlphaReduc);
	
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha - forceAlphaReduc);
