if sprite_index == spr_hurt && image_index < 1 && UberCont.canShader
{
	shader_set(shdDrawWhite);
	draw_sprite_ext(forceAnimation,forceImageIndex,x,y,right,image_yscale,image_angle,c_white,1);
	shader_reset();
}
else
{
	draw_sprite_ext(forceAnimation,forceImageIndex,x,y,right,image_yscale,image_angle,c_white,1)	
}