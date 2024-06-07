///scrPlasmaPush();
// /@description
///@param
function scrPlasmaPush(){
	x -= hspeed// * 0.9;
	y -= vspeed// * 0.9;
	image_xscale -= hitShrink;
	image_yscale -= hitShrink;
	BackCont.shake += 2;
	speed *= 0.8;
	speed -= acc * 2;
	scrForcePosition60fps();
	Sleep(2);
}