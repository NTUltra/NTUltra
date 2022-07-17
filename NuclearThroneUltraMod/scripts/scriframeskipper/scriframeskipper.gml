///scrIframeSkipper();
// /@description run in the enemy that is hit
///@param how many frames to skip
function scrIframeSkipper(skipFrame){
	image_index += skipFrame;//iframe skipper
	if image_index > 2
	{
		image_index -= 2;
		sprite_index = spr_idle
	}
}