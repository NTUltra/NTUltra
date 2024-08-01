///scrPlasmaPush();
// /@description
///@param
function scrPlasmaStick(){
	x -= hspeed;
	y -= vspeed;
	if UberCont.normalGameSpeed == 60
	{
		image_xscale -= grow * 0.5;
		image_yscale -= grow * 0.5;
		image_xscale -= 0.05;
		image_yscale -= 0.05;
	}
	else
	{
		image_xscale -= grow;
		image_yscale -= grow;
		image_xscale -= 0.1;
		image_yscale -= 0.1;
	}
}