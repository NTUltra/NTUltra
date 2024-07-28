///scrPlasmaPush();
// /@description
///@param
function scrPlasmaStick(){
	if UberCont.normalGameSpeed == 60
		{
			x -= hspeed * 0.4;
			y -= vspeed * 0.4;
			x +=  (other.x - x) * 0.05;
			y +=  (other.y - y) * 0.05;
		}
		else
		{
			x -= hspeed * 0.8;
			y -= vspeed * 0.8;
			x +=  (other.x - x) * 0.1;
			y +=  (other.y - y) * 0.1;
		}
}