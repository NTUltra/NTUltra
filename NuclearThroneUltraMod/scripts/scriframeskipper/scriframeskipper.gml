///scrIframeSkipper();
// /@description run in the enemy that is hit
///@param frames
function scrIframeSkipper(skipFrame){
	if UberCont.normalGameSpeed == 60
		skipFrame *= 0.5;
	image_index += skipFrame;//iframe skipper
	if image_index > 2
	{
		image_index -= 2;
		sprite_index = spr_idle
	}
}