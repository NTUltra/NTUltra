/// @description Draw my boi
if cwep != 0
	draw_sprite_ext(cwep,0,x-right,y-2,image_xscale,right,90+(right*+30),c_white,1)
draw_sprite_ext(bwep,0,x-right,y-2,image_xscale,right,90+(right*15),c_white,1)
draw_sprite_ext(awep,0,x-right,y-2,image_xscale,right,90+(right*-15),c_white,1)
draw_sprite_ext(sprite_index,image_index,x,y,right,1,0,c_white,1);

//draw_circle(x,y,8,true);