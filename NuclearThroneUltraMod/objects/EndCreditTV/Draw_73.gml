/// @description Draw on top
draw_sprite(sprite_index,image_index,x,y);

if sprite_index == sprBigTVOn
{
	var right = 1;
	if wepC != 0
		draw_sprite_ext(wepC,0,x-right,y-2,image_xscale,1,90+(right*+30),c_white,1)
	if wepB != 0
		draw_sprite_ext(wepB,0,x-right,y-2,image_xscale,1,90+(right*15),c_white,1)
	if wepA != 0
		draw_sprite_ext(wepA,0,x-right,y-2,image_xscale,1,90+(right*-15),c_white,1)
	draw_sprite_ext(sit,0,x,y,right,1,0,c_white,1);
	draw_sprite_ext(sprBigTVLines,0,x,y,1,1,0,c_white,0.5 + random(0.05));
}