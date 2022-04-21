/// @description Draw
if (active)
{
	if sprite_index == spr_hurt
		draw_sprite(spr_back_hurt,image_index,x,y);
	else
		draw_sprite(spr_back,0,x,y);
	draw_sprite(sprite_index,0,x,y);
	//draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.6);
}
else if sprite_index == spr_activate
{
	draw_sprite(spr_activate,imageIndex,x,y);	
}
else
{
	draw_self();
	//draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.6);
}
//draw_text(x,y+200,string(my_health));
