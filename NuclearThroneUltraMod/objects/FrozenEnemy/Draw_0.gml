/// @description Draw in blue
with owner {
	draw_sprite_ext(sprite_index,image_index,x,y,min(image_xscale,right),image_yscale,image_angle,c_aqua,1);
}
if spriteSize < 72 && alarm[1] < 1 && !ownerIsDead
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.5);
}