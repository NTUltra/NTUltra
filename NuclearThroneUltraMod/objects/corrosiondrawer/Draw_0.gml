/// @description xxx
imageIndex += 0.4;
var i = imageIndex;
draw_set_blend_mode(bm_add);
draw_set_alpha(0.5);
with Corrosion
{
	draw_sprite(sprite_index,i,x,y);
}
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);