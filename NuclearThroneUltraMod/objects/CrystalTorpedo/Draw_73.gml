/// @description Draw
if isFullyImmune
{
	shader_set(shdDrawAqua);
	draw_sprite_ext(sprite_index,-1,x + 1,y + 1,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x,y + 1,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x + 1,y,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x - 1,y + 1,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x - 1,y + 1,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x - 1,y - 1,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x,y - 1,image_xscale,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,-1,x - 1,y,image_xscale,image_yscale,image_angle,c_white,1);
	shader_reset();
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);