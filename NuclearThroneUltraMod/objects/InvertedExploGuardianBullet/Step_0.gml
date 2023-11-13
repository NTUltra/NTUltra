/// @description Offset rotation
if UberCont.normalGameSpeed == 60
{
	motion_add(direction,0.05);
	motion_add(direction+90,offsetDir*0.5);
}
else
{
	motion_add(direction,0.1);
	motion_add(direction+90,offsetDir);
}
image_angle = direction;
