/// @description alter curve
if UberCont.normalGameSpeed == 60
{
	motion_add(direction+(90*image_yscale),0.045);
}
else
{
	motion_add(direction+(90*image_yscale),0.09);
}
image_angle = direction;