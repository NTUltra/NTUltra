/// @description Curve


// Inherit the parent event
event_inherited();

if UberCont.normalGameSpeed == 60
{
	motion_add(direction+(90*image_yscale),curveSpeed*0.5);
}
else
{
	motion_add(direction+(90*image_yscale),curveSpeed);
}
image_angle = direction;