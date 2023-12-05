///scrDrawSquashStretch();
// /@description
///@param
function scrDrawSquashStretch(){
	var s = lerp(-0.33,0.33,clamp((speed-5)*0.1,0,1));//5 is destroy
	imageXscale = 1 + s;
	imageYscale = 1 - s;
	draw_sprite_ext(sprite_index,image_index,x,y,imageXscale,imageYscale,image_angle,c_white,1);
}