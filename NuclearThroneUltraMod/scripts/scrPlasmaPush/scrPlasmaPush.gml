///scrPlasmaPush();
// /@description
///@param
function scrPlasmaPush(shrink = hitShrink){
	x -= hspeed// * 0.9;
	y -= vspeed// * 0.9;
	//x +=  (other.x - x) * 0.25;
	//y +=  (other.y - y) * 0.25;
	instance_create(x + (other.x - x) * 0.5,y + (other.y - y) * 0.5,Smoke)
	if alarm[6] < 1
	{
		image_xscale -= shrink;
		image_yscale -= shrink;
		BackCont.shake += 1;
		speed *= 0.8;
		speed -= acc * 2;
	}
	scrForcePosition60fps();
}