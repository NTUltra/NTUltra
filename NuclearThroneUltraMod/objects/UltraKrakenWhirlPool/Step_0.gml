/// @description Rotate
if UberCont.normalGameSpeed == 60
{
	image_angle += rotation * 0.25;
	middleAngle += rotation;
	outerAngle += rotation * 0.375;
}
else
{
	image_angle += rotation * 0.5;
	middleAngle += middleAngle;
	outerAngle += rotation * 0.75;
}