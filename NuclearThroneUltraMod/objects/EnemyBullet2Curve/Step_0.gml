/// @description alter curve
if UberCont.normalGameSpeed == 60
{
	motion_add(direction+(90*image_yscale),curveSpeed*0.5);
	if curveSpeed > 0
		curveSpeed -= 0.0005;
}
else
{
	motion_add(direction+(90*image_yscale),curveSpeed);
	if curveSpeed > 0
		curveSpeed -= 0.001;
}
image_angle = direction;