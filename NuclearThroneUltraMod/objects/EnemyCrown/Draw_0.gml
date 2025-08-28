/// @description Draw an outline
if UberCont.canShader
	shader_set(shdDrawRed);
draw_sprite(sprite_index,image_index,x+1,y+1);
draw_sprite(sprite_index,image_index,x+1,y-1);
draw_sprite(sprite_index,image_index,x-1,y-1);
draw_sprite(sprite_index,image_index,x-1,y+1);
shader_reset();
draw_sprite(sprite_index,image_index,x,y);