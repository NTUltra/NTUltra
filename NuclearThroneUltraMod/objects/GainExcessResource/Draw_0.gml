/// @description
if !surface_exists(surface)
	surface = surface_create(96,96);
else
{
	surface_set_target(surface);
	draw_clear_alpha(c_black,0);
	shader_set(shdDrawColour);
	shader_set_uniform_f_array(shaderColour, colour);
		draw_sprite_ext(sprite_index,image_index,surface_get_width(surface) * 0.5,surface_get_height(surface) * 0.5,scale * image_xscale,scale * image_yscale,image_angle,c_white,1);
		shader_reset();
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index,image_index,surface_get_width(surface) * 0.5,surface_get_height(surface) * 0.5,scale * 0.75* image_xscale,scale * 0.75 * image_yscale,image_angle,c_black,1);
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(alpha);
	draw_surface(surface,x - (surface_get_width(surface) * 0.5),y - (surface_get_height(surface) * 0.5));
	draw_set_alpha(1);
}