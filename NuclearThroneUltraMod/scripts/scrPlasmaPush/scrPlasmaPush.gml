///scrPlasmaPush();
// /@description
///@param
function scrPlasmaPush(){
	x += (xprevious - x)*0.8;
	y += (yprevious - y)*0.8;
	image_xscale-=0.04;
	image_yscale-=0.04;
}