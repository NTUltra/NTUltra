if forceAnimation
{
	if sprite_index == spr_hurt && image_index == 0 && UberCont.canShader
	{
		shader_set(shdDrawWhite);
		draw_sprite_ext(forceAnimationSprite,forceAnimationIndex,x,y,right,1,0,c_white,1)
		shader_reset();
	}
	else
	{
		draw_sprite_ext(forceAnimationSprite,forceAnimationIndex,x,y,right,1,0,c_white,1)
	}
}
else
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
}