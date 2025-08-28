///scrDrawWhiteOutline();
// /@description
///@param
function scrDrawWhiteOutline(spr,imageIndex,xx,yy){
	if UberCont.canShader
		shader_set(shdDrawWhite);
	draw_sprite_ext(spr,imageIndex,xx+1,yy+1,1,1,0,c_white,1);
	draw_sprite_ext(spr,imageIndex,xx+1,yy-1,1,1,0,c_white,1);
	draw_sprite_ext(spr,imageIndex,xx-1,yy-1,1,1,0,c_white,1);
	draw_sprite_ext(spr,imageIndex,xx-1,yy+1,1,1,0,c_white,1);
	shader_reset();
	draw_sprite_ext(spr,imageIndex,xx,yy,1,1,0,c_white,1);
}