/// @description Legs
var am = 4;
var ys = 20;
var yy = y - (ys*am) + 20;
repeat (am)
{
	draw_sprite_ext(spr_leg,walk,x+legXoffset,yy,image_xscale,1,0,c_white,1);
	yy += ys;
}
draw_sprite_ext(sprite_index,0,x,y,spriteXscale,1,0,c_white,1);
//draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.6);