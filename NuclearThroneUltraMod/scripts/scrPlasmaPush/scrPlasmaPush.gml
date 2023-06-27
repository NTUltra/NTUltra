///scrPlasmaPush();
// /@description
///@param
function scrPlasmaPush(){
	x += (xprevious - x)*0.8;
	y += (yprevious - y)*0.8;
	image_xscale -= hitShrink;
	image_yscale -= hitShrink;
	BackCont.shake += 2;
	speed -= acc * 2;
	Sleep(2);
}