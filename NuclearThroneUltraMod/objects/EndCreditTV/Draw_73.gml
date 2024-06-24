/// @description Draw on top
draw_sprite(sprite_index,image_index,x,y);

if sprite_index == sprBigTVOn
{
	var right = 1;
	if cwep != 0
		draw_sprite_ext(cwep,0,x-right,y-2,image_xscale,1,90+(right*+30),c_white,1)
	if bwep != 0
		draw_sprite_ext(bwep,0,x-right,y-2,image_xscale,1,90+(right*15),c_white,1)
	if awep != 0
		draw_sprite_ext(awep,0,x-right,y-2,image_xscale,1,90+(right*-15),c_white,1)
	draw_sprite_ext(sit,0,x,y,right,1,0,c_white,1);
	draw_sprite_ext(sprBigTVLines,0,x,y,1,1,0,c_white,0.5 + random(0.2));
}