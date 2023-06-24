///scrPlasmaPush();
// /@description
///@param
function scrPlasmaPush(){
	x += (xprevious - x)*0.8;
	y += (yprevious - y)*0.8;
	
	if UberCont.normalGameSpeed == 60
	{
		image_xscale-=0.02;
		image_yscale-=0.02;
	}
	else
	{
		image_xscale-=0.04;
		image_yscale-=0.04;
	}
}