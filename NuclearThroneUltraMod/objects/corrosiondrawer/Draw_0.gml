/// @description Draw!
if UberCont.normalGameSpeed == 60
	imageIndex += 0.2;
else
	imageIndex += 0.4;
var i = imageIndex;
draw_set_blend_mode(bm_add);
with Corrosion
{
	draw_sprite_ext(sprite_index,i,x,y,1,1,0,c_white,alpha);
}
draw_set_blend_mode(bm_normal);
if imageIndex > 4
	imageIndex = 0;