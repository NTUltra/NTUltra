/// @description Outline topdraw
if alarm[3] < 6
{
	var col = make_colour_rgb(252,56,0);
	draw_sprite_ext(sprite_index,1,x-1,y-1,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x+1,y+1,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x,y-1,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x,y+1,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x+1,y,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x-1,y,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x+1,y-1,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite_ext(sprite_index,1,x-1,y+1,image_xscale,image_yscale,image_angle,col,1)
	draw_sprite(sprite_index,image_index,x,y);
}